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
	.file	"nrf_drv_clock.c"
	.text
	.section	.text.sd_clock_hfclk_request,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	sd_clock_hfclk_request, %function
sd_clock_hfclk_request:
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.syntax unified
@ 563 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #63
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	.size	sd_clock_hfclk_request, .-sd_clock_hfclk_request
	.section	.text.sd_clock_hfclk_release,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	sd_clock_hfclk_release, %function
sd_clock_hfclk_release:
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.syntax unified
@ 574 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #64
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	.size	sd_clock_hfclk_release, .-sd_clock_hfclk_release
	.section	.text.sd_clock_hfclk_is_running,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	sd_clock_hfclk_is_running, %function
sd_clock_hfclk_is_running:
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.syntax unified
@ 585 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #65
bx r14
@ 0 "" 2
	.thumb
	.syntax unified
	.size	sd_clock_hfclk_is_running, .-sd_clock_hfclk_is_running
	.section	.text.lfclk_stop,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	lfclk_stop, %function
lfclk_stop:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #1073741824
	movs	r3, #1
	str	r3, [r2, #12]
.L5:
	ldr	r3, [r2, #1048]
	ubfx	r1, r3, #16, #1
	lsls	r3, r3, #15
	bmi	.L5
	ldr	r3, .L7
	strb	r1, [r3, #2]
	bx	lr
.L8:
	.align	2
.L7:
	.word	.LANCHOR0
	.size	lfclk_stop, .-lfclk_stop
	.section	.text.clock_clk_started_notify,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	clock_clk_started_notify, %function
clock_clk_started_notify:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	ldr	r4, .L14
	subs	r5, r0, #0
	add	r3, r4, #8
	it	ne
	movne	r4, r3
.L12:
	ldr	r3, [r4]
	cbz	r3, .L9
	ldr	r2, [r3]
	str	r2, [r4]
	ldr	r3, [r3, #4]
	mov	r0, r5
	blx	r3
	b	.L12
.L9:
	pop	{r3, r4, r5, pc}
.L15:
	.align	2
.L14:
	.word	.LANCHOR0+8
	.size	clock_clk_started_notify, .-clock_clk_started_notify
	.section	.text.soc_evt_handler,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	soc_evt_handler, %function
soc_evt_handler:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbnz	r0, .L16
	b	clock_clk_started_notify
.L16:
	bx	lr
	.size	soc_evt_handler, .-soc_evt_handler
	.section	.text.hfclk_stop,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hfclk_stop, %function
hfclk_stop:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	bl	nrf_sdh_is_enabled
	cbz	r0, .L19
	pop	{r3, lr}
	b	sd_clock_hfclk_release
.L19:
	mov	r2, #1073741824
	movs	r3, #1
	str	r3, [r2, #4]
.L20:
	ldr	r3, [r2, #1036]
	and	r3, r3, #65537
	cmp	r3, #65537
	beq	.L20
	ldr	r3, .L23
	movs	r2, #0
	strb	r2, [r3, #1]
	pop	{r3, pc}
.L24:
	.align	2
.L23:
	.word	.LANCHOR0
	.size	hfclk_stop, .-hfclk_stop
	.section	.text.nrf_drv_clock_init_check,"ax",%progbits
	.align	1
	.global	nrf_drv_clock_init_check
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nrf_drv_clock_init_check, %function
nrf_drv_clock_init_check:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L26
	ldrb	r0, [r3]	@ zero_extendqisi2
	bx	lr
.L27:
	.align	2
.L26:
	.word	.LANCHOR0
	.size	nrf_drv_clock_init_check, .-nrf_drv_clock_init_check
	.section	.text.nrf_drv_clock_init,"ax",%progbits
	.align	1
	.global	nrf_drv_clock_init
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nrf_drv_clock_init, %function
nrf_drv_clock_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L33
	ldrb	r3, [r4]	@ zero_extendqisi2
	cbnz	r3, .L32
	str	r3, [r4, #4]
	str	r3, [r4, #8]
	str	r3, [r4, #12]
	str	r3, [r4, #16]
	ldr	r3, .L33+4
	ldr	r0, [r3]
	ands	r0, r0, #1
	bne	.L30
	movs	r1, #7
	bl	nrf_drv_common_irq_enable
.L30:
	bl	nrf_sdh_is_enabled
	cbnz	r0, .L31
	mov	r3, #1073741824
	movs	r2, #1
	str	r2, [r3, #1304]
.L31:
	movs	r3, #1
	strb	r3, [r4]
	movs	r0, #0
.L28:
	pop	{r4, pc}
.L32:
	movs	r0, #133
	b	.L28
.L34:
	.align	2
.L33:
	.word	.LANCHOR0
	.word	-536813312
	.size	nrf_drv_clock_init, .-nrf_drv_clock_init
	.section	.text.nrf_drv_clock_uninit,"ax",%progbits
	.align	1
	.global	nrf_drv_clock_uninit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nrf_drv_clock_uninit, %function
nrf_drv_clock_uninit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	bl	nrf_drv_common_clock_irq_disable
	mov	r3, #1073741824
	mov	r2, #-1
	str	r2, [r3, #776]
	bl	lfclk_stop
	bl	hfclk_stop
	ldr	r3, .L36
	movs	r2, #0
	strb	r2, [r3]
	pop	{r3, pc}
.L37:
	.align	2
.L36:
	.word	.LANCHOR0
	.size	nrf_drv_clock_uninit, .-nrf_drv_clock_uninit
	.section	.text.nrf_drv_clock_lfclk_request,"ax",%progbits
	.align	1
	.global	nrf_drv_clock_lfclk_request
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nrf_drv_clock_lfclk_request, %function
nrf_drv_clock_lfclk_request:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r4, r5, lr}
	ldr	r4, .L53
	ldrb	r3, [r4, #2]	@ zero_extendqisi2
	mov	r5, r0
	and	r2, r3, #255
	cbz	r3, .L39
	cbz	r0, .L40
	ldr	r3, [r0, #4]
	movs	r0, #1
	blx	r3
.L40:
	movs	r3, #0
	add	r0, sp, #4
	strb	r3, [sp, #4]
	bl	app_util_critical_region_enter
	ldr	r3, [r4, #12]
	ldrb	r0, [sp, #4]	@ zero_extendqisi2
	adds	r3, r3, #1
	str	r3, [r4, #12]
.L52:
	bl	app_util_critical_region_exit
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, pc}
.L39:
	add	r0, sp, #3
	strb	r2, [sp, #3]
	bl	app_util_critical_region_enter
	cbz	r5, .L42
	ldr	r2, [r4, #16]
	mov	r3, r2
.L43:
	cbnz	r3, .L44
	str	r2, [r5]
	str	r5, [r4, #16]
.L42:
	ldr	r2, [r4, #12]
	cbnz	r2, .L45
	mov	r3, #1073741824
	str	r2, [r3, #260]
	ldr	r2, [r3, #260]
	str	r2, [sp, #4]
	ldr	r2, [sp, #4]
	movs	r2, #2
	str	r2, [r3, #772]
	movs	r2, #1
	str	r2, [r3, #8]
.L45:
	ldr	r3, [r4, #12]
	ldrb	r0, [sp, #3]	@ zero_extendqisi2
	adds	r3, r3, #1
	str	r3, [r4, #12]
	b	.L52
.L44:
	cmp	r5, r3
	beq	.L42
	ldr	r3, [r3]
	b	.L43
.L54:
	.align	2
.L53:
	.word	.LANCHOR0
	.size	nrf_drv_clock_lfclk_request, .-nrf_drv_clock_lfclk_request
	.section	.text.nrf_drv_clock_lfclk_release,"ax",%progbits
	.align	1
	.global	nrf_drv_clock_lfclk_release
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nrf_drv_clock_lfclk_release, %function
nrf_drv_clock_lfclk_release:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, lr}
	movs	r3, #0
	add	r0, sp, #7
	strb	r3, [sp, #7]
	bl	app_util_critical_region_enter
	ldr	r3, .L57
	ldr	r2, [r3, #12]
	subs	r2, r2, #1
	str	r2, [r3, #12]
	ldr	r3, [r3, #12]
	cbnz	r3, .L56
	bl	lfclk_stop
.L56:
	ldrb	r0, [sp, #7]	@ zero_extendqisi2
	bl	app_util_critical_region_exit
	add	sp, sp, #12
	@ sp needed
	ldr	pc, [sp], #4
.L58:
	.align	2
.L57:
	.word	.LANCHOR0
	.size	nrf_drv_clock_lfclk_release, .-nrf_drv_clock_lfclk_release
	.section	.text.sd_state_evt_handler,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	sd_state_evt_handler, %function
sd_state_evt_handler:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #1
	push	{r0, r1, r4, lr}
	beq	.L60
	cmp	r0, #3
	beq	.L61
	cbnz	r0, .L59
	ldr	r3, .L64
	movs	r2, #1
	str	r2, [r3, #128]
.L59:
	add	sp, sp, #8
	@ sp needed
	pop	{r4, pc}
.L60:
	ldr	r4, .L64+4
	movs	r3, #0
	add	r0, sp, #7
	strb	r3, [sp, #7]
	bl	app_util_critical_region_enter
	ldrb	r3, [r4]	@ zero_extendqisi2
	cbnz	r3, .L63
	bl	nrf_drv_clock_init
.L63:
	ldr	r3, [r4, #12]
	ldrb	r0, [sp, #7]	@ zero_extendqisi2
	adds	r3, r3, #1
	str	r3, [r4, #12]
	movs	r3, #1
	strb	r3, [r4, #2]
	bl	app_util_critical_region_exit
	b	.L59
.L61:
	movs	r1, #7
	movs	r0, #0
	bl	nrf_drv_common_irq_enable
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	b	nrf_drv_clock_lfclk_release
.L65:
	.align	2
.L64:
	.word	-536813312
	.word	.LANCHOR0
	.size	sd_state_evt_handler, .-sd_state_evt_handler
	.section	.text.nrf_drv_clock_lfclk_is_running,"ax",%progbits
	.align	1
	.global	nrf_drv_clock_lfclk_is_running
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nrf_drv_clock_lfclk_is_running, %function
nrf_drv_clock_lfclk_is_running:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	bl	nrf_sdh_is_enabled
	cbnz	r0, .L67
	mov	r3, #1073741824
	ldr	r0, [r3, #1048]
	ubfx	r0, r0, #16, #1
.L67:
	pop	{r3, pc}
	.size	nrf_drv_clock_lfclk_is_running, .-nrf_drv_clock_lfclk_is_running
	.section	.text.nrf_drv_clock_hfclk_request,"ax",%progbits
	.align	1
	.global	nrf_drv_clock_hfclk_request
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nrf_drv_clock_hfclk_request, %function
nrf_drv_clock_hfclk_request:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r4, r5, lr}
	ldr	r4, .L84
	ldrb	r3, [r4, #1]	@ zero_extendqisi2
	mov	r5, r0
	and	r2, r3, #255
	cbz	r3, .L69
	cbz	r0, .L70
	ldr	r3, [r0, #4]
	movs	r0, #0
	blx	r3
.L70:
	movs	r3, #0
	add	r0, sp, #4
	strb	r3, [sp, #4]
	bl	app_util_critical_region_enter
	ldr	r3, [r4, #4]
	ldrb	r0, [sp, #4]	@ zero_extendqisi2
	adds	r3, r3, #1
	str	r3, [r4, #4]
.L83:
	bl	app_util_critical_region_exit
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, pc}
.L69:
	add	r0, sp, #3
	strb	r2, [sp, #3]
	bl	app_util_critical_region_enter
	cbz	r5, .L72
	ldr	r2, [r4, #8]
	mov	r3, r2
.L73:
	cbnz	r3, .L74
	str	r2, [r5]
	str	r5, [r4, #8]
.L72:
	ldr	r3, [r4, #4]
	cbnz	r3, .L75
	bl	nrf_sdh_is_enabled
	cbz	r0, .L76
	bl	sd_clock_hfclk_request
.L75:
	ldr	r3, [r4, #4]
	ldrb	r0, [sp, #3]	@ zero_extendqisi2
	adds	r3, r3, #1
	str	r3, [r4, #4]
	b	.L83
.L74:
	cmp	r5, r3
	beq	.L72
	ldr	r3, [r3]
	b	.L73
.L76:
	mov	r3, #1073741824
	str	r0, [r3, #256]
	ldr	r2, [r3, #256]
	str	r2, [sp, #4]
	ldr	r2, [sp, #4]
	movs	r2, #1
	str	r2, [r3, #772]
	str	r2, [r3]
	b	.L75
.L85:
	.align	2
.L84:
	.word	.LANCHOR0
	.size	nrf_drv_clock_hfclk_request, .-nrf_drv_clock_hfclk_request
	.section	.text.nrf_drv_clock_hfclk_release,"ax",%progbits
	.align	1
	.global	nrf_drv_clock_hfclk_release
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nrf_drv_clock_hfclk_release, %function
nrf_drv_clock_hfclk_release:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, lr}
	movs	r3, #0
	add	r0, sp, #7
	strb	r3, [sp, #7]
	bl	app_util_critical_region_enter
	ldr	r3, .L88
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	ldr	r3, [r3, #4]
	cbnz	r3, .L87
	bl	hfclk_stop
.L87:
	ldrb	r0, [sp, #7]	@ zero_extendqisi2
	bl	app_util_critical_region_exit
	add	sp, sp, #12
	@ sp needed
	ldr	pc, [sp], #4
.L89:
	.align	2
.L88:
	.word	.LANCHOR0
	.size	nrf_drv_clock_hfclk_release, .-nrf_drv_clock_hfclk_release
	.section	.text.nrf_drv_clock_hfclk_is_running,"ax",%progbits
	.align	1
	.global	nrf_drv_clock_hfclk_is_running
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nrf_drv_clock_hfclk_is_running, %function
nrf_drv_clock_hfclk_is_running:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, lr}
	bl	nrf_sdh_is_enabled
	cbz	r0, .L91
	add	r0, sp, #4
	bl	sd_clock_hfclk_is_running
	ldr	r0, [sp, #4]
	subs	r0, r0, #0
	it	ne
	movne	r0, #1
.L92:
	add	sp, sp, #12
	@ sp needed
	ldr	pc, [sp], #4
.L91:
	mov	r3, #1073741824
	ldr	r0, [r3, #1036]
	and	r0, r0, #65537
	sub	r3, r0, #65537
	rsbs	r0, r3, #0
	adcs	r0, r0, r3
	b	.L92
	.size	nrf_drv_clock_hfclk_is_running, .-nrf_drv_clock_hfclk_is_running
	.section	.text.nrf_drv_clock_calibration_start,"ax",%progbits
	.align	1
	.global	nrf_drv_clock_calibration_start
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nrf_drv_clock_calibration_start, %function
nrf_drv_clock_calibration_start:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r0, #15
	bx	lr
	.size	nrf_drv_clock_calibration_start, .-nrf_drv_clock_calibration_start
	.section	.text.nrf_drv_clock_calibration_abort,"ax",%progbits
	.align	1
	.global	nrf_drv_clock_calibration_abort
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nrf_drv_clock_calibration_abort, %function
nrf_drv_clock_calibration_abort:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r0, #15
	bx	lr
	.size	nrf_drv_clock_calibration_abort, .-nrf_drv_clock_calibration_abort
	.section	.text.nrf_drv_clock_is_calibrating,"ax",%progbits
	.align	1
	.global	nrf_drv_clock_is_calibrating
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nrf_drv_clock_is_calibrating, %function
nrf_drv_clock_is_calibrating:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r0, #15
	bx	lr
	.size	nrf_drv_clock_is_calibrating, .-nrf_drv_clock_is_calibrating
	.section	.text.POWER_CLOCK_IRQHandler,"ax",%progbits
	.align	1
	.global	POWER_CLOCK_IRQHandler
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	POWER_CLOCK_IRQHandler, %function
POWER_CLOCK_IRQHandler:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #1073741824
	push	{r0, r1, r2, lr}
	ldr	r2, [r3, #256]
	cbz	r2, .L97
	movs	r0, #0
	str	r0, [r3, #256]
	ldr	r2, [r3, #256]
	str	r2, [sp]
	ldr	r2, [sp]
	movs	r2, #1
	str	r2, [r3, #776]
	ldr	r3, .L102
	strb	r2, [r3, #1]
	bl	clock_clk_started_notify
.L97:
	mov	r3, #1073741824
	ldr	r2, [r3, #260]
	cbz	r2, .L96
	movs	r2, #0
	str	r2, [r3, #260]
	ldr	r2, [r3, #260]
	str	r2, [sp, #4]
	ldr	r2, [sp, #4]
	movs	r2, #2
	str	r2, [r3, #776]
	ldr	r3, .L102
	movs	r0, #1
	strb	r0, [r3, #2]
	add	sp, sp, #12
	@ sp needed
	ldr	lr, [sp], #4
	b	clock_clk_started_notify
.L96:
	add	sp, sp, #12
	@ sp needed
	ldr	pc, [sp], #4
.L103:
	.align	2
.L102:
	.word	.LANCHOR0
	.size	POWER_CLOCK_IRQHandler, .-POWER_CLOCK_IRQHandler
	.global	m_nrf_log_clock_logs_data_dynamic
	.global	m_nrf_log_clock_logs_data_const
	.section	.rodata.str1.1,"aMS",%progbits,1
.LC0:
	.ascii	"clock\000"
	.section	.bss.m_clock_cb,"aw",%nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	m_clock_cb, %object
	.size	m_clock_cb, 20
m_clock_cb:
	.space	20
	.section	.log_const_data_clock,"a"
	.align	2
	.type	m_nrf_log_clock_logs_data_const, %object
	.size	m_nrf_log_clock_logs_data_const, 8
m_nrf_log_clock_logs_data_const:
	.word	.LC0
	.byte	0
	.byte	0
	.byte	0
	.space	1
	.section	.log_dynamic_data_clock,"aw"
	.align	2
	.type	m_nrf_log_clock_logs_data_dynamic, %object
	.size	m_nrf_log_clock_logs_data_dynamic, 12
m_nrf_log_clock_logs_data_dynamic:
	.space	12
	.section	.sdh_soc_observers0,"a"
	.align	2
	.type	m_soc_evt_observer, %object
	.size	m_soc_evt_observer, 8
m_soc_evt_observer:
	.word	soc_evt_handler
	.word	0
	.section	.sdh_state_observers0,"a"
	.align	2
	.type	m_sd_state_observer, %object
	.size	m_sd_state_observer, 8
m_sd_state_observer:
	.word	sd_state_evt_handler
	.word	0
	.ident	"GCC: (GNU) 10.2.1 20201103 (release)"
