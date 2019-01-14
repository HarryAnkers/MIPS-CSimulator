#!/bin/bash
g++ -std=c++11 src/simulator.cpp src/r_instruction.cpp src/i_instruction.cpp src/j_instruction.cpp -o bin/mips_simulator
./bin/mips_simulator 	bin/AND/ANDtest1.bin
let result=$?
if [ $result -eq 4 ]
then 
echo AND~test1, PASS, sv16
fi
if [ $result -ne 4 ]
then 
echo AND~test1, FAIL, sv16
fi

./bin/mips_simulator 	bin/AND/ANDtest2.bin
let result=$?
if [ $result -eq 20 ]
then 
echo AND~test2, PASS, sv16
fi
if [ $result -ne 20 ]
then 
echo AND~test2, FAIL, sv16
fi
./bin/mips_simulator 	bin/ANDI/ANDItest1.bin
let result=$?
if [ $result -eq 0 ]
then 
echo ANDI~test2, PASS, sv16
fi
if [ $result -ne 0 ]
then 
echo ANDI~test2, FAIL, sv16
fi
./bin/mips_simulator 	bin/BEQ/BEQtest1.bin
let result=$?
if [ $result -eq 5 ]
then 
echo BEQ~test1, PASS, sv16
fi
if [ $result -ne 5 ]
then 
echo BEQ~test1, FAIL, sv16
fi

./bin/mips_simulator 	bin/BEQ/BEQtest2.bin
let result=$?
if [ $result -eq 245 ]
then 
echo BEQ~test2, PASS, sv16
fi
if [ $result -ne 245 ]
then 
echo BEQ~test2, FAIL, sv16
fi

./bin/mips_simulator 	bin/BEQ/BEQtest3.bin
let result=$?
if [ $result -eq 7 ]
then 
echo BEQ~test3, PASS, sv16
fi
if [ $result -ne 7 ]
then 
echo BEQ~test3, FAIL, sv16
fi

./bin/mips_simulator 	bin/OR/ORtest1.bin
let result=$?
if [ $result -eq 7 ]
then 
echo OR~test1, PASS, sv16
fi
if [ $result -ne 7 ]
then 
echo OR~test1, FAIL, sv16
fi

./bin/mips_simulator 	bin/OR/ORtest2.bin
let result=$?
if [ $result -eq 23 ]
then 
echo OR~test2, PASS, sv16
fi
if [ $result -ne 23 ]
then 
echo OR~test2, FAIL, sv16
fi

./bin/mips_simulator 	bin/ORI/ORItest1.bin
let result=$?
if [ $result -eq 5 ]
then 
echo ORI~test1, PASS, sv16
fi
if [ $result -ne 5 ]
then 
echo ORI~test1, FAIL, sv16
fi

./bin/mips_simulator 	bin/SLT/SLTtest1.bin
let result=$?
if [ $result -eq 1 ]
then 
echo SLT~test1, PASS, sv16
fi
if [ $result -ne 1 ]
then 
echo SLT~test1, FAIL, sv16
fi

./bin/mips_simulator 	bin/SLT/SLTtest2.bin
let result=$?
if [ $result -eq 1 ]
then 
echo SLT~test2, PASS, sv16
fi
if [ $result -ne 1 ]
then 
echo SLT~test2, FAIL, sv16
fi

./bin/mips_simulator 	bin/SLT/SLTtest3.bin
let result=$?
if [ $result -eq 0 ]
then 
echo  SLT~test3, PASS, sv16
fi
if [ $result -ne 0 ]
then 
echo  SLT~test3, FAIL, sv16
fi

./bin/mips_simulator 	bin/SLTIU/SLTIUtest1.bin
let result=$?
if [ $result -eq 0 ]
then 
echo  SLTIU~test1, PASS, sv16
fi
if [ $result -ne 0 ]
then 
echo  SLTIU~test1, FAIL, sv16
fi

./bin/mips_simulator 	bin/SLTIU/SLTIUtest2.bin
let result=$?
if [ $result -eq 1 ]
then 
echo  SLTIU~test2, PASS, sv16
fi
if [ $result -ne 1 ]
then 
echo  SLTIU~test2, FAIL, sv16
fi

./bin/mips_simulator 	bin/SLTU/SLTUtest1.bin
let result=$?
if [ $result -eq 1 ]
then 
echo  SLTU~test1, PASS, sv16
fi
if [ $result -ne 1 ]
then 
echo  SLTU~test1, FAIL, sv16
fi

./bin/mips_simulator 	bin/SLTU/SLTUtest2.bin
let result=$?
if [ $result -eq 0 ]
then 
echo  SLTU~test2, PASS, sv16
fi
if [ $result -ne 0 ]
then 
echo  SLTU~test2, FAIL, sv16
fi

./bin/mips_simulator 	bin/XOR/XORtest1.bin
let result=$?
if [ $result -eq 3 ]
then 
echo  XOR~test1, PASS, sv16
fi
if [ $result -ne 3 ]
then 
echo  XOR~test1, FAIL, sv16
fi

./bin/mips_simulator 	bin/XOR/XORtest2.bin
let result=$?
if [ $result -eq 3 ]
then 
echo  XOR~test2, PASS, sv16
fi
if [ $result -ne 3 ]
then 
echo  XOR~test2, FAIL, sv16
fi

./bin/mips_simulator 	bin/XORI/XORItest1.bin
let result=$?
if [ $result -eq 21 ]
then 
echo  XORI~test1, PASS, sv16
fi
if [ $result -ne 21 ]
then 
echo  XORI~test1, FAIL, sv16
fi

./bin/mips_simulator 	bin/ADD/ADD1.bin
let result=$?
if [ $result -eq 17 ]
then 
echo  ADD~test1, PASS, sv16
fi
if [ $result -ne 17 ]
then 
echo  ADD~test1, FAIL, sv16
fi

./bin/mips_simulator 	bin/ADD/ADD2.bin
let result=$?
if [ $result -eq 15 ]
then 
echo  ADD~test2, PASS, sv16
fi
if [ $result -ne 15 ]
then 
echo  ADD~test2, FAIL, sv16
fi

./bin/mips_simulator 	bin/ADD/ADD3.bin
let result=$?
if [ $result -eq 246 ]
then 
echo  ADD~test3, PASS, sv16
fi
if [ $result -ne 246 ]
then 
echo  ADD~test3, FAIL, sv16
fi

