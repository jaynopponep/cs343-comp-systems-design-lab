.data

nameandid:.asciiz "Jay Pornpitaksuk ID: 24187441\n"
fibmsg1:.asciiz "The Fibonacci Number F("
fibmsg2:.asciiz ") is "
newline:.asciiz "\n"
 
.text
main:
##### Task 1: Fibonacci Numbers
### With the ASM code below, I manipulate the register values and treat them as 
### the X and Y values that are mentioned on the Task 1 of the lab pdf
### This is close to an array, but not exactly the same as Task 2
li $t4, 0 # counter initialization
li $t0, 0 # index1
li $t1, 0 # value1
li $t2, 1 # index2
li $t3, 1 # value2
li $t5, 1 # fib value, required because of overwriting $t1 value
# I initialize my two starting fibonacci values above, and then my while loop 
# built below should be able to give the fibonacci numbers from 1-10
li $v0, 4 # syscall for strings
la $a0, nameandid
syscall
j print # immediately print out the initialized values we started with above

fib:	
	addu $t0, $t0, 1 # increment index #1 by 1
	addu $t2, $t2, 1 # increment index #2 by 1
	addu $t1, $zero, $t3 # overwrite (n-2) with (n-1)
	addu $t3, $zero, $t5 # overwrite (n-1) with n
	addu $t5, $t1, $t3 # set n = (n-2) + (n-1)
	addu $t4, $t4, 1 # increment (++)
	beq $t4, 10, Done # if counter == 10, then this fib subroutine is done.
	j print
print:
	li $v0, 4 
	la $a0, fibmsg1 # sys call (4) for first part of the string
	syscall
	li $v0, 1 # syscall for integers = 1
	addu $a0, $zero, $t2 # using value2's index2, which is the same as the fib value
	syscall
	li $v0, 4
	la $a0, fibmsg2 # sys call for second part of the string
	syscall
	li $v0, 1
	addu $a0, $zero, $t3 # actual fibonacci number
	syscall
	li $v0, 4
	la $a0, newline # create new line after each printing statement
	syscall
	# above becomes each line printed out onto I/O
	j fib # after initialization step, it goes back to fib subroutine, then comes back here again.
	# this loop stops once the counter has reached 10 and no more printing is done.
	
Done:
	li $v0, 10
	syscall # syscall 10 is used to exit
