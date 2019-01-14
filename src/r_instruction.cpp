#include "r_instruction.hpp"

using namespace std;

r_instruction::r_instruction(uint32_t instruction){
    //decodes the instructions into components
    opcode=instruction>>26;
    
    source1=instruction<<6;
    source1=source1>>27;
    
    source2=instruction<<11;
    source2=source2>>27;
    
    dest=instruction<<16;
    dest=dest>>27;
    
    shift=instruction<<21;
    shift=shift>>27;
    
    func=instruction<<26;
    func=func>>26;
}

//deconstructor
r_instruction::~r_instruction(){}

//inc the pc
void r_instruction::pc_inc(uint32_t &pc){
    pc+=4;
}

void r_instruction::SLL(uint32_t* regs){
    //checks inst format
    if(source1!=0){
        //-invalid instr format
        exit(-12);
    } else {
        //shifts the reg and stores it
        regs[dest]=regs[source2]<<shift;
    }
}

void r_instruction::SRL(uint32_t* regs){
    //checks inst format
    if(source1!=0){
        //-invalid instr format
        exit(-12);
    } else {
        //shifts the reg and stores it
        regs[dest]=regs[source2]>>shift;
    }
}

void r_instruction::SRA(uint32_t* regs){
    //checks inst format
    if(source1!=0){
        //-invalid instr format
        exit(-12);
    } else {
        regs[dest]=regs[source2];
        //shifts the reg and adds a msb of 1 for signed numbers on loop
        for(int i=0; i<shift; i++){
            regs[dest]=regs[dest]>>1;
            if((regs[source2]&0x80000000)!=0){
                regs[dest]+=0x80000000;
            }
        }
    }
}

void r_instruction::SLLV(uint32_t* regs){
    //checks inst format
    if(shift!=0){
        //-invalid instr format
        exit(-12);
    } else {
        //shifts the reg and stores it
        regs[dest]=regs[source2]<<(regs[source1]&0x0000001F);
    }
}

void r_instruction::SRLV(uint32_t* regs){
    //checks inst format
    if(shift!=0){
        //-invalid instr format
        exit(-12);
    } else {
        //shifts the reg and stores it
        regs[dest]=regs[source2]>>(regs[source1]&0x0000001F);
    }
}

void r_instruction::SRAV(uint32_t* regs){
    //checks inst format
    if(shift!=0){
        //-invalid instr format
        exit(-12);
    } else {
        regs[dest]=regs[source2];
        //shifts the reg and adds a msb of 1 for signed numbers on loop
        for(int i=0; i<(regs[source1]&0x0000001F); i++){
            regs[dest]=regs[dest]>>1;
            if((regs[source2]&0x80000000)!=0){
                regs[dest]+=0x80000000;
            }
        }
    }
}

void r_instruction::JR(uint32_t* regs, uint32_t &pc, bool &delay, uint32_t &delayinst){
    //checks inst format
    if(((source1!=0)&&((source2!=0)))&&(shift!=0)){
        //-invalid instr format
        exit(-12);
    } else {
        //sets the delay
        delay = true;
        delayinst = pc+4;
        
        //pc is set to reg value
        pc=regs[source1];
    }
    if((pc%4)!=0){
        exit(-11);
    }
}

void r_instruction::JALR(uint32_t* regs, uint32_t &pc, bool &delay, uint32_t &delayinst){
    //checks inst format
    if((source2!=0)&&(shift!=0)){
        //-invalid instr format
        exit(-12);
    } else {
        //sets the delay
        delay = true;
        delayinst = pc+4;
        
        //the pc value + a delay of 8 is stored in the return register
        regs[dest]=pc+8;
        //pc is set to reg value
        pc=regs[source1];
    }
    if((pc%4)!=0){
        exit(-11);
    }
}

void r_instruction::MFHI(uint32_t *regs, uint32_t &HI){
    //checks inst format
    if(((source1==0)&&(source2==0))&&(shift==0)){
        //stores HI reg value into reg
        regs[dest]=HI;
    } else {
        //-invalid instr format
        exit(-12);
    }
}

void r_instruction::MTHI(uint32_t *regs, uint32_t &HI){
    //checks inst format
    if(((source2==0)&&(dest==0))&&(shift==0)){
        //stores the reg value in the HI reg
        HI = regs[source1];
    } else {
        //-invalid instr format
        exit(-12);
    }
}

void r_instruction::MFLO(uint32_t *regs, uint32_t &LO){
    //checks inst format
    if(((source1==0)&&(source2==0))&&(shift==0)){
        //stores the LO reg value into reg
        regs[dest]=LO;
    } else {
        //-invalid instr format
        exit(-12);
    }
}

