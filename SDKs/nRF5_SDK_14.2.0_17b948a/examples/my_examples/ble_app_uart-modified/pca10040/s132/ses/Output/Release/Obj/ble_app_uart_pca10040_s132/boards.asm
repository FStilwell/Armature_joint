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
	.file	"boards.c"
	.text
	.section	.text.bsp_board_led_state_get,"ax",%progbits
	.align	1
	.global	bsp_board_led_state_get
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	bsp_board_led_state_get, %function
bsp_board_led_state_get:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L2
	mov	r3, #1342177280
	ldrb	r0, [r2, r0]	@ zero_extendqisi2
	ldr	r3, [r3, #1284]
	lsr	r0, r3, r0
	mvns	r0, r0
	and	r0, r0, #1
	bx	lr
.L3:
	.align	2
.L2:
	.word	.LANCHOR0
	.size	bsp_board_led_state_get, .-bsp_board_led_state_get
	.section	.text.bsp_board_led_on,"ax",%progbits
	.align	1
	.global	bsp_board_led_on
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	bsp_board_led_on, %function
bsp_board_led_on:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L5
	ldrb	r2, [r3, r0]	@ zero_extendqisi2
	movs	r3, #1
	lsls	r3, r3, r2
	mov	r2, #1342177280
	str	r3, [r2, #1292]
	bx	lr
.L6:
	.align	2
.L5:
	.word	.LANCHOR0
	.size	bsp_board_led_on, .-bsp_board_led_on
	.section	.text.bsp_board_led_off,"ax",%progbits
	.align	1
	.global	bsp_board_led_off
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	bsp_board_led_off, %function
bsp_board_led_off:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L8
	ldrb	r2, [r3, r0]	@ zero_extendqisi2
	movs	r3, #1
	lsls	r3, r3, r2
	mov	r2, #1342177280
	str	r3, [r2, #1288]
	bx	lr
.L9:
	.align	2
.L8:
	.word	.LANCHOR0
	.size	bsp_board_led_off, .-bsp_board_led_off
	.section	.text.bsp_board_leds_off,"ax",%progbits
	.align	1
	.global	bsp_board_leds_off
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	bsp_board_leds_off, %function
bsp_board_leds_off:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	movs	r0, #0
	bl	bsp_board_led_off
	movs	r0, #1
	bl	bsp_board_led_off
	pop	{r3, lr}
	movs	r0, #2
	b	bsp_board_led_off
	.size	bsp_board_leds_off, .-bsp_board_leds_off
	.section	.text.bsp_board_leds_on,"ax",%progbits
	.align	1
	.global	bsp_board_leds_on
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	bsp_board_leds_on, %function
bsp_board_leds_on:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	movs	r0, #0
	bl	bsp_board_led_on
	movs	r0, #1
	bl	bsp_board_led_on
	pop	{r3, lr}
	movs	r0, #2
	b	bsp_board_led_on
	.size	bsp_board_leds_on, .-bsp_board_leds_on
	.section	.text.bsp_board_led_invert,"ax",%progbits
	.align	1
	.global	bsp_board_led_invert
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	bsp_board_led_invert, %function
bsp_board_led_invert:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L13
	mov	r1, #1342177280
	ldrb	r0, [r2, r0]	@ zero_extendqisi2
	ldr	r3, [r1, #1284]
	movs	r2, #1
	lsls	r2, r2, r0
	bic	r0, r2, r3
	ands	r3, r3, r2
	str	r0, [r1, #1288]
	str	r3, [r1, #1292]
	bx	lr
.L14:
	.align	2
.L13:
	.word	.LANCHOR0
	.size	bsp_board_led_invert, .-bsp_board_led_invert
	.section	.text.bsp_board_leds_init,"ax",%progbits
	.align	1
	.global	bsp_board_leds_init
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	bsp_board_leds_init, %function
bsp_board_leds_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #1342177280
	movs	r2, #3
	str	r2, [r3, #1904]
	str	r2, [r3, #1892]
	str	r2, [r3, #1904]
	b	bsp_board_leds_off
	.size	bsp_board_leds_init, .-bsp_board_leds_init
	.section	.text.bsp_board_led_idx_to_pin,"ax",%progbits
	.align	1
	.global	bsp_board_led_idx_to_pin
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	bsp_board_led_idx_to_pin, %function
bsp_board_led_idx_to_pin:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L17
	ldrb	r0, [r3, r0]	@ zero_extendqisi2
	bx	lr
.L18:
	.align	2
.L17:
	.word	.LANCHOR0
	.size	bsp_board_led_idx_to_pin, .-bsp_board_led_idx_to_pin
	.section	.text.bsp_board_pin_to_led_idx,"ax",%progbits
	.align	1
	.global	bsp_board_pin_to_led_idx
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	bsp_board_pin_to_led_idx, %function
bsp_board_pin_to_led_idx:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #28
	beq	.L21
	cmp	r0, #25
	ite	eq
	moveq	r0, #1
	movne	r0, #-1
	bx	lr
.L21:
	movs	r0, #0
	bx	lr
	.size	bsp_board_pin_to_led_idx, .-bsp_board_pin_to_led_idx
	.section	.rodata.m_board_led_list,"a"
	.set	.LANCHOR0,. + 0
	.type	m_board_led_list, %object
	.size	m_board_led_list, 3
m_board_led_list:
	.ascii	"\034\031\034"
	.ident	"GCC: (GNU) 10.2.1 20201103 (release)"
