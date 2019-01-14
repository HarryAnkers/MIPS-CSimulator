#include "j_instruction.hpp"

using namespace std;

j_instruction::j_instruction(uint32_t instruction){
    //decodes the instructions into components
    opcode=instruction>>26;
    
    immediate=instruction<<6;
    immediate=immediate>>6;
}

j_instruction::~j_instruction(){}

void j_instruction::J(uint32_t &pc, bool &delay, uint32_t &delayinst){
    //sets the delay
    delay = true;
    delayinst = pc+4;
    
    uint32_t temp = immediate;
    
    //shifts pc to keep only two msb
    pc=pc>>28;
    pc=pc<<28;
    
    //adds the unsigned immediate to pc
    pc=pc+(temp<<2);
    if((pc%4)!=0){
        exit(-11);
    }
}

void j_instruction::JAL(uint32_t *regs, uint32_t &pc, bool &delay, uint32_t &delayinst){
    //sets the delay
    delay = true;
    delayinst = pc+4;
    
    uint32_t temp = immediate;
    
    //saves pc
    regs[31]=pc+8;
    
    //shifts pc to keep only msbyte
    pc=pc>>28;
    pc=pc<<28;
    
    //adds the unsigned immediate to pc
    pc=pc+(temp<<2);
    if((pc%4)!=0){
        exit(-11);
    }
}

void j_instruction::run(uint32_t *regs, uint32_t &pc, bool &delay, uint32_t &delayinst){
    //chooses function
    if(opcode==2){
        J(pc, delay, delayinst);
    } else if(opcode==3){
        JAL(regs,pc, delay, delayinst);
    } else{
        //if no func is selected returns an error (should never reach)
        exit(-12);
    }
}