void r_instruction::MTLO(uint32_t *regs, uint32_t &LO){
    //checks inst format
    if(((source2==0)&&(dest==0))&&(shift==0)){
        //stores reg value into LO reg
        LO= regs[source1];
    } else {
        //-invalid instr format
        exit(-12);
    }
}

void r_instruction::MULT(uint32_t *regs, uint32_t &HI, uint32_t &LO){
    //checks inst format
    if((dest==0)&&(shift==0)){
        //converts the registers to signed variables and multiplies them into a 64b variable
        int64_t sreg1 = regs[source1];
        if(regs[source1]&0x80000000){
            sreg1=sreg1|0xFFFFFFFF00000000;
        }
        int64_t sreg2 = regs[source2];
        if(regs[source2]&0x80000000){
            sreg2=sreg2|0xFFFFFFFF00000000;
        }
        int64_t result = sreg1 * sreg2;
        
        //LO receives the least significant 32b of the 64b total and HI recieves the most significant 32b
        LO = result&0xFFFFFFFF;
        result = result>>32;
        HI = result&0xFFFFFFFF;
    } else {
        //-invalid instr format
        exit(-12);
    }
}

void r_instruction::MULTU(uint32_t *regs, uint32_t &HI, uint32_t &LO){
    //checks inst format
    if((dest==0)&&(shift==0)){
        //performs multiplication
        uint64_t tempmulti1 = regs[source1];
        uint64_t tempmulti2 = regs[source2];
        uint64_t result = tempmulti1*tempmulti2;
        
        //LO receives the least significant 32b of the 64b total and HI recieves the most significant 32b
        LO = result&0xFFFFFFFF;
        result = result>>32;
        HI = result&0xFFFFFFFF;
    } else {
        //-invalid instr format
        exit(-12);
    }
}

void r_instruction::DIV(uint32_t *regs, uint32_t &HI, uint32_t &LO){
    //checks inst format
    if((dest==0)&&(shift==0)){
        if(regs[source2]==0){
            HI=0;
            LO=0;
        } else if ((regs[source1]==0xFFFFFFFF)&&(regs[source2]==0x80000000)) {
            HI=0;
            LO=0;
        } else {
            int32_t result, sreg1, sreg2;
            uint32_t remainder = 0;
            
            //converts the registers to signed variables
            sreg1 = regs[source1];
            sreg2 = regs[source2];
            
            //remainder gets the remainder of the divison,
            //which is the subtracted from the first reg and it then performs the division
            remainder = sreg1 % sreg2;
            sreg1 -= remainder;
            result = sreg1/sreg2;
            
            //LO recieves the result and HI receives the remainder of the operation
            LO=result;
            HI=remainder;
        }
    } else {
        //-invalid instr format
        exit(-12);
    }
}

void r_instruction::DIVU(uint32_t *regs, uint32_t &HI, uint32_t &LO){
    if(regs[source2]==0){
        HI=0;
        LO=0;
    } else
    //checks inst format
    if((dest==0)&&(shift==0)){
        uint32_t result, remainder, temp;
        
        //remainder gets the remainder of the divison,
        //which is the subtracted from the first reg and it then performs the division
        remainder = regs[source1] % regs[source2];
        temp = regs[source1]-remainder;
        result = temp/regs[source2];
        
        //LO recieves the result and HI receives the remainder of the operation
        LO=result;
        HI=remainder;
    } else {
        //-invalid instr format
        exit(-12);
    }
}

void r_instruction::ADD(uint32_t *regs){
    //checks inst format
    if(shift!=0){
        //-invalid instr format
        exit(-12);
    } else{
        //declares signed versions of the values
        int32_t sreg1 = regs[source1];
        int32_t sreg2 = regs[source2];
        int32_t stotal;
    
        //performs the addition
        regs[dest]=sreg1+sreg2;
        stotal = regs[dest];
        
        //checks for overflow
        if((sreg1>0)&&(sreg2>0)){
            if(stotal<0){
                //overflow occured
                exit(-10);
            }
        }
        if((sreg1<0)&&(sreg2<0)){
            if(stotal>0){
                //overflow occured
                exit(-10);
            }
        }
    }
}

void r_instruction::ADDU(uint32_t *regs){
    //checks inst format
    if(shift!=0){
        //-invalid instr format
        exit(-12);
    } else {
        //performs addition
        uint32_t temp1=regs[source1];
        uint32_t temp2=regs[source2];
        uint32_t temp3=0;
        
        temp3=temp1+temp2;
        regs[dest]=temp3;
    }
}

