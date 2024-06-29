.data

nameandid:.asciiz "Jay Pornpitaksuk ID: 24187441\n"
fibmsg1:.asciiz "The Fibonacci Number F("
fibmsg2:.asciiz ") is "
newline:.asciiz "\n"
overflow_msg:.asciiz "Overflow at " 
FBN:.space 400 # 400 bytes (1 int = 4 bytes)
    .align 2
NUM_FBN:.space 4
	.align 2

 
.text
main:
##### Task 2: Fibonacci Number and Array
### Below follows the pseudocode written from the lab assignment
# Memory:
# $s0 = FBN Array
# $s1 = NUM_FBN (Overflow Num)
# Registers:
# t0 = N-2
# t1 = N-1
# t2 = N
# t3 = Current index
# t4 = base address of array
# t5 = offset amount
# t6 = temp curr address (so far)

# BELOW is initialization for before our overflow loop where we try to discover the overflow fib number
# Note that since in the pseudocode, the array starts from 0, unlike in the task 1, we will be starting index at 0. 
# So if we initialize at index 0 and 1, the curr number is 1. This is because the number N, when calculated, is not
# guaranteed, so we will record the curr number as N-1, due to potential overflow, to the NUM_FBN address.
la $s0, FBN # address of FBN array
la $s1, NUM_FBN # address of NUM_FBN
li $t0, 0 
sw $t0, 0($s0) # stores VALUE 0 to the first index of FBN
li $t1, 1
sw $t1, 4($s0) # stores VALUE 1 to the second index of FBN
li $t3, 1 # current index
addu $t4, $s0, $zero # store the base address of our FBN array into $t4 for navigation

# my name printed out:
li $v0, 4 # syscall for strings
la $a0, nameandid 
syscall

overflowloop:
	sll $t5, $t3, 2 # one shift = multiply by 2, so we need two shifts for 4, to offset by 4
	# note, starting initialization 001 becomes 100, which is 4. $t5 will solely be used to 
	# load the fib number that we found as the overflow value
	lw $t0, 0($t4) # make sure to load our base value n-2 
	lw $t1, 4($t4) # make sure to load 2nd from base value n-1 in sequence
	addu $t2, $t0, $t1 # CURRENT value (n-2) + (n-1)
	sw $t2, 8($t4) # save value to current part of the sequence/array
	sw $t3, ($s1) # save index of our current fib number
	addiu $t4, $t4, 4 # move up our base address by 4 
	addu $t6, $t5, $s0
	lw $a2, ($t6)
	lw $a1, ($s1) # report current index (so far)
	jal print
	blt $t2, $zero, overflow # check if curr fib number overflows
	# otherwise:
	addiu $t3, $t3, 1
	bne $t3, 100, overflowloop

overflow:
	li $v0, 4
	la $a0, overflow_msg # print that overflow is reached
	syscall
	# use this to mark that we've reached desired overflow
	# report the highest number we reached when we hit overflow:
	lw $a0, ($s1)
	li $v0, 1 # print the highest index value we reached
	syscall
	li $v0, 4
	la $a0, newline # create new line after each printing statement
	syscall
	j Done

	
print:
	li $v0, 4 
	la $a0, fibmsg1 # sys call (4) for first part of the string
	syscall
	li $v0, 1 # syscall for integers = 1
	addu $a0, $zero, $a1 # previously stored highest index
	syscall
	li $v0, 4
	la $a0, fibmsg2 # sys call for second part of the string
	syscall
	li $v0, 1
	addu $a0, $zero, $a2 # previously stored highest fib number 
	syscall
	li $v0, 4
	la $a0, newline # create new line after each printing statement
	syscall
	jr $ra
	
Done:
	li $v0, 10
	syscall # syscall 10 is used to exit