./bin/mips_simulator 	bin/ADD/ADD4.bin
let result=$?
if [ $result -eq 246 ]
then 
echo  ADD~test4, PASS, sv16
fi
if [ $result -ne 246 ]
then 
echo  ADD~test4, FAIL, sv16
fi

./bin/mips_simulator 	bin/ADDI/ADDI1.bin
let result=$?
if [ $result -eq 17 ]
then 
echo  ADDI~test1, PASS, sv16
fi
if [ $result -ne 17 ]
then 
echo  ADDI~test1, FAIL, sv16
fi

./bin/mips_simulator 	bin/ADDI/ADDI2.bin
let result=$?
if [ $result -eq 15 ]
then 
echo  ADDI~test2, PASS, sv16
fi
if [ $result -ne 15 ]
then 
echo  ADDI~test2, FAIL, sv16
fi

./bin/mips_simulator 	bin/ADDI/ADDI3.bin
let result=$?
if [ $result -eq 246 ]
then 
echo  ADDI~test3, PASS, sv16
fi
if [ $result -ne 246 ]
then 
echo  ADDI~test3, FAIL, sv16
fi

./bin/mips_simulator 	bin/ADDI/ADDI4.bin
let result=$?
if [ $result -eq 246 ]
then 
echo  ADDI~test4, PASS, sv16
fi
if [ $result -ne 246 ]
then 
echo  ADDI~test4, FAIL, sv16
fi

./bin/mips_simulator 	bin/ADDIU/ADDIU1.bin
let result=$?
if [ $result -eq 17 ]
then 
echo  ADDIU~test1, PASS, sv16
fi
if [ $result -ne 17 ]
then 
echo  ADDIU~test1, FAIL, sv16
fi

./bin/mips_simulator 	bin/ADDIU/ADDIU2.bin
let result=$?
if [ $result -eq 1 ]
then 
echo  ADDIU~test2, PASS, sv16
fi
if [ $result -ne 1 ]
then 
echo  ADDIU~test2, FAIL, sv16
fi

./bin/mips_simulator 	bin/ADDU/ADDU1.bin
let result=$?
if [ $result -eq 17 ]
then 
echo  ADDU~test1, PASS, sv16
fi
if [ $result -ne 17 ]
then 
echo  ADDU~test1, FAIL, sv16
fi

./bin/mips_simulator 	bin/ADDU/ADDU2.bin
let result=$?
if [ $result -eq 1 ]
then 
echo  ADDU~test2, PASS, sv16
fi
if [ $result -ne 1 ]
then 
echo  ADDU~test2, FAIL, sv16
fi

./bin/mips_simulator 	bin/JR/JR1.bin
let result=$?
if [ $result -eq 0 ]
then 
echo  JR~test1, PASS, sv16
fi
if [ $result -ne 0 ]
then 
echo  JR~test1, FAIL, sv16
fi

./bin/mips_simulator 	bin/JR/JR1.bin
let result=$?
if [ $result -eq 0 ]
then 
echo  JR~test1, PASS, sv16
fi
if [ $result -ne 0 ]
then 
echo  JR~test1, FAIL, sv16
fi

./bin/mips_simulator 	bin/JR/JR2.bin
let result=$?
if [ $result -eq 255 ]
then 
echo  JR~test2, PASS, sv16
fi
if [ $result -ne 255 ]
then 
echo  JR~test2, FAIL, sv16
fi

./bin/mips_simulator 	bin/JR/JR3.bin
let result=$?
if [ $result -eq 245 ]
then 
echo  JR~test3, PASS, sv16
fi
if [ $result -ne 245 ]
then 
echo  JR~test3, FAIL, sv16
fi

./bin/mips_simulator 	bin/JR/JR4.bin
let result=$?
if [ $result -eq 245 ]
then 
echo  JR~test4, PASS, sv16
fi
if [ $result -ne 245 ]
then 
echo  JR~test4, FAIL, sv16
fi

./bin/mips_simulator 	bin/JR/JR5.bin
let result=$?
if [ $result -eq 245 ]
then 
echo  JR~test5, PASS, sv16
fi
if [ $result -ne 245 ]
then 
echo  JR~test5, FAIL, sv16
fi

./bin/mips_simulator 	bin/LUI/LUI1.bin
let result=$?
if [ $result -eq 1 ]
then 
echo  LUI~test1, PASS, sv16
fi
if [ $result -ne 1 ]
then 
echo  LUI~test1, FAIL, sv16
fi

./bin/mips_simulator 	bin/LUI/LUI2.bin
let result=$?
if [ $result -eq 0 ]
then 
echo  LUI~test2, PASS, sv16
fi
if [ $result -ne 0 ]
then 
echo  LUI~test2, FAIL, sv16
fi

./bin/mips_simulator 	bin/SB/SB1.bin
let result=$?
if [ $result -eq 245 ]
then 
echo  SB~test1, PASS, sv16
fi
if [ $result -ne 245 ]
then 
echo  SB~test1, FAIL, sv16
fi

./bin/mips_simulator 	bin/SB/SB2.bin
let result=$?
if [ $result -eq 245 ]
then 
echo  SB~test2, PASS, sv16
fi
if [ $result -ne 245 ]
then 
echo  SB~test2, FAIL, sv16
fi

./bin/mips_simulator 	bin/SB/SB3.bin
let result=$?
if [ $result -eq 245 ]
then 
echo  SB~test3, PASS, sv16
fi
if [ $result -ne 245 ]
then 
echo  SB~test3, FAIL, sv16
fi

./bin/mips_simulator 	bin/SB/SB4.bin
let result=$?
if [ $result -eq 0 ]
then 
echo  SB~test4, PASS, sv16
fi
if [ $result -ne 0 ]
then 
echo  SB~test4, FAIL, sv16
fi

./bin/mips_simulator 	bin/SB/SB5.bin
let result=$?
if [ $result -eq 0 ]
then 
echo  SB~test5, PASS, sv16
fi
if [ $result -ne 0 ]
then 
echo  SB~test5, FAIL, sv16
fi

./bin/mips_simulator 	bin/SB/SB6.bin
let result=$?
if [ $result -eq 0 ]
then 
echo  SB~test6, PASS, sv16
fi
if [ $result -ne 0 ]
then 
echo  SB~test6, FAIL, sv16
fi

./bin/mips_simulator 	bin/SB/SB7.bin
let result=$?
if [ $result -eq 255 ]
then 
echo  SB~test7, PASS, sv16
fi
if [ $result -ne 255 ]
then 
echo  SB~test7, FAIL, sv16
fi

