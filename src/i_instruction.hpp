#ifndef i_instruction_hpp
#define i_instruction_hpp

#include <stdio.h>
#include <cmath>
#include <string>

#define dataoffset 0x20000000
#define datasize 0x4000000
#define instoffset 0x10000000
#define instsize 0x1000000

using namespace std;

class i_instruction{
public:
    i_instruction(uint32_t i_instruction);
    
    ~i_instruction();
    
    //function to inc pc and select op
    void pc_inc(uint32_t &pc);
    int run(uint32_t *data, uint32_t *inst, uint32_t *regs, uint32_t &pc, uint32_t &getc, uint32_t &putc, bool &delay, uint32_t &delayinst);
    
    //seperate ops for storing and loading
    int store(uint32_t *data, uint32_t dataval, int datalength, uint32_t addr);
    int load(uint32_t *data, uint32_t *inst, uint32_t &returndata ,int datalength,uint32_t addr);
    
    //all possible ops
    void BLTZ(uint32_t *regs, uint32_t &pc, bool &delay, uint32_t &delayinst);
    void BGEZ(uint32_t *regs, uint32_t &pc, bool &delay, uint32_t &delayinst);
    void BLTZAL(uint32_t *regs, uint32_t &pc, bool &delay, uint32_t &delayinst);
    void BGEZAL(uint32_t *regs, uint32_t &pc, bool &delay, uint32_t &delayinst);
    void BEQ(uint32_t *regs, uint32_t &pc, bool &delay, uint32_t &delayinst);
    void BNE(uint32_t *regs, uint32_t &pc, bool &delay, uint32_t &delayinst);
    void BLEZ(uint32_t *regs, uint32_t &pc, bool &delay, uint32_t &delayinst);
    void BGTZ(uint32_t *regs, uint32_t &pc, bool &delay, uint32_t &delayinst);
    void ADDI(uint32_t *regs);
    void ADDIU(uint32_t *regs);
    void SLTI(uint32_t *regs);
    void SLTIU(uint32_t *regs);
    void ANDI(uint32_t *regs);
    void ORI(uint32_t *regs);
    void XORI(uint32_t *regs);
    void LUI(uint32_t *regs);
    int LB(uint32_t *regs, uint32_t *data, uint32_t *inst);
    int LH(uint32_t *regs, uint32_t *data, uint32_t *inst);
    int LWL(uint32_t *regs, uint32_t *data, uint32_t *inst);
    int LW(uint32_t *regs, uint32_t *data, uint32_t *inst);
    int LBU(uint32_t *regs, uint32_t *data, uint32_t *inst);
    int LHU(uint32_t *regs, uint32_t *data, uint32_t *inst);
    int LWR(uint32_t *regs, uint32_t *data, uint32_t *inst);
    int SB(uint32_t *regs, uint32_t *data);
    int SH(uint32_t *regs, uint32_t *data);
    int SW(uint32_t *regs, uint32_t *data);
    
//variables
    uint32_t opcode;
    uint32_t source1;
    uint32_t dest;
    uint32_t uimmediate;
    int16_t simmediate;
};


#endif
