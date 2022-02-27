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
	.file	"sdk_mapped_flags.c"
	.text
	.section	.text.sdk_mapped_flags_first_key_index_get,"ax",%progbits
	.align	1
	.global	sdk_mapped_flags_first_key_index_get
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	sdk_mapped_flags_first_key_index_get, %function
sdk_mapped_flags_first_key_index_get:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r2, r0
	movs	r3, #0
	movs	r1, #1
.L3:
	lsl	r4, r1, r3
	tst	r4, r2
	uxth	r0, r3
	bne	.L2
	adds	r3, r3, #1
	cmp	r3, #32
	bne	.L3
	movw	r0, #65535
.L2:
	pop	{r4, pc}
	.size	sdk_mapped_flags_first_key_index_get, .-sdk_mapped_flags_first_key_index_get
	.section	.text.sdk_mapped_flags_bulk_update_by_key,"ax",%progbits
	.align	1
	.global	sdk_mapped_flags_bulk_update_by_key
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	sdk_mapped_flags_bulk_update_by_key, %function
sdk_mapped_flags_bulk_update_by_key:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldrb	r5, [sp, #16]	@ zero_extendqisi2
	cbz	r0, .L5
	cbz	r1, .L5
	cbz	r2, .L5
	movs	r4, #0
.L12:
	ldrh	r6, [r0, r4, lsl #1]
	cmp	r6, r3
	bne	.L8
	movs	r3, #1
	lsl	r4, r3, r4
	mvns	r0, r4
	add	r2, r1, r2, lsl #2
.L11:
	ldr	r3, [r1], #4
	cbz	r5, .L9
	orrs	r3, r3, r4
.L21:
	cmp	r2, r1
	str	r3, [r1, #-4]
	bne	.L11
.L5:
	pop	{r4, r5, r6, pc}
.L9:
	ands	r3, r3, r0
	b	.L21
.L8:
	adds	r4, r4, #1
	cmp	r4, #32
	bne	.L12
	b	.L5
	.size	sdk_mapped_flags_bulk_update_by_key, .-sdk_mapped_flags_bulk_update_by_key
	.section	.text.sdk_mapped_flags_update_by_key,"ax",%progbits
	.align	1
	.global	sdk_mapped_flags_update_by_key
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	sdk_mapped_flags_update_by_key, %function
sdk_mapped_flags_update_by_key:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, lr}
	str	r3, [sp]
	mov	r3, r2
	movs	r2, #1
	bl	sdk_mapped_flags_bulk_update_by_key
	add	sp, sp, #12
	@ sp needed
	ldr	pc, [sp], #4
	.size	sdk_mapped_flags_update_by_key, .-sdk_mapped_flags_update_by_key
	.section	.text.sdk_mapped_flags_get_by_key_w_idx,"ax",%progbits
	.align	1
	.global	sdk_mapped_flags_get_by_key_w_idx
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	sdk_mapped_flags_get_by_key_w_idx, %function
sdk_mapped_flags_get_by_key_w_idx:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	cbz	r0, .L24
	movs	r4, #0
.L28:
	ldrh	r5, [r0, r4, lsl #1]
	cmp	r5, r2
	bne	.L25
	cbz	r3, .L26
	strb	r4, [r3]
.L26:
	movs	r3, #1
	lsl	r4, r3, r4
	tst	r4, r1
	ite	ne
	movne	r0, r3
	moveq	r0, #0
.L27:
	pop	{r4, r5, pc}
.L25:
	adds	r4, r4, #1
	cmp	r4, #32
	bne	.L28
.L24:
	cbz	r3, .L29
	movs	r2, #32
	strb	r2, [r3]
	movs	r0, #0
	b	.L27
.L29:
	mov	r0, r3
	b	.L27
	.size	sdk_mapped_flags_get_by_key_w_idx, .-sdk_mapped_flags_get_by_key_w_idx
	.section	.text.sdk_mapped_flags_get_by_key,"ax",%progbits
	.align	1
	.global	sdk_mapped_flags_get_by_key
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	sdk_mapped_flags_get_by_key, %function
sdk_mapped_flags_get_by_key:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	cbz	r0, .L38
	movs	r3, #0
.L40:
	ldrh	r4, [r0, r3, lsl #1]
	cmp	r4, r2
	bne	.L39
	movs	r2, #1
	lsl	r3, r2, r3
	tst	r3, r1
	ite	ne
	movne	r0, r2
	moveq	r0, #0
.L38:
	pop	{r4, pc}
.L39:
	adds	r3, r3, #1
	cmp	r3, #32
	bne	.L40
	movs	r0, #0
	b	.L38
	.size	sdk_mapped_flags_get_by_key, .-sdk_mapped_flags_get_by_key
	.section	.text.sdk_mapped_flags_key_list_get,"ax",%progbits
	.align	1
	.global	sdk_mapped_flags_key_list_get
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	sdk_mapped_flags_key_list_get, %function
sdk_mapped_flags_key_list_get:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	cbz	r1, .L47
	movs	r3, #0
	mov	r4, r3
	movs	r5, #1
.L46:
	lsl	r6, r5, r4
	tst	r6, r2
	ittt	ne
	addne	r6, r0, r3, lsl #1
	ldrhne	r7, [r1, r4, lsl #1]
	strhne	r7, [r6, #4]	@ movhi
	add	r4, r4, #1
	it	ne
	addne	r3, r3, #1
	cmp	r4, #32
	bne	.L46
.L44:
	str	r3, [r0]
	pop	{r4, r5, r6, r7, pc}
.L47:
	mov	r3, r1
	b	.L44
	.size	sdk_mapped_flags_key_list_get, .-sdk_mapped_flags_key_list_get
	.section	.text.sdk_mapped_flags_n_flags_set,"ax",%progbits
	.align	1
	.global	sdk_mapped_flags_n_flags_set
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	sdk_mapped_flags_n_flags_set, %function
sdk_mapped_flags_n_flags_set:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	movs	r3, #0
	mov	r2, r0
	movs	r1, #1
	mov	r0, r3
.L54:
	lsl	r4, r1, r3
	tst	r4, r2
	add	r3, r3, #1
	it	ne
	addne	r0, r0, #1
	cmp	r3, #32
	bne	.L54
	pop	{r4, pc}
	.size	sdk_mapped_flags_n_flags_set, .-sdk_mapped_flags_n_flags_set
	.ident	"GCC: (GNU) 10.2.1 20201103 (release)"
