.data 
 
  msg1: .asciiz "enter the positive number " 
  even_msg: .asciiz " is even number "
  odd_msg: .asciiz  "  is odd number"
  
  .text
  .globl main
  
  main:
  
  #print msg
  la $a0,msg1
  jal print_str
  
  #read int
  jal read_int
  move $t0,$v0
  
  #check even or odd
  
  andi $t1,$t0,1
  beq  $t1,$zero,is_even
  
  #if odd
  move $a0,$t0
  jal print_int
  la $a0,odd_msg
  jal print_str
  j finish
  
  #is_enve
  is_even:
   move $a0,$t0
   jal print_int
   la $a0,even_msg
   jal print_str
   
   #end
   finish:
   jal exit_pro
 
  .include  "Q1_util.asm"
  
  
  