./bin/mips_simulator 	bin/SH/SH1.bin
let result=$?
if [ $result -eq 245 ]
then 
echo  SH~test1, PASS, sv16
fi
if [ $result -ne 245 ]
then 
echo  SH~test1, FAIL, sv16
fi

./bin/mips_simulator 	bin/SH/SH2.bin
let result=$?
if [ $result -eq 245 ]
then 
echo  SH~test2, PASS, sv16
fi
if [ $result -ne 245 ]
then 
echo  SH~test2, FAIL, sv16
fi

./bin/mips_simulator 	bin/SH/SH3.bin
let result=$?
if [ $result -eq 245 ]
then 
echo  SH~test3, PASS, sv16
fi
if [ $result -ne 245 ]
then 
echo  SH~test3, FAIL, sv16
fi

./bin/mips_simulator 	bin/SH/SH4.bin
let result=$?
if [ $result -eq 0 ]
then 
echo  SH~test4, PASS, sv16
fi
if [ $result -ne 0 ]
then 
echo  SH~test4, FAIL, sv16
fi

./bin/mips_simulator 	bin/SH/SH5.bin
let result=$?
if [ $result -eq 0 ]
then 
echo  SH~test5, PASS, sv16
fi
if [ $result -ne 0 ]
then 
echo  SH~test5, FAIL, sv16
fi

./bin/mips_simulator 	bin/SH/SH6.bin
let result=$?
if [ $result -eq 0 ]
then 
echo  SH~test6, PASS, sv16
fi
if [ $result -ne 0 ]
then 
echo  SH~test6, FAIL, sv16
fi

./bin/mips_simulator 	bin/SH/SH7.bin
let result=$?
if [ $result -eq 255 ]
then 
echo  SH~test7, PASS, sv16
fi
if [ $result -ne 255 ]
then 
echo  SH~test7, FAIL, sv16
fi

./bin/mips_simulator 	bin/SLL/SLL1.bin
let result=$?
if [ $result -eq 0 ]
then 
echo  SLL~test1, PASS, sv16
fi
if [ $result -ne 0 ]
then 
echo  SLL~test1, FAIL, sv16
fi

./bin/mips_simulator 	bin/SLL/SLL2.bin
let result=$?
if [ $result -eq 8 ]
then 
echo  SLL~test2, PASS, sv16
fi
if [ $result -ne 8 ]
then 
echo  SLL~test2, FAIL, sv16
fi

./bin/mips_simulator 	bin/SLLV/SLLV1.bin
let result=$?
if [ $result -eq 0 ]
then 
echo  SLLV~test1, PASS, sv16
fi
if [ $result -ne 0 ]
then 
echo  SLLV~test1, FAIL, sv16
fi

./bin/mips_simulator 	bin/SLLV/SLLV2.bin
let result=$?
if [ $result -eq 8 ]
then 
echo  SLLV~test2, PASS, sv16
fi
if [ $result -ne 8 ]
then 
echo  SLL~Vtest2, FAIL, sv16
fi

./bin/mips_simulator 	bin/SRA/SRA1.bin
let result=$?
if [ $result -eq 0 ]
then 
echo  SRA~test1, PASS, sv16
fi
if [ $result -ne 0 ]
then 
echo  SRA~test1, FAIL, sv16
fi

./bin/mips_simulator 	bin/SRA/SRA2.bin
let result=$?
if [ $result -eq 254 ]
then 
echo  SRA~test2, PASS, sv16
fi
if [ $result -ne 254 ]
then 
echo  SRA~test2, FAIL, sv16
fi

./bin/mips_simulator 	bin/SRA/SRA3.bin
let result=$?
if [ $result -eq 2 ]
then 
echo  SRA~test3, PASS, sv16
fi
if [ $result -ne 2 ]
then 
echo  SRA~test3, FAIL, sv16
fi

./bin/mips_simulator 	bin/SRAV/SRAV1.bin
let result=$?
if [ $result -eq 0 ]
then 
echo  SRAV~test1, PASS, sv16
fi
if [ $result -ne 0 ]
then 
echo  SRAV~test1, FAIL, sv16
fi

./bin/mips_simulator 	bin/SRAV/SRAV2.bin
let result=$?
if [ $result -eq 254 ]
then 
echo  SRAV~test2, PASS, sv16
fi
if [ $result -ne 254 ]
then 
echo  SRAV~test2, FAIL, sv16
fi

./bin/mips_simulator 	bin/SRAV/SRAV3.bin
let result=$?
if [ $result -eq 2 ]
then 
echo  SRAV~test3, PASS, sv16
fi
if [ $result -ne 2 ]
then 
echo  SRAV~test3, FAIL, sv16
fi

./bin/mips_simulator 	bin/SRL/SRL1.bin
let result=$?
if [ $result -eq 0 ]
then 
echo  SRL~test1, PASS, sv16
fi
if [ $result -ne 0 ]
then 
echo  SRL~test1, FAIL, sv16
fi

./bin/mips_simulator 	bin/SRL/SRL2.bin
let result=$?
if [ $result -eq 3 ]
then 
echo  SRL~test2, PASS, sv16
fi
if [ $result -ne 3 ]
then 
echo  SRL~test2, FAIL, sv16
fi

./bin/mips_simulator 	bin/SRLV/SRLV1.bin
let result=$?
if [ $result -eq 0 ]
then 
echo  SRLV~test1, PASS, sv16
fi
if [ $result -ne 0 ]
then 
echo  SRLV~test1, FAIL, sv16
fi

./bin/mips_simulator 	bin/SRLV/SRLV2.bin
let result=$?
if [ $result -eq 1 ]
then 
echo  SRLV~test2, PASS, sv16
fi
if [ $result -ne 1 ]
then 
echo  SRLV~test2, FAIL, sv16
fi

./bin/mips_simulator 	bin/SUB/SUB1.bin
let result=$?
if [ $result -eq 254 ]
then 
echo  SUB~test1, PASS, sv16
fi
if [ $result -ne 254 ]
then 
echo  SUB~test1, FAIL, sv16
fi

./bin/mips_simulator 	bin/SUB/SUB2.bin
let result=$?
if [ $result -eq 239 ]
then 
echo  SUB~test2, PASS, sv16
fi
if [ $result -ne 239 ]
then 
echo  SUB~test2, FAIL, sv16
fi

./bin/mips_simulator 	bin/SUB/SUB3.bin
let result=$?
if [ $result -eq 246 ]
then 
echo  SUB~test3, PASS, sv16
fi
if [ $result -ne 246 ]
then 
echo  SUB~test3, FAIL, sv16
fi

