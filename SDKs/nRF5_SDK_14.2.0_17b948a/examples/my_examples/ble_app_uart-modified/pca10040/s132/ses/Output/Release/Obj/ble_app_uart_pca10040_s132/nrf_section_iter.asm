	.cpu cortex-m4
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 4
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"nrf_section_iter.c"
	.text
	.section	.text.nrf_section_iter_init,"ax",%progbits
	.align	1
	.global	nrf_section_iter_init
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nrf_section_iter_init, %function
nrf_section_iter_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r1]
	ldr	r2, [r1, #4]
	str	r3, [r0, #4]
	cmp	r3, r2
	it	eq
	moveq	r3, #0
	str	r1, [r0]
	it	eq
	streq	r3, [r0, #4]
	bx	lr
	.size	nrf_section_iter_init, .-nrf_section_iter_init
	.section	.text.nrf_section_iter_next,"ax",%progbits
	.align	1
	.global	nrf_section_iter_next
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nrf_section_iter_next, %function
nrf_section_iter_next:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #4]
	cbz	r3, .L3
	ldr	r2, [r0]
	ldr	r1, [r2, #8]
	ldr	r2, [r2, #4]
	add	r3, r3, r1
	cmp	r3, r2
	str	r3, [r0, #4]
	itt	eq
	moveq	r3, #0
	streq	r3, [r0, #4]
.L3:
	bx	lr
	.size	nrf_section_iter_next, .-nrf_section_iter_next
	.ident	"GCC: (GNU) 10.2.1 20201103 (release)"