void r_instruction::SUB(uint32_t *regs){
    //checks inst format
    if(shift!=0){
        //-invalid instr format
        exit(-12);
    }
    else{
        //declares signed versions of the values
        int32_t sreg1 = regs[source1];
        int32_t sreg2 = regs[source2];
        int32_t sresult;
    
        //performs subtraction
        sresult=sreg1-sreg2;
        regs[dest]=sresult;
        
        //checks for overflow
        if((sreg1>0)!=(sreg2>0)){
            if(((sreg1>0)&&sresult<0)||
               ((sreg1<0)&&sresult>0)){
                //overflow occured
                exit(-10);
            }
        }
    }
}

void r_instruction::SUBU(uint32_t *regs){
    //checks inst format
    if(shift!=0){
        //-invalid instr format
        exit(-12);
    }else{
        //performs subtraction
        uint32_t temp1=regs[source1];
        uint32_t temp2=regs[source2];
        uint32_t temp3=0;
        
        temp3=temp1-temp2;
        regs[dest]=temp3;
    }
}

void r_instruction::AND(uint32_t *regs){
    //checks inst format
    if(shift!=0){
        //-invalid instr format
        exit(-12);
    } else {
        //bitwise and
        uint32_t temp1=regs[source1];
        uint32_t temp2=regs[source2];
        uint32_t temp3=0;
        
        temp3=temp1&temp2;
        regs[dest]=temp3;
    }
}

void r_instruction::OR(uint32_t *regs){
    //checks inst format
    if(shift!=0){
        //-invalid instr format
        exit(-12);
    } else {
        //bitwise or
        uint32_t temp1=regs[source1];
        uint32_t temp2=regs[source2];
        uint32_t temp3=0;
        
        temp3=temp1|temp2;
        regs[dest]=temp3;
    }
}

void r_instruction::XOR(uint32_t *regs){
    //checks inst format
    if(shift!=0){
        //-invalid instr format
        exit(-12);
    } else {
        //bitwise xor
        uint32_t temp1=regs[source1];
        uint32_t temp2=regs[source2];
        uint32_t temp3=0;
        
        temp3=temp1^temp2;
        regs[dest]=temp3;
    }
}

void r_instruction::SLT(uint32_t *regs){
    //checks inst format
    if(shift!=0){
        //-invalid instr format
        exit(-12);
    } else {
        //converts to signed
        int32_t sreg1 = regs[source1];
        int32_t sreg2 = regs[source2];
        
        //performs comparison, sets reg to 1 if true and 0 if not
        if(sreg1<sreg2){ regs[dest]=1; }
        else{ regs[dest]=0; }
    }
}

void r_instruction::SLTU(uint32_t *regs){
    //checks inst format
    if(shift!=0){
        //-invalid instr format
        exit(-12);
    } else {
        //performs comparison, sets reg to 1 if true and 0 if not
        if(regs[source1]<regs[source2]){ regs[dest]=1; }
        else { regs[dest]=0; }
    }
}

//checks what function to run
void r_instruction::run(uint32_t &HI, uint32_t &LO, uint32_t *regs, uint32_t &pc, bool &delay, uint32_t &delayinst){
    //by default the pc will inc
    bool pcinc = true;
    
    //checks func code to corresponding function
    switch(func){
        case 0x0:
            SLL(regs);
            break;
        case 0x2:
            SRL(regs);
            break;
        case 0x3:
            SRA(regs);
            break;
        case 0x4:
            SLLV(regs);
            break;
        case 0x6:
            SRLV(regs);
            break;
        case 0x7:
            SRAV(regs);
            break;
        case 0x08:
            JR(regs, pc, delay, delayinst);
            pcinc=false;
            break;
        case 0x09:
            JALR(regs, pc, delay, delayinst);
            pcinc=false;
            break;
        case 0x10:
            MFHI(regs, HI);
            break;
        case 0x11:
            MTHI(regs, HI);
            break;
        case 0x12:
            MFLO(regs, LO);
            break;
        case 0x13:
            MTLO(regs, LO);
            break;
        case 0x18:
            MULT(regs, HI, LO);
            break;
        case 0x19:
            MULTU(regs, HI, LO);
            break;
        case 0x1A:
            DIV(regs, HI, LO);
            break;
        case 0x1B:
            DIVU(regs, HI, LO);
            break;
        case 0x20:
            ADD(regs);
            break;
        case 0x21:
            ADDU(regs);
            break;
        case 0x22:
            SUB(regs);
            break;
        case 0x23:
            SUBU(regs);
            break;
        case 0x24:
            AND(regs);
            break;
        case 0x25:
            OR(regs);
            break;
        case 0x26:
            XOR(regs);
            break;
        case 0x2A:
            SLT(regs);
            break;
        case 0x2B:
            SLTU(regs);
            break;
        //throws error if none of the ops were selected
        default:
            //none were selected
            exit(-12);
    }
    //inc pc if it hasn't been told not to
    if(pcinc){ pc_inc(pc); }
    
    //ensures $0 is still 0
    regs[0]=0;
}
