#ifndef instruction_hpp
#define instruction_hpp

#include <stdio.h>
#include <string>
#include <iostream>
#include <cmath>

using namespace std;

class r_instruction{
public:
    r_instruction(uint32_t instruction);
    ~r_instruction();
    
    //functions to choose function and inc pc counter
    void pc_inc(uint32_t &pc);
    void run(uint32_t &HI, uint32_t &LO, uint32_t *regs, uint32_t &pc, bool &delay, uint32_t &delayinst);
    
    //all possible ops
    void SLL(uint32_t *regs);
    void SRL(uint32_t *regs);
    void SRA(uint32_t *regs);
    void SLLV(uint32_t *regs);
    void SRLV(uint32_t *regs);
    void SRAV(uint32_t *regs);
    void JR(uint32_t *regs, uint32_t &pc, bool &delay, uint32_t &delayinst);
    void JALR(uint32_t *regs, uint32_t &pc, bool &delay, uint32_t &delayinst);
    void MFHI(uint32_t *regs, uint32_t &HI);
    void MTHI(uint32_t *regs, uint32_t &HI);
    void MFLO(uint32_t *regs, uint32_t &LO);
    void MTLO(uint32_t *regs, uint32_t &LO);
    void MULT(uint32_t *regs, uint32_t &HI, uint32_t &LO);
    void MULTU(uint32_t *regs, uint32_t &HI, uint32_t &LO);
    void DIV(uint32_t *regs, uint32_t &HI, uint32_t &LO);
    void DIVU(uint32_t *regs, uint32_t &HI, uint32_t &LO);
    void ADD(uint32_t *regs);
    void ADDU(uint32_t *regs);
    void SUB(uint32_t *regs);
    void SUBU(uint32_t *regs);
    void AND(uint32_t *regs);
    void OR(uint32_t *regs);
    void XOR(uint32_t *regs);
    void SLT(uint32_t *regs);
    void SLTU(uint32_t *regs);
    
    //variables
    uint32_t opcode;
    uint32_t source1;
    uint32_t source2;
    uint32_t dest;
    uint32_t shift;
    uint32_t func;
};


#endif
