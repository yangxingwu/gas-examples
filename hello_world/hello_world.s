	.section .data
msg: .asciz "hello world\n"

	.section .text
	.globl _start
_start:
	# call size_t sys_write(unsigned int fd, const char * buf, size_t count);
	# syscall number 1
	mov $1, %rax
	mov $1, %rdi
	mov $msg, %rsi
	mov $13, %rdx
	syscall
	
	# call exit
	# syscall number 60
	mov $60, %rax
	mov $0, %rdi
	syscall