./bin/mips_simulator 	bin/SUB/SUB4.bin
let result=$?
if [ $result -eq 246 ]
then 
echo  SUB~test4, PASS, sv16
fi
if [ $result -ne 246 ]
then 
echo  SUB~test4, FAIL, sv16
fi

./bin/mips_simulator 	bin/SUBU/SUBU1.bin
let result=$?
if [ $result -eq 254 ]
then 
echo  SUBU~test1, PASS, sv16
fi
if [ $result -ne 254 ]
then 
echo  SUBU~test1, FAIL, sv16
fi

./bin/mips_simulator 	bin/SUBU/SUBU2.bin
let result=$?
if [ $result -eq 128 ]
then 
echo  SUBU~test2, PASS, sv16
fi
if [ $result -ne 128 ]
then 
echo  SUBU~test2, FAIL, sv16
fi

./bin/mips_simulator 	bin/SW/SW1.bin
let result=$?
if [ $result -eq 245 ]
then 
echo  SW~test1, PASS, sv16
fi
if [ $result -ne 245 ]
then 
echo  SW~test1, FAIL, sv16
fi

./bin/mips_simulator 	bin/SW/SW2.bin
let result=$?
if [ $result -eq 245 ]
then 
echo  SW~test2, PASS, sv16
fi
if [ $result -ne 245 ]
then 
echo  SW~test2, FAIL, sv16
fi

./bin/mips_simulator 	bin/SW/SW3.bin
let result=$?
if [ $result -eq 245 ]
then 
echo  SW~test3, PASS, sv16
fi
if [ $result -ne 245 ]
then 
echo  SW~test3, FAIL, sv16
fi

./bin/mips_simulator 	bin/SW/SW4.bin
let result=$?
if [ $result -eq 0 ]
then 
echo  SW~test4, PASS, sv16
fi
if [ $result -ne 0 ]
then 
echo  SW~test4, FAIL, sv16
fi

./bin/mips_simulator 	bin/SW/SW5.bin
let result=$?
if [ $result -eq 0 ]
then 
echo  SW~test5, PASS, sv16
fi
if [ $result -ne 0 ]
then 
echo  SW~test5, FAIL, sv16
fi

./bin/mips_simulator 	bin/SW/SW6.bin
let result=$?
if [ $result -eq 0 ]
then 
echo  SW~test6, PASS, sv16
fi
if [ $result -ne 0 ]
then 
echo  SW~test6, FAIL, sv16
fi

./bin/mips_simulator 	bin/SW/SW7.bin
let result=$?
if [ $result -eq 255 ]
then 
echo  SW~test7, PASS, sv16
fi
if [ $result -ne 255 ]
then 
echo  SW~test7, FAIL, sv16
fi

./bin/mips_simulator 	bin/LW/LW1.bin
let result=$?
if [ $result -eq 245 ]
then 
echo  LW~test1, PASS, sv16
fi
if [ $result -ne 245 ]
then 
echo  LW~test1, FAIL, sv16
fi

./bin/mips_simulator 	bin/LW/LW2.bin
let result=$?
if [ $result -eq 245 ]
then 
echo  LW~test2, PASS, sv16
fi
if [ $result -ne 245 ]
then 
echo  LW~test2, FAIL, sv16
fi

./bin/mips_simulator 	bin/LW/LW3.bin
let result=$?
if [ $result -eq 0 ]
then 
echo  LW~test3, PASS, sv16
fi
if [ $result -ne 0 ]
then 
echo  LW~test3, FAIL, sv16
fi

./bin/mips_simulator 	bin/LW/LW4.bin
let result=$?
if [ $result -eq 0 ]
then 
echo  LW~test4, PASS, sv16
fi
if [ $result -ne 0 ]
then 
echo  LW~test4, FAIL, sv16
fi

./bin/mips_simulator 	bin/LW/LW5.bin
let result=$?
if [ $result -eq 245 ]
then 
echo  LW~test5, PASS, sv16
fi
if [ $result -ne 245 ]
then 
echo  LW~test5, FAIL, sv16
fi

./bin/mips_simulator 	bin/LW/LW6.bin
let result=$?
if [ $result -eq 245 ]
then 
echo  LW~test6, PASS, sv16
fi
if [ $result -ne 245 ]
then 
echo  LW~test6, FAIL, sv16
fi

./bin/mips_simulator 	bin/LW/LW7.bin
let result=$?
if [ $result -eq 0 ]
then 
echo  LW~test7, PASS, sv16
fi
if [ $result -ne 0 ]
then 
echo  LW~test7, FAIL, sv16
fi

./bin/mips_simulator 	bin/LW/LW8.bin
let result=$?
if [ $result -eq 0 ]
then 
echo  LW~test8, PASS, sv16
fi
if [ $result -ne 0 ]
then 
echo  LW~test8, FAIL, sv16
fi

./bin/mips_simulator 	bin/LW/LW9.bin
let result=$?
if [ $result -eq 0 ]
then 
echo  LW~test9, PASS, sv16
fi
if [ $result -ne 0 ]
then 
echo  LW~test9, FAIL, sv16
fi

./bin/mips_simulator 	bin/LW/LW10.bin
let result=$?
if [ $result -eq 255 ]
then 
echo  LW~test10, PASS, sv16
fi
if [ $result -ne 255 ]
then 
echo  LW~test10, FAIL, sv16
fi

./bin/mips_simulator 	bin/LB/LB1.bin
let result=$?
if [ $result -eq 245 ]
then 
echo  LB~test1, PASS, sv16
fi
if [ $result -ne 245 ]
then 
echo  LB~test1, FAIL, sv16
fi

./bin/mips_simulator 	bin/LB/LB2.bin
let result=$?
if [ $result -eq 245 ]
then 
echo  LB~test2, PASS, sv16
fi
if [ $result -ne 245 ]
then 
echo  LB~test2, FAIL, sv16
fi

./bin/mips_simulator 	bin/LB/LB3.bin
let result=$?
if [ $result -eq 0 ]
then 
echo  LB~test3, PASS, sv16
fi
if [ $result -ne 0 ]
then 
echo  LB~test3, FAIL, sv16
fi

./bin/mips_simulator 	bin/LB/LB4.bin
let result=$?
if [ $result -eq 0 ]
then 
echo  LB~test4, PASS, sv16
fi
if [ $result -ne 0 ]
then 
echo  LB~test4, FAIL, sv16
fi

