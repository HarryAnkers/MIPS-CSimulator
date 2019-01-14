#include <cstdlib>
#include <stdint.h>
#include <iostream>
#include <fstream>
#include <cmath>
#include <string>
#include <cstdint>
#include <vector>
#include "r_instruction.hpp"
#include "i_instruction.hpp"
#include "j_instruction.hpp"
#include <cmath>
uint32_t RAM[datasize]={0};
uint32_t ROM[instsize]={0};

using namespace std;

//function to convert the file of binary instructions to a string of char "1" and "0"
void make_instuction_vector(string filename){
    //declares a uint16 for each byte and a uint32 for each line
    //NOTE -- WE TRIED U8 FOR THE BYTE BUT IT ONLY READ ONE DIGIT AT A TIME
    uint8_t instbyte=0;
    uint32_t instline=0;
    uint32_t i=0;
    
    //declares fstream
    ifstream myfile;
    myfile.open(filename);
    
    //needs this so it doesnt skip anything it thinks is the char equivelent to a space found at
    //https://stackoverflow.com/questions/6774825/reading-from-ifstream-wont-read-whitespace
    myfile >> noskipws;
    
    if(myfile.is_open()){
        
        //puts 32 char into the instruction vector
        while(!myfile.eof()){
            if(i==instsize){
                //too many instructions"
                myfile.close();
                exit(-11);
            }
            
            instline=0;
            for(int i=0; i<4; i++){
                myfile>>instbyte;
                instline += instbyte<<(8*(3-i));
            }
            if(!myfile.eof()){
                ROM[i]=instline;
            }
            i++;
        }
        //stops at the end of the file
    } else {
        //no file was opened
        exit(-12);
    }
    myfile.close();
}


char getfunc_type(uint32_t instruction){
    int opcode=instruction>>26;
    
    if(opcode==0){ return 'r';}
    else if(opcode==2||opcode==3){ return 'j';}
    else{ return 'i';}
}


int main(int argc, const char * argv[])
{
    
//declares the memory elements we will use except the ROM and RAM which is global
    uint32_t regs[32] = {0};
    
    uint32_t pc=0x10000000;
    uint32_t getc, putc, HI, LO, pcno;
    uint32_t pcstore = 0;
    uint32_t delayinst = 0;
    bool delay = false;
    bool delaycg = false;
    
    int flag = 0;
    
    //converts the text file of instructions into a more managable vector of uint32 instructions
    make_instuction_vector(argv[1]);
    
    while(1){
        //checks the opcode and creates a class accordingly
        char function_type='0';
        
        if(delay==false){
            if(delaycg==true){
                pc=pcstore;
                delaycg=false;
            }
            pcno=(pc-0x10000000)/4;
        } else {
            pcno=(delayinst-0x10000000)/4;
            pcstore = pc;
            delay = false;
            delaycg = true;
        }
        
        //if pc is ADDR_NULL it returns -1
        if(pc==0){
            exit(regs[2]&0x000000FF);
        } else if((pc<0x10000000)||(pc>=0x11000000)){
            exit(-11);
        }
       
        function_type = getfunc_type(ROM[pcno]);
        if(function_type=='r'){
            r_instruction rinst(ROM[pcno]);
            rinst.run(HI, LO, regs, pc, delay, delayinst);
        } else if(function_type=='i'){
            i_instruction iinst(ROM[pcno]);
            flag = iinst.run(RAM, ROM, regs, pc, putc, getc, delay, delayinst);
        } else if(function_type=='j'){
            j_instruction jinst(ROM[pcno]);
            jinst.run(regs, pc, delay, delayinst);
        }
        
        if (flag==-1){
            //finishes
            exit(regs[2]&0x000000FF);
        }
    }
}
