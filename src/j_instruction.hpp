#ifndef j_instruction_hpp
#define j_instruction_hpp

#include <stdio.h>
#include <string>
#include <cmath>

using namespace std;

class j_instruction{
public:
    j_instruction(uint32_t instruction);
    ~j_instruction();
    
    //func to choose op
    void run(uint32_t *regs, uint32_t &pc, bool &delay, uint32_t &delayinst);
    
    //only possible functions
    void J(uint32_t &pc, bool &delay, uint32_t &delayinst);
    void JAL(uint32_t *regs, uint32_t &pc, bool &delay, uint32_t &delayinst);
    
//variables:
    uint32_t opcode;
    uint32_t immediate;
};

#endif
