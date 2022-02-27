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
	.file	"nrf_strerror.c"
	.text
	.section	.text.nrf_strerror_find,"ax",%progbits
	.align	1
	.global	nrf_strerror_find
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nrf_strerror_find, %function
nrf_strerror_find:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r1, .L8
	sub	r2, r1, #240
.L3:
	cmp	r1, r2
	bhi	.L6
	movs	r0, #0
	b	.L1
.L6:
	subs	r4, r1, r2
	lsrs	r3, r4, #31
	add	r3, r3, r4, asr #3
	asrs	r3, r3, #1
	add	r4, r2, r3, lsl #3
	ldr	r3, [r2, r3, lsl #3]
	cmp	r3, r0
	bhi	.L7
	bcs	.L4
	add	r2, r4, #8
	b	.L3
.L4:
	ldr	r0, [r4, #4]
.L1:
	pop	{r4, pc}
.L7:
	mov	r1, r4
	b	.L3
.L9:
	.align	2
.L8:
	.word	.LANCHOR0+240
	.size	nrf_strerror_find, .-nrf_strerror_find
	.section	.text.nrf_strerror_get,"ax",%progbits
	.align	1
	.global	nrf_strerror_get
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nrf_strerror_get, %function
nrf_strerror_get:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	bl	nrf_strerror_find
	ldr	r3, .L12
	cmp	r0, #0
	it	eq
	moveq	r0, r3
	pop	{r3, pc}
.L13:
	.align	2
.L12:
	.word	.LANCHOR1
	.size	nrf_strerror_get, .-nrf_strerror_get
	.section	.rodata.str1.1,"aMS",%progbits,1
.LC0:
	.ascii	"NRF_SUCCESS\000"
.LC1:
	.ascii	"NRF_ERROR_SVC_HANDLER_MISSING\000"
.LC2:
	.ascii	"NRF_ERROR_SOFTDEVICE_NOT_ENABLED\000"
.LC3:
	.ascii	"NRF_ERROR_INTERNAL\000"
.LC4:
	.ascii	"NRF_ERROR_NO_MEM\000"
.LC5:
	.ascii	"NRF_ERROR_NOT_FOUND\000"
.LC6:
	.ascii	"NRF_ERROR_NOT_SUPPORTED\000"
.LC7:
	.ascii	"NRF_ERROR_INVALID_PARAM\000"
.LC8:
	.ascii	"NRF_ERROR_INVALID_STATE\000"
.LC9:
	.ascii	"NRF_ERROR_INVALID_LENGTH\000"
.LC10:
	.ascii	"NRF_ERROR_INVALID_FLAGS\000"
.LC11:
	.ascii	"NRF_ERROR_INVALID_DATA\000"
.LC12:
	.ascii	"NRF_ERROR_DATA_SIZE\000"
.LC13:
	.ascii	"NRF_ERROR_TIMEOUT\000"
.LC14:
	.ascii	"NRF_ERROR_NULL\000"
.LC15:
	.ascii	"NRF_ERROR_FORBIDDEN\000"
.LC16:
	.ascii	"NRF_ERROR_INVALID_ADDR\000"
.LC17:
	.ascii	"NRF_ERROR_BUSY\000"
.LC18:
	.ascii	"NRF_ERROR_MODULE_NOT_INITIALZED\000"
.LC19:
	.ascii	"NRF_ERROR_MUTEX_INIT_FAILED\000"
.LC20:
	.ascii	"NRF_ERROR_MUTEX_LOCK_FAILED\000"
.LC21:
	.ascii	"NRF_ERROR_MUTEX_UNLOCK_FAILED\000"
.LC22:
	.ascii	"NRF_ERROR_MUTEX_COND_INIT_FAILED\000"
.LC23:
	.ascii	"NRF_ERROR_MODULE_ALREADY_INITIALIZED\000"
.LC24:
	.ascii	"NRF_ERROR_STORAGE_FULL\000"
.LC25:
	.ascii	"NRF_ERROR_API_NOT_IMPLEMENTED\000"
.LC26:
	.ascii	"NRF_ERROR_FEATURE_NOT_ENABLED\000"
.LC27:
	.ascii	"NRF_ERROR_DRV_TWI_ERR_OVERRUN\000"
.LC28:
	.ascii	"NRF_ERROR_DRV_TWI_ERR_ANACK\000"
.LC29:
	.ascii	"NRF_ERROR_DRV_TWI_ERR_DNACK\000"
	.section	.rodata.m_unknown_str,"a"
	.set	.LANCHOR1,. + 0
	.type	m_unknown_str, %object
	.size	m_unknown_str, 19
m_unknown_str:
	.ascii	"Unknown error code\000"
	.section	.rodata.nrf_strerror_array,"a"
	.align	2
	.set	.LANCHOR0,. + 0
	.type	nrf_strerror_array, %object
	.size	nrf_strerror_array, 240
nrf_strerror_array:
	.word	0
	.word	.LC0
	.word	1
	.word	.LC1
	.word	2
	.word	.LC2
	.word	3
	.word	.LC3
	.word	4
	.word	.LC4
	.word	5
	.word	.LC5
	.word	6
	.word	.LC6
	.word	7
	.word	.LC7
	.word	8
	.word	.LC8
	.word	9
	.word	.LC9
	.word	10
	.word	.LC10
	.word	11
	.word	.LC11
	.word	12
	.word	.LC12
	.word	13
	.word	.LC13
	.word	14
	.word	.LC14
	.word	15
	.word	.LC15
	.word	16
	.word	.LC16
	.word	17
	.word	.LC17
	.word	128
	.word	.LC18
	.word	129
	.word	.LC19
	.word	130
	.word	.LC20
	.word	131
	.word	.LC21
	.word	132
	.word	.LC22
	.word	133
	.word	.LC23
	.word	134
	.word	.LC24
	.word	144
	.word	.LC25
	.word	145
	.word	.LC26
	.word	33280
	.word	.LC27
	.word	33281
	.word	.LC28
	.word	33282
	.word	.LC29
	.ident	"GCC: (GNU) 10.2.1 20201103 (release)"
