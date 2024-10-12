# CPSC240-Assignment5
## array loop to find even number

unsigned short array[7] = {12, 1003, 6543, 24680, 789, 30123, 32766};	// use dw for 16-bit array 

unsigned short even[7]; 	// use dw to declare 16-bit variable 

register long rsi = 0, rdi = 0; 	// no need to declare register rsi and rdi 

do { 

if(array[rsi] % 2 == 0) { 

even[rdi] = array[rsi]; 

rdi++; 

} 

rsi++; 

} while(rsi < 7); 