./bin/mips_simulator 	bin/LB/LB5.bin
let result=$?
if [ $result -eq 245 ]
then 
echo  LB~test5, PASS, sv16
fi
if [ $result -ne 245 ]
then 
echo  LB~test5, FAIL, sv16
fi

./bin/mips_simulator 	bin/LB/LB6.bin
let result=$?
if [ $result -eq 245 ]
then 
echo  LB~test6, PASS, sv16
fi
if [ $result -ne 245 ]
then 
echo  LB~test6, FAIL, sv16
fi

./bin/mips_simulator 	bin/LB/LB7.bin
let result=$?
if [ $result -eq 0 ]
then 
echo  LB~test7, PASS, sv16
fi
if [ $result -ne 0 ]
then 
echo  LB~test7, FAIL, sv16
fi

./bin/mips_simulator 	bin/LB/LB8.bin
let result=$?
if [ $result -eq 0 ]
then 
echo  LB~test8, PASS, sv16
fi
if [ $result -ne 0 ]
then 
echo  LB~test8, FAIL, sv16
fi

./bin/mips_simulator 	bin/LB/LB9.bin
let result=$?
if [ $result -eq 0 ]
then 
echo  LB~test9, PASS, sv16
fi
if [ $result -ne 0 ]
then 
echo  LB~test9, FAIL, sv16
fi

./bin/mips_simulator 	bin/LB/LB10.bin
let result=$?
if [ $result -eq 255 ]
then 
echo  LB~test10, PASS, sv16
fi
if [ $result -ne 255 ]
then 
echo  LB~test10, FAIL, sv16
fi

./bin/mips_simulator 	bin/LH/LH1.bin
let result=$?
if [ $result -eq 245 ]
then 
echo  LH~test1, PASS, sv16
fi
if [ $result -ne 245 ]
then 
echo  LH~test1, FAIL, sv16
fi

./bin/mips_simulator 	bin/LH/LH2.bin
let result=$?
if [ $result -eq 245 ]
then 
echo  LH~test2, PASS, sv16
fi
if [ $result -ne 245 ]
then 
echo  LH~test2, FAIL, sv16
fi

./bin/mips_simulator 	bin/LH/LH3.bin
let result=$?
if [ $result -eq 0 ]
then 
echo  LH~test3, PASS, sv16
fi
if [ $result -ne 0 ]
then 
echo  LH~test3, FAIL, sv16
fi

./bin/mips_simulator 	bin/LH/LH4.bin
let result=$?
if [ $result -eq 0 ]
then 
echo  LH~test4, PASS, sv16
fi
if [ $result -ne 0 ]
then 
echo  LH~test4, FAIL, sv16
fi

./bin/mips_simulator 	bin/LH/LH5.bin
let result=$?
if [ $result -eq 245 ]
then 
echo  LH~test5, PASS, sv16
fi
if [ $result -ne 245 ]
then 
echo  LH~test5, FAIL, sv16
fi

./bin/mips_simulator 	bin/LH/LH6.bin
let result=$?
if [ $result -eq 245 ]
then 
echo  LH~test6, PASS, sv16
fi
if [ $result -ne 245 ]
then 
echo  LH~test6, FAIL, sv16
fi

./bin/mips_simulator 	bin/LH/LH7.bin
let result=$?
if [ $result -eq 0 ]
then 
echo  LH~test7, PASS, sv16
fi
if [ $result -ne 0 ]
then 
echo  LH~test7, FAIL, sv16
fi

./bin/mips_simulator 	bin/LH/LH8.bin
let result=$?
if [ $result -eq 0 ]
then 
echo  LH~test8, PASS, sv16
fi
if [ $result -ne 0 ]
then 
echo  LH~test8, FAIL, sv16
fi

./bin/mips_simulator 	bin/LH/LH9.bin
let result=$?
if [ $result -eq 0 ]
then 
echo  LH~test9, PASS, sv16
fi
if [ $result -ne 0 ]
then 
echo  LH~test9, FAIL, sv16
fi

./bin/mips_simulator 	bin/LH/LH10.bin
let result=$?
if [ $result -eq 255 ]
then 
echo  LH~test10, PASS, sv16
fi
if [ $result -ne 255 ]
then 
echo  LH~test10, FAIL, sv16
fi

./bin/mips_simulator 	bin/LHU/LHU1.bin
let result=$?
if [ $result -eq 0 ]
then 
echo  LHU~test1, PASS, sv16
fi
if [ $result -ne 0 ]
then 
echo  LHU~test1, FAIL, sv16
fi

./bin/mips_simulator 	bin/LHU/LHU2.bin
let result=$?
if [ $result -eq 0 ]
then 
echo  LHU~test2, PASS, sv16
fi
if [ $result -ne 0 ]
then 
echo  LHU~test2, FAIL, sv16
fi

./bin/mips_simulator 	bin/LBU/LBU1.bin
let result=$?
if [ $result -eq 0 ]
then 
echo  LBU~test1, PASS, sv16
fi
if [ $result -ne 0 ]
then 
echo  LBU~test1, FAIL, sv16
fi

./bin/mips_simulator 	bin/LBU/LBU2.bin
let result=$?
if [ $result -eq 0 ]
then 
echo  LBU~test2, PASS, sv16
fi
if [ $result -ne 0 ]
then 
echo  LBU~test2, FAIL, sv16
fi

./bin/mips_simulator 	bin/MFHI/MFHI1.bin
let result=$?
if [ $result -eq 0 ]
then 
echo  MFHI~test1, PASS, sv16
fi
if [ $result -ne 0 ]
then 
echo  MFHI~test1, FAIL, sv16
fi

./bin/mips_simulator 	bin/MFHI/MFHI2.bin
let result=$?
if [ $result -eq 255 ]
then 
echo  MFHI~test2, PASS, sv16
fi
if [ $result -ne 255 ]
then 
echo  MFHI~test2, FAIL, sv16
fi

./bin/mips_simulator 	bin/MFLO/MFLO1.bin
let result=$?
if [ $result -eq 0 ]
then 
echo  MFLO~test1, PASS, sv16
fi
if [ $result -ne 0 ]
then 
echo  MFLO~test1, FAIL, sv16
fi

./bin/mips_simulator 	bin/MFLO/MFLO2.bin
let result=$?
if [ $result -eq 255 ]
then 
echo  MFLO~test2, PASS, sv16
fi
if [ $result -ne 255 ]
then 
echo  MFLO~test2, FAIL, sv16
fi

