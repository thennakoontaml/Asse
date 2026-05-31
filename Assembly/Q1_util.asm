#exit_program

exit_pro:
   li $v0,10
   syscall 
   jr $ra
   
#print_string

print_str:
    li $v0,4
    syscall
    jr $ra
    
#prompt integer /read integer

read_int:
   li $v0,5
   syscall 
   jr $ra
   
#prit int
print_int:
   li $v0,1
   syscall
   jr $ra
   
#print tab

 print_tab:
    li $v0,11
    li $a0,9
    syscall 
    jr $ra   