./bin/mips_simulator 	bin/MTHI/MTHI1.bin
let result=$?
if [ $result -eq 0 ]
then 
echo  MTHI~test1, PASS, sv16
fi
if [ $result -ne 0 ]
then 
echo  MTHI~test1, FAIL, sv16
fi

./bin/mips_simulator 	bin/MTHI/MTHI2.bin
let result=$?
if [ $result -eq 255 ]
then 
echo  MTHI~test2, PASS, sv16
fi
if [ $result -ne 255 ]
then 
echo  MTHI~test2, FAIL, sv16
fi

./bin/mips_simulator 	bin/MTLO/MTLO1.bin
let result=$?
if [ $result -eq 0 ]
then 
echo  MTLO~test1, PASS, sv16
fi
if [ $result -ne 0 ]
then 
echo  MTLO~test1, FAIL, sv16
fi

./bin/mips_simulator 	bin/MTLO/MTLO2.bin
let result=$?
if [ $result -eq 255 ]
then 
echo  MTLO~test2, PASS, sv16
fi
if [ $result -ne 255 ]
then 
echo  MTLO~test2, FAIL, sv16
fi

./bin/mips_simulator 	bin/JALR/JALR1.bin
let result=$?
if [ $result -eq 255 ]
then 
echo  JALR~test1, PASS, sv16
fi
if [ $result -ne 255 ]
then 
echo  JALR~test1, FAIL, sv16
fi

./bin/mips_simulator 	bin/JALR/JALR2.bin
let result=$?
if [ $result -eq 245 ]
then 
echo  JALR~test2, PASS, sv16
fi
if [ $result -ne 245 ]
then 
echo  JALR~test2, FAIL, sv16
fi

./bin/mips_simulator 	bin/JALR/JALR3.bin
let result=$?
if [ $result -eq 255 ]
then 
echo  JALR~test3, PASS, sv16
fi
if [ $result -ne 255 ]
then 
echo  JALR~test3, FAIL, sv16
fi

./bin/mips_simulator 	bin/JAL/JAL1.bin
let result=$?
if [ $result -eq 255 ]
then 
echo  JAL~test1, PASS, sv16
fi
if [ $result -ne 255 ]
then 
echo  JAL~test1, FAIL, sv16
fi

./bin/mips_simulator 	bin/J/J1.bin
let result=$?
if [ $result -eq 255 ]
then 
echo  J~test1, PASS, sv16
fi
if [ $result -ne 255 ]
then 
echo  J~test1, FAIL, sv16
fi

./bin/mips_simulator 	bin/MULT/MULT1.bin
let result=$?
if [ $result -eq 4 ]
then 
echo  MULT~test1, PASS, sv16
fi
if [ $result -ne 4 ]
then 
echo  MULT~test1, FAIL, sv16
fi

./bin/mips_simulator 	bin/MULT/MULT2.bin
let result=$?
if [ $result -eq 2 ]
then 
echo  MULT~test2, PASS, sv16
fi
if [ $result -ne 2 ]
then 
echo  MULT~test2, FAIL, sv16
fi

./bin/mips_simulator 	bin/MULT/MULT3.bin
let result=$?
if [ $result -eq 255 ]
then 
echo  MULT~test3, PASS, sv16
fi
if [ $result -ne 255 ]
then 
echo  MULT~test3, FAIL, sv16
fi

./bin/mips_simulator 	bin/MULTU/MULTU1.bin
let result=$?
if [ $result -eq 4 ]
then 
echo  MULTU~test1, PASS, sv16
fi
if [ $result -ne 4 ]
then 
echo  MULTU~test1, FAIL, sv16
fi

./bin/mips_simulator 	bin/MULTU/MULTU2.bin
let result=$?
if [ $result -eq 4 ]
then 
echo  MULTU~test2, PASS, sv16
fi
if [ $result -ne 4 ]
then 
echo  MULTU~test2, FAIL, sv16
fi

./bin/mips_simulator 	bin/MULTU/MULTU3.bin
let result=$?
if [ $result -eq 1 ]
then 
echo  MULTU~test3, PASS, sv16
fi
if [ $result -ne 1 ]
then 
echo  MULTU~test3, FAIL, sv16
fi

./bin/mips_simulator 	bin/DIVU/DIVU1.bin
let result=$?
if [ $result -eq 3 ]
then 
echo  DIVU~test1, PASS, sv16
fi
if [ $result -ne 3 ]
then 
echo  DIVU~test1, FAIL, sv16
fi

./bin/mips_simulator 	bin/DIVU/DIVU2.bin
let result=$?
if [ $result -eq 1 ]
then 
echo  DIVU~test2, PASS, sv16
fi
if [ $result -ne 1 ]
then 
echo  DIVU~test2, FAIL, sv16
fi

./bin/mips_simulator 	bin/DIVU/DIVU3.bin
let result=$?
if [ $result -eq 82 ]
then 
echo  DIVU~test3, PASS, sv16
fi
if [ $result -ne 82 ]
then 
echo  DIVU~test3, FAIL, sv16
fi

./bin/mips_simulator 	bin/DIVU/DIVU4.bin
let result=$?
if [ $result -eq 0 ]
then 
echo  DIVU~test4, PASS, sv16
fi
if [ $result -ne 0 ]
then 
echo  DIVU~test4, FAIL, sv16
fi

./bin/mips_simulator 	bin/DIVU/DIVU5.bin
let result=$?
if [ $result -eq 255 ]
then 
echo  DIVU~test5, PASS, sv16
fi
if [ $result -ne 255 ]
then 
echo  DIVU~test5, FAIL, sv16
fi

./bin/mips_simulator 	bin/DIVU/DIVU6.bin
let result=$?
if [ $result -eq 255 ]
then 
echo  DIVU~test6, PASS, sv16
fi
if [ $result -ne 255 ]
then 
echo  DIVU~test6, FAIL, sv16
fi

./bin/mips_simulator 	bin/DIVU/DIVU7.bin
let result=$?
if [ $result -eq 0 ]
then 
echo  DIVU~test7, PASS, sv16
fi
if [ $result -ne 0 ]
then 
echo  DIVU~test7, FAIL, sv16
fi

./bin/mips_simulator 	bin/DIVU/DIVU8.bin
let result=$?
if [ $result -eq 0 ]
then 
echo  DIVU~test8, PASS, sv16
fi
if [ $result -ne 0 ]
then 
echo  DIVU~test8, FAIL, sv16
fi

./bin/mips_simulator 	bin/DIV/DIV1.bin
let result=$?
if [ $result -eq 3 ]
then 
echo  DIV~test1, PASS, sv16
fi
if [ $result -ne 3 ]
then 
echo  DIV~test1, FAIL, sv16
fi

./bin/mips_simulator 	bin/DIV/DIV2.bin
let result=$?
if [ $result -eq 1 ]
then 
echo  DIV~test2, PASS, sv16
fi
if [ $result -ne 1 ]
then 
echo  DIV~test2, FAIL, sv16
fi

./bin/mips_simulator 	bin/DIV/DIV3.bin
let result=$?
if [ $result -eq 253 ]
then 
echo  DIV~test3, PASS, sv16
fi
if [ $result -ne 253 ]
then 
echo  DIV~test3, FAIL, sv16
fi

./bin/mips_simulator 	bin/DIV/DIV4.bin
let result=$?
if [ $result -eq 255 ]
then 
echo  DIV~test4, PASS, sv16
fi
if [ $result -ne 255 ]
then 
echo  DIV~test4, FAIL, sv16
fi

./bin/mips_simulator 	bin/DIV/DIV5.bin
let result=$?
if [ $result -eq 255 ]
then 
echo  DIV~test5, PASS, sv16
fi
if [ $result -ne 255 ]
then 
echo  DIV~test5, FAIL, sv16
fi

./bin/mips_simulator 	bin/DIV/DIV6.bin
let result=$?
if [ $result -eq 0 ]
then 
echo  DIV~test6, PASS, sv16
fi
if [ $result -ne 0 ]
then 
echo  DIV~test6, FAIL, sv16
fi

./bin/mips_simulator 	bin/DIV/DIV7.bin
let result=$?
if [ $result -eq 0 ]
then 
echo  DIV~test7, PASS, sv16
fi
if [ $result -ne 0 ]
then 
echo  DIV~test7, FAIL, sv16
fi

./bin/mips_simulator 	bin/DIV/DIV8.bin
let result=$?
if [ $result -eq 0 ]
then 
echo  DIV~test8, PASS, sv16
fi
if [ $result -ne 0 ]
then 
echo  DIV~test8, FAIL, sv16
fi

./bin/mips_simulator 	bin/BNE/BNE1.bin
let result=$?
if [ $result -eq 244 ]
then 
echo  BNE~test1, PASS, sv16
fi
if [ $result -ne 244 ]
then 
echo  BNE~test1, FAIL, sv16
fi

./bin/mips_simulator 	bin/BNE/BNE2.bin
let result=$?
if [ $result -eq 244 ]
then 
echo  BNE~test2, PASS, sv16
fi
if [ $result -ne 244 ]
then 
echo  BNE~test2, FAIL, sv16
fi

./bin/mips_simulator 	bin/BNE/BNE3.bin
let result=$?
if [ $result -eq 244 ]
then 
echo  BNE~test3, PASS, sv16
fi
if [ $result -ne 244 ]
then 
echo  BNE~test3, FAIL, sv16
fi

./bin/mips_simulator 	bin/BLEZ/BLEZ1.bin
let result=$?
if [ $result -eq 5 ]
then 
echo  BLEZ~test1, PASS, sv16
fi
if [ $result -ne 5 ]
then 
echo  BLEZ~test1, FAIL, sv16
fi

./bin/mips_simulator 	bin/BLEZ/BLEZ2.bin
let result=$?
if [ $result -eq 245 ]
then 
echo  BLEZ~test2, PASS, sv16
fi
if [ $result -ne 245 ]
then 
echo  BLEZ~test2, FAIL, sv16
fi

./bin/mips_simulator 	bin/BLEZ/BLEZ3.bin
let result=$?
if [ $result -eq 6 ]
then 
echo  BLEZ~test3, PASS, sv16
fi
if [ $result -ne 6 ]
then 
echo  BLEZ~test3, FAIL, sv16
fi

./bin/mips_simulator 	bin/BGEZ/BGEZ1.bin
let result=$?
if [ $result -eq 245 ]
then 
echo  BGEZ~test1, PASS, sv16
fi
if [ $result -ne 245 ]
then 
echo  BGEZ~test1, FAIL, sv16
fi

./bin/mips_simulator 	bin/BGEZ/BGEZ2.bin
let result=$?
if [ $result -eq 245 ]
then 
echo  BGEZ~test2, PASS, sv16
fi
if [ $result -ne 245 ]
then 
echo  BGEZ~test2, FAIL, sv16
fi

./bin/mips_simulator 	bin/BGEZ/BGEZ3.bin
let result=$?
if [ $result -eq 245 ]
then 
echo  BGEZ~test3, PASS, sv16
fi
if [ $result -ne 245 ]
then 
echo  BGEZ~test3, FAIL, sv16
fi

./bin/mips_simulator 	bin/BGTZ/BGTZ1.bin
let result=$?
if [ $result -eq 245 ]
then 
echo  BGTZ~test1, PASS, sv16
fi
if [ $result -ne 245 ]
then 
echo  BGTZ~test1, FAIL, sv16
fi

./bin/mips_simulator 	bin/BGTZ/BGTZ2.bin
let result=$?
if [ $result -eq 5 ]
then 
echo  BGTZ~test2, PASS, sv16
fi
if [ $result -ne 5 ]
then 
echo  BGTZ~test2, FAIL, sv16
fi

./bin/mips_simulator 	bin/BGTZ/BGTZ3.bin
let result=$?
if [ $result -eq 245 ]
then 
echo  BGTZ~test3, PASS, sv16
fi
if [ $result -ne 245 ]
then 
echo  BGTZ~test3, FAIL, sv16
fi

./bin/mips_simulator 	bin/ALLADD/ALLADD1.bin
let result=$?
if [ $result -eq 245 ]
then 
echo  ALLADD~test1, PASS, sv16
fi
if [ $result -ne 245 ]
then 
echo  ALLADD~test1, FAIL, sv16
fi

./bin/mips_simulator 	bin/ALLADD/ALLADD2.bin
let result=$?
if [ $result -eq 245 ]
then 
echo  ALLADD~test2, PASS, sv16
fi
if [ $result -ne 245 ]
then 
echo  ALLADD~test2, FAIL, sv16
fi

./bin/mips_simulator 	bin/ALLADD/ALLADD3.bin
let result=$?
if [ $result -eq 245 ]
then 
echo  ALLADD~test3, PASS, sv16
fi
if [ $result -ne 245 ]
then 
echo  ALLADD~test3, FAIL, sv16
fi

./bin/mips_simulator 	bin/ALLADD/ALLADD4.bin
let result=$?
if [ $result -eq 245 ]
then 
echo  ALLADD~test4, PASS, sv16
fi
if [ $result -ne 245 ]
then 
echo  ALLADD~test4, FAIL, sv16
fi

./bin/mips_simulator 	bin/ALLADD/ALLADD5.bin
let result=$?
if [ $result -eq 245 ]
then 
echo  ALLADD~test5, PASS, sv16
fi
if [ $result -ne 245 ]
then 
echo  ALLADD~test5, FAIL, sv16
fi

./bin/mips_simulator 	bin/ALLADD/ALLADD6.bin
let result=$?
if [ $result -eq 245 ]
then 
echo  ALLADD~test6, PASS, sv16
fi
if [ $result -ne 245 ]
then 
echo  ALLADD~test6, FAIL, sv16
fi

./bin/mips_simulator 	bin/ALLADD/ALLADD7.bin
let result=$?
if [ $result -eq 245 ]
then 
echo  ALLADD~test7, PASS, sv16
fi
if [ $result -ne 245 ]
then 
echo  ALLADD~test7, FAIL, sv16
fi

./bin/mips_simulator 	bin/ALLADD/ALLADD8.bin
let result=$?
if [ $result -eq 245 ]
then 
echo  ALLADD~test8, PASS, sv16
fi
if [ $result -ne 245 ]
then 
echo  ALLADD~test8, FAIL, sv16
fi

./bin/mips_simulator 	bin/ALLADD/ALLADD9.bin
let result=$?
if [ $result -eq 245 ]
then 
echo  ALLADD~test9, PASS, sv16
fi
if [ $result -ne 245 ]
then 
echo  ALLADD~test9, FAIL, sv16
fi

./bin/mips_simulator 	bin/ALLADD/ALLADD10.bin
let result=$?
if [ $result -eq 245 ]
then 
echo  ALLADD~test10, PASS, sv16
fi
if [ $result -ne 245 ]
then 
echo  ALLADD~test10, FAIL, sv16
fi

./bin/mips_simulator 	bin/ALLADD/ALLADD11.bin
let result=$?
if [ $result -eq 245 ]
then 
echo  ALLADD~test11, PASS, sv16
fi
if [ $result -ne 245 ]
then 
echo  ALLADD~test11, FAIL, sv16
fi

./bin/mips_simulator 	bin/ALLADD/ALLADD12.bin
let result=$?
if [ $result -eq 245 ]
then 
echo  ALLADD~test12, PASS, sv16
fi
if [ $result -ne 245 ]
then 
echo  ALLADD~test12, FAIL, sv16
fi

./bin/mips_simulator 	bin/ALLADD/ALLADD13.bin
let result=$?
if [ $result -eq 245 ]
then 
echo  ALLADD~test13, PASS, sv16
fi
if [ $result -ne 245 ]
then 
echo  ALLADD~test13, FAIL, sv16
fi

./bin/mips_simulator 	bin/ALLADD/ALLADD14.bin
let result=$?
if [ $result -eq 245 ]
then 
echo  ALLADD~test14, PASS, sv16
fi
if [ $result -ne 245 ]
then 
echo  ALLADD~test14, FAIL, sv16
fi

./bin/mips_simulator 	bin/ALLADD/ALLADD15.bin
let result=$?
if [ $result -eq 245 ]
then 
echo  ALLADD~test15, PASS, sv16
fi
if [ $result -ne 245 ]
then 
echo  ALLADD~test15, FAIL, sv16
fi

./bin/mips_simulator 	bin/ALLADD/ALLADD16.bin
let result=$?
if [ $result -eq 245 ]
then 
echo  ALLADD~test16, PASS, sv16
fi
if [ $result -ne 245 ]
then 
echo  ALLADD~test16, FAIL, sv16
fi

./bin/mips_simulator 	bin/LWL/LWL1.bin
let result=$?
if [ $result -eq 240 ]
then 
echo  LWL~test1, PASS, sv16
fi
if [ $result -ne 240 ]
then 
echo  LWL~test1, FAIL, sv16
fi

./bin/mips_simulator 	bin/LWL/LWL2.bin
let result=$?
if [ $result -eq 240 ]
then 
echo  LWL~test2, PASS, sv16
fi
if [ $result -ne 240 ]
then 
echo  LWL~test2, FAIL, sv16
fi

./bin/mips_simulator 	bin/LWL/LWL3.bin
let result=$?
if [ $result -eq 255 ]
then 
echo  LWL~test3, PASS, sv16
fi
if [ $result -ne 255 ]
then 
echo  LWL~test3, FAIL, sv16
fi

./bin/mips_simulator 	bin/LWL/LWL4.bin
let result=$?
if [ $result -eq 240 ]
then 
echo  LWL~test4, PASS, sv16
fi
if [ $result -ne 240 ]
then 
echo  LWL~test4, FAIL, sv16
fi

./bin/mips_simulator bin/LWR/LWR1.bin
let result=$?
if [ $result -eq 240 ]
then 
echo  LWR~test1, PASS, sv16
fi
if [ $result -ne 240 ]
then 
echo  LWR~test1, FAIL, sv16
fi

./bin/mips_simulator bin/LWR/LWR2.bin
let result=$?
if [ $result -eq 240 ]
then 
echo  LWR~test2, PASS, sv16
fi
if [ $result -ne 240 ]
then 
echo  LWR~test2, FAIL, sv16
fi

./bin/mips_simulator bin/LWR/LWR3.bin
let result=$?
if [ $result -eq 255 ]
then 
echo  LWR~test3, PASS, sv16
fi
if [ $result -ne 255 ]
then 
echo  LWR~test3, FAIL, sv16
fi

./bin/mips_simulator bin/TESTZERO/TESTZERO1.bin
let result=$?
if [ $result -eq 0 ]
then 
echo  TESTZERO~test1, PASS, sv16
fi
if [ $result -ne 0 ]
then 
echo  TESTZERO~test1, FAIL, sv16
fi

./bin/mips_simulator bin/TESTZERO/TESTZERO2.bin
let result=$?
if [ $result -eq 0 ]
then 
echo  TESTZERO~test2, PASS, sv16
fi
if [ $result -ne 0 ]
then 
echo  TESTZERO~test2, FAIL, sv16
fi

./bin/mips_simulator bin/TESTZERO/TESTZERO3.bin
let result=$?
if [ $result -eq 0 ]
then 
echo  TESTZERO~test3, PASS, sv16
fi
if [ $result -ne 0 ]
then 
echo  TESTZERO~test3, FAIL, sv16
fi
