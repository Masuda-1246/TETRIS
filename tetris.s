	.cpu arm7tdmi
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 6
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"ex6.c"
	.comm	mino,80,4
	.comm	mino1,80,4
	.comm	field,1056,4
	.comm	screen,1056,4
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #24
	mov	r3, #8
	strh	r3, [fp, #-22]	@ movhi
	ldr	r3, .L6
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-16]
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-20]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-18]	@ movhi
	mov	r3, #67108864
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	ldr	r2, .L6+4
	strh	r2, [r3]	@ movhi
	mov	r3, #100663296
	str	r3, [fp, #-8]
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L2
.L3:
	ldrh	r3, [fp, #-18]	@ movhi
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r3, [fp, #-8]
	strh	r2, [r3]	@ movhi
	ldr	r3, [fp, #-8]
	add	r3, r3, #2
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L2:
	ldr	r3, [fp, #-12]
	cmp	r3, #38400
	blt	.L3
.L5:
	ldr	r3, .L6
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-16]
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-20]	@ movhi
	ldrh	r3, [fp, #-20]	@ movhi
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-22]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	and	r3, r3, r2
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-22]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	cmp	r2, r3
	beq	.L4
	bl	start
.L4:
	b	.L5
.L7:
	.align	2
.L6:
	.word	67109168
	.word	3843
	.size	main, .-main
	.align	2
	.global	start
	.type	start, %function
start:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #48
	mov	r3, #64
	strh	r3, [fp, #-38]	@ movhi
	mov	r3, #128
	strh	r3, [fp, #-40]	@ movhi
	mov	r3, #16
	strh	r3, [fp, #-42]	@ movhi
	mov	r3, #32
	strh	r3, [fp, #-44]	@ movhi
	mov	r3, #8
	strh	r3, [fp, #-46]	@ movhi
	mov	r3, #0
	str	r3, [fp, #-16]
	mov	r3, #0
	str	r3, [fp, #-20]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L9
.L12:
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L10
.L11:
	ldr	r1, .L38
	ldr	r2, [fp, #-8]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-12]
	add	r3, r3, r2
	mov	r2, #0
	str	r2, [r1, r3, asl #2]
	ldr	r1, .L38+4
	ldr	r2, [fp, #-8]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-12]
	add	r3, r3, r2
	mov	r2, #0
	str	r2, [r1, r3, asl #2]
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L10:
	ldr	r3, [fp, #-12]
	cmp	r3, #11
	ble	.L11
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L9:
	ldr	r3, [fp, #-8]
	cmp	r3, #21
	ble	.L12
	ldr	r3, .L38+8
	mov	r2, #5
	str	r2, [r3, #4]
	ldr	r3, .L38+8
	mov	r2, #0
	str	r2, [r3]
	bl	create_wall
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L13
.L14:
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L13:
	ldr	r3, [fp, #-8]
	ldr	r2, .L38+12
	cmp	r3, r2
	ble	.L14
	bl	mino_o
.L37:
	ldr	r3, [fp, #-20]
	add	r3, r3, #2
	str	r3, [fp, #-20]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L15
.L16:
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L15:
	ldr	r3, [fp, #-8]
	ldr	r2, .L38+16
	cmp	r3, r2
	ble	.L16
	ldr	r3, .L38+8
	ldr	r3, [r3, #12]
	ldr	r2, .L38+20
	str	r3, [r2, #12]
	ldr	r3, .L38+8
	ldr	r3, [r3, #8]
	ldr	r2, .L38+20
	str	r3, [r2, #8]
	ldr	r3, .L38+8
	ldr	r3, [r3, #4]
	ldr	r2, .L38+20
	str	r3, [r2, #4]
	ldr	r3, .L38+8
	ldr	r3, [r3]
	ldr	r2, .L38+20
	str	r3, [r2]
	mov	r3, #0
	str	r3, [fp, #-28]
	b	.L17
.L20:
	mov	r3, #0
	str	r3, [fp, #-24]
	b	.L18
.L19:
	ldr	r1, .L38+8
	ldr	r3, [fp, #-28]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	add	r3, r3, #4
	ldr	r2, [r1, r3, asl #2]
	ldr	r0, .L38+20
	ldr	r3, [fp, #-28]
	mov	r1, r3, asl #2
	ldr	r3, [fp, #-24]
	add	r3, r1, r3
	add	r3, r3, #4
	str	r2, [r0, r3, asl #2]
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L18:
	ldr	r3, .L38+8
	ldr	r2, [r3, #8]
	ldr	r3, [fp, #-24]
	cmp	r2, r3
	bgt	.L19
	ldr	r3, [fp, #-28]
	add	r3, r3, #1
	str	r3, [fp, #-28]
.L17:
	ldr	r3, .L38+8
	ldr	r2, [r3, #12]
	ldr	r3, [fp, #-28]
	cmp	r2, r3
	bgt	.L20
	ldr	r3, .L38+24
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-32]
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-36]	@ movhi
	ldrh	r3, [fp, #-36]	@ movhi
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-42]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	and	r3, r3, r2
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-42]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	cmp	r2, r3
	beq	.L21
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
	ldr	r3, .L38+8
	ldr	r3, [r3, #4]
	add	r3, r3, #1
	ldr	r2, .L38+8
	str	r3, [r2, #4]
	b	.L22
.L21:
	ldrh	r3, [fp, #-36]	@ movhi
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-44]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	and	r3, r3, r2
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-44]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	cmp	r2, r3
	beq	.L23
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
	ldr	r3, .L38+8
	ldr	r3, [r3, #4]
	sub	r3, r3, #1
	ldr	r2, .L38+8
	str	r3, [r2, #4]
	b	.L22
.L23:
	ldrh	r3, [fp, #-36]	@ movhi
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-40]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	and	r3, r3, r2
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-40]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	cmp	r2, r3
	beq	.L24
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
	ldr	r3, .L38+8
	ldr	r3, [r3]
	add	r3, r3, #1
	ldr	r2, .L38+8
	str	r3, [r2]
	b	.L22
.L24:
	ldrh	r3, [fp, #-36]	@ movhi
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-38]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	and	r3, r3, r2
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-38]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	cmp	r2, r3
	beq	.L25
	mov	r3, #0
	str	r3, [fp, #-28]
	b	.L26
.L29:
	mov	r3, #0
	str	r3, [fp, #-24]
	b	.L27
.L28:
	ldr	r3, .L38+8
	ldr	r3, [r3, #8]
	sub	r2, r3, #1
	ldr	r3, [fp, #-24]
	rsb	r3, r3, r2
	ldr	r1, .L38+20
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-28]
	add	r3, r2, r3
	add	r3, r3, #4
	ldr	r2, [r1, r3, asl #2]
	ldr	r0, .L38+8
	ldr	r3, [fp, #-28]
	mov	r1, r3, asl #2
	ldr	r3, [fp, #-24]
	add	r3, r1, r3
	add	r3, r3, #4
	str	r2, [r0, r3, asl #2]
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L27:
	ldr	r3, .L38+8
	ldr	r2, [r3, #8]
	ldr	r3, [fp, #-24]
	cmp	r2, r3
	bgt	.L28
	ldr	r3, [fp, #-28]
	add	r3, r3, #1
	str	r3, [fp, #-28]
.L26:
	ldr	r3, .L38+8
	ldr	r2, [r3, #12]
	ldr	r3, [fp, #-28]
	cmp	r2, r3
	bgt	.L29
	b	.L22
.L25:
	ldrh	r3, [fp, #-36]	@ movhi
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-46]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	and	r3, r3, r2
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-46]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	cmp	r2, r3
	beq	.L22
	bl	finish
.L22:
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L30
.L33:
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L31
.L32:
	ldr	r1, .L38
	ldr	r2, [fp, #-8]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-12]
	add	r3, r3, r2
	mov	r2, #0
	str	r2, [r1, r3, asl #2]
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L31:
	ldr	r3, [fp, #-12]
	cmp	r3, #11
	ble	.L32
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L30:
	ldr	r3, [fp, #-8]
	cmp	r3, #21
	ble	.L33
	bl	judge_intersect
	mov	r3, r0
	cmp	r3, #0
	beq	.L34
	bl	reverse
	b	.L35
.L34:
	ldr	r3, .L38+8
	ldr	r3, [r3, #4]
	ldr	r2, .L38+20
	str	r3, [r2, #4]
	ldr	r3, .L38+8
	ldr	r3, [r3]
	ldr	r2, .L38+20
	str	r3, [r2]
.L35:
	ldr	r3, [fp, #-16]
	cmp	r3, #2
	bne	.L36
	mov	r3, #0
	str	r3, [fp, #-16]
	ldr	r3, .L38+8
	ldr	r3, [r3]
	add	r3, r3, #1
	ldr	r2, .L38+8
	str	r3, [r2]
	bl	judge_intersect
	mov	r3, r0
	cmp	r3, #0
	beq	.L36
	bl	reverse
	ldr	r0, [fp, #-20]
	bl	initialize
.L36:
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
	bl	create_mino
	b	.L37
.L39:
	.align	2
.L38:
	.word	screen
	.word	field
	.word	mino
	.word	99999
	.word	29999
	.word	mino1
	.word	67109168
	.size	start, .-start
	.align	2
	.global	reverse
	.type	reverse, %function
reverse:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	ldr	r3, .L45
	ldr	r3, [r3, #4]
	ldr	r2, .L45+4
	str	r3, [r2, #4]
	ldr	r3, .L45
	ldr	r3, [r3]
	ldr	r2, .L45+4
	str	r3, [r2]
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L41
.L44:
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L42
.L43:
	ldr	r1, .L45
	ldr	r3, [fp, #-12]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-8]
	add	r3, r2, r3
	add	r3, r3, #4
	ldr	r2, [r1, r3, asl #2]
	ldr	r0, .L45+4
	ldr	r3, [fp, #-12]
	mov	r1, r3, asl #2
	ldr	r3, [fp, #-8]
	add	r3, r1, r3
	add	r3, r3, #4
	str	r2, [r0, r3, asl #2]
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L42:
	ldr	r3, .L45+4
	ldr	r2, [r3, #8]
	ldr	r3, [fp, #-8]
	cmp	r2, r3
	bgt	.L43
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L41:
	ldr	r3, .L45+4
	ldr	r2, [r3, #12]
	ldr	r3, [fp, #-12]
	cmp	r2, r3
	bgt	.L44
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
.L46:
	.align	2
.L45:
	.word	mino1
	.word	mino
	.size	reverse, .-reverse
	.align	2
	.global	judge_intersect
	.type	judge_intersect, %function
judge_intersect:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L48
.L54:
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L49
.L53:
	ldr	r1, .L55
	ldr	r3, [fp, #-12]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-8]
	add	r3, r2, r3
	add	r3, r3, #4
	ldr	r3, [r1, r3, asl #2]
	cmp	r3, #1
	bne	.L50
	ldr	r3, .L55
	ldr	r2, [r3]
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L51
	ldr	r3, .L55
	ldr	r2, [r3]
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	cmp	r3, #21
	bgt	.L51
	ldr	r3, .L55
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-8]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L51
	ldr	r3, .L55
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-8]
	add	r3, r2, r3
	cmp	r3, #11
	bgt	.L51
	ldr	r3, .L55
	ldr	r2, [r3]
	ldr	r3, [fp, #-12]
	add	r2, r2, r3
	ldr	r3, .L55
	ldr	r1, [r3, #4]
	ldr	r3, [fp, #-8]
	add	r1, r1, r3
	ldr	r0, .L55+4
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r1
	ldr	r3, [r0, r3, asl #2]
	cmp	r3, #0
	beq	.L50
.L51:
	mov	r3, #1
	b	.L52
.L50:
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L49:
	ldr	r3, .L55
	ldr	r2, [r3, #8]
	ldr	r3, [fp, #-8]
	cmp	r2, r3
	bgt	.L53
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L48:
	ldr	r3, .L55
	ldr	r2, [r3, #12]
	ldr	r3, [fp, #-12]
	cmp	r2, r3
	bgt	.L54
	mov	r3, #0
.L52:
	mov	r0, r3
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
.L56:
	.align	2
.L55:
	.word	mino
	.word	field
	.size	judge_intersect, .-judge_intersect
	.align	2
	.global	finish
	.type	finish, %function
finish:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #24
	mov	r3, #8
	strh	r3, [fp, #-24]	@ movhi
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L58
.L59:
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L58:
	ldr	r3, [fp, #-8]
	ldr	r2, .L68
	cmp	r3, r2
	ble	.L59
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L60
.L65:
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L61
.L62:
	ldr	r1, .L68+4
	ldr	r2, [fp, #-8]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-12]
	add	r3, r3, r2
	mov	r2, #1
	str	r2, [r1, r3, asl #2]
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L61:
	ldr	r3, [fp, #-12]
	cmp	r3, #11
	ble	.L62
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L63
.L64:
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L63:
	ldr	r3, [fp, #-16]
	ldr	r2, .L68+8
	cmp	r3, r2
	ble	.L64
	bl	create_mino
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L60:
	ldr	r3, [fp, #-8]
	cmp	r3, #21
	ble	.L65
.L67:
	ldr	r3, .L68+12
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-20]
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-22]	@ movhi
	ldrh	r3, [fp, #-22]	@ movhi
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-24]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	and	r3, r3, r2
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-24]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	cmp	r2, r3
	beq	.L66
	bl	start
.L66:
	b	.L67
.L69:
	.align	2
.L68:
	.word	9999
	.word	screen
	.word	99999
	.word	67109168
	.size	finish, .-finish
	.align	2
	.global	initialize
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #24
	str	r0, [fp, #-24]
	b	.L71
.L72:
	ldr	r3, [fp, #-24]
	sub	r3, r3, #8
	str	r3, [fp, #-24]
.L71:
	ldr	r3, [fp, #-24]
	cmp	r3, #7
	bgt	.L72
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L73
.L77:
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L74
.L76:
	ldr	r1, .L101
	ldr	r3, [fp, #-12]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-8]
	add	r3, r2, r3
	add	r3, r3, #4
	ldr	r3, [r1, r3, asl #2]
	cmp	r3, #0
	beq	.L75
	ldr	r3, .L101
	ldr	r2, [r3]
	ldr	r3, [fp, #-12]
	add	r2, r2, r3
	ldr	r3, .L101
	ldr	r1, [r3, #4]
	ldr	r3, [fp, #-8]
	add	r1, r1, r3
	ldr	r0, .L101+4
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r1
	mov	r2, #1
	str	r2, [r0, r3, asl #2]
.L75:
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L74:
	ldr	r3, .L101
	ldr	r2, [r3, #8]
	ldr	r3, [fp, #-8]
	cmp	r2, r3
	bgt	.L76
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L73:
	ldr	r3, .L101
	ldr	r2, [r3, #12]
	ldr	r3, [fp, #-12]
	cmp	r2, r3
	bgt	.L77
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L78
.L90:
	mov	r3, #1
	str	r3, [fp, #-20]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L79
.L82:
	ldr	r1, .L101+4
	ldr	r2, [fp, #-12]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-8]
	add	r3, r3, r2
	ldr	r3, [r1, r3, asl #2]
	cmp	r3, #0
	bne	.L80
	mov	r3, #0
	str	r3, [fp, #-20]
	b	.L81
.L80:
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L79:
	ldr	r3, [fp, #-8]
	cmp	r3, #11
	ble	.L82
.L81:
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	beq	.L83
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L84
.L85:
	ldr	r1, .L101+4
	ldr	r2, [fp, #-12]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-8]
	add	r3, r3, r2
	mov	r2, #0
	str	r2, [r1, r3, asl #2]
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L84:
	ldr	r3, [fp, #-8]
	cmp	r3, #11
	ble	.L85
	ldr	r3, [fp, #-12]
	str	r3, [fp, #-16]
	b	.L86
.L89:
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L87
.L88:
	ldr	r3, [fp, #-16]
	sub	r2, r3, #1
	ldr	r1, .L101+4
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-8]
	add	r3, r3, r2
	ldr	r1, [r1, r3, asl #2]
	ldr	r0, .L101+4
	ldr	r2, [fp, #-16]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-8]
	add	r3, r3, r2
	str	r1, [r0, r3, asl #2]
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L87:
	ldr	r3, [fp, #-8]
	cmp	r3, #11
	ble	.L88
	ldr	r3, [fp, #-16]
	sub	r3, r3, #1
	str	r3, [fp, #-16]
.L86:
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	bgt	.L89
.L83:
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L78:
	ldr	r3, [fp, #-12]
	cmp	r3, #21
	ble	.L90
	ldr	r3, .L101
	mov	r2, #0
	str	r2, [r3]
	ldr	r3, .L101
	mov	r2, #5
	str	r2, [r3, #4]
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	bne	.L91
	bl	mino_o
	b	.L92
.L91:
	ldr	r3, [fp, #-24]
	cmp	r3, #1
	bne	.L93
	bl	mino_j
	b	.L92
.L93:
	ldr	r3, [fp, #-24]
	cmp	r3, #2
	bne	.L94
	bl	mino_l
	b	.L92
.L94:
	ldr	r3, [fp, #-24]
	cmp	r3, #3
	bne	.L95
	bl	mino_t
	b	.L92
.L95:
	ldr	r3, [fp, #-24]
	cmp	r3, #4
	bne	.L96
	bl	mino_s
	b	.L92
.L96:
	ldr	r3, [fp, #-24]
	cmp	r3, #5
	bne	.L97
	bl	mino_z
	b	.L92
.L97:
	ldr	r3, [fp, #-24]
	cmp	r3, #6
	bne	.L92
	bl	mino_i
.L92:
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L98
.L100:
	ldr	r2, .L101+4
	ldr	r3, [fp, #-8]
	ldr	r3, [r2, r3, asl #2]
	cmp	r3, #1
	bne	.L99
	bl	finish
.L99:
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L98:
	ldr	r3, [fp, #-8]
	cmp	r3, #11
	ble	.L100
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, lr}
	bx	lr
.L102:
	.align	2
.L101:
	.word	mino
	.word	field
	.size	initialize, .-initialize
	.align	2
	.global	mino_i
	.type	mino_i, %function
mino_i:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	ldr	r3, .L104
	mov	r2, #4
	str	r2, [r3, #12]
	ldr	r3, .L104
	mov	r2, #4
	str	r2, [r3, #8]
	ldr	r3, .L104
	mov	r2, #0
	str	r2, [r3, #16]
	ldr	r3, .L104
	mov	r2, #0
	str	r2, [r3, #20]
	ldr	r3, .L104
	mov	r2, #0
	str	r2, [r3, #24]
	ldr	r3, .L104
	mov	r2, #0
	str	r2, [r3, #28]
	ldr	r3, .L104
	mov	r2, #1
	str	r2, [r3, #32]
	ldr	r3, .L104
	mov	r2, #1
	str	r2, [r3, #36]
	ldr	r3, .L104
	mov	r2, #1
	str	r2, [r3, #40]
	ldr	r3, .L104
	mov	r2, #1
	str	r2, [r3, #44]
	ldr	r3, .L104
	mov	r2, #0
	str	r2, [r3, #48]
	ldr	r3, .L104
	mov	r2, #0
	str	r2, [r3, #52]
	ldr	r3, .L104
	mov	r2, #0
	str	r2, [r3, #56]
	ldr	r3, .L104
	mov	r2, #0
	str	r2, [r3, #60]
	ldr	r3, .L104
	mov	r2, #0
	str	r2, [r3, #64]
	ldr	r3, .L104
	mov	r2, #0
	str	r2, [r3, #68]
	ldr	r3, .L104
	mov	r2, #0
	str	r2, [r3, #72]
	ldr	r3, .L104
	mov	r2, #0
	str	r2, [r3, #76]
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
.L105:
	.align	2
.L104:
	.word	mino
	.size	mino_i, .-mino_i
	.align	2
	.global	mino_o
	.type	mino_o, %function
mino_o:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	ldr	r3, .L107
	mov	r2, #2
	str	r2, [r3, #12]
	ldr	r3, .L107
	mov	r2, #2
	str	r2, [r3, #8]
	ldr	r3, .L107
	mov	r2, #1
	str	r2, [r3, #16]
	ldr	r3, .L107
	mov	r2, #1
	str	r2, [r3, #20]
	ldr	r3, .L107
	mov	r2, #1
	str	r2, [r3, #32]
	ldr	r3, .L107
	mov	r2, #1
	str	r2, [r3, #36]
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
.L108:
	.align	2
.L107:
	.word	mino
	.size	mino_o, .-mino_o
	.align	2
	.global	mino_t
	.type	mino_t, %function
mino_t:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	ldr	r3, .L110
	mov	r2, #3
	str	r2, [r3, #12]
	ldr	r3, .L110
	mov	r2, #3
	str	r2, [r3, #8]
	ldr	r3, .L110
	mov	r2, #0
	str	r2, [r3, #16]
	ldr	r3, .L110
	mov	r2, #1
	str	r2, [r3, #20]
	ldr	r3, .L110
	mov	r2, #0
	str	r2, [r3, #24]
	ldr	r3, .L110
	mov	r2, #1
	str	r2, [r3, #32]
	ldr	r3, .L110
	mov	r2, #1
	str	r2, [r3, #36]
	ldr	r3, .L110
	mov	r2, #1
	str	r2, [r3, #40]
	ldr	r3, .L110
	mov	r2, #0
	str	r2, [r3, #48]
	ldr	r3, .L110
	mov	r2, #0
	str	r2, [r3, #52]
	ldr	r3, .L110
	mov	r2, #0
	str	r2, [r3, #56]
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
.L111:
	.align	2
.L110:
	.word	mino
	.size	mino_t, .-mino_t
	.align	2
	.global	mino_s
	.type	mino_s, %function
mino_s:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	ldr	r3, .L113
	mov	r2, #3
	str	r2, [r3, #12]
	ldr	r3, .L113
	mov	r2, #3
	str	r2, [r3, #8]
	ldr	r3, .L113
	mov	r2, #0
	str	r2, [r3, #16]
	ldr	r3, .L113
	mov	r2, #1
	str	r2, [r3, #20]
	ldr	r3, .L113
	mov	r2, #1
	str	r2, [r3, #24]
	ldr	r3, .L113
	mov	r2, #1
	str	r2, [r3, #32]
	ldr	r3, .L113
	mov	r2, #1
	str	r2, [r3, #36]
	ldr	r3, .L113
	mov	r2, #0
	str	r2, [r3, #40]
	ldr	r3, .L113
	mov	r2, #0
	str	r2, [r3, #48]
	ldr	r3, .L113
	mov	r2, #0
	str	r2, [r3, #52]
	ldr	r3, .L113
	mov	r2, #0
	str	r2, [r3, #56]
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
.L114:
	.align	2
.L113:
	.word	mino
	.size	mino_s, .-mino_s
	.align	2
	.global	mino_z
	.type	mino_z, %function
mino_z:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	ldr	r3, .L116
	mov	r2, #3
	str	r2, [r3, #12]
	ldr	r3, .L116
	mov	r2, #3
	str	r2, [r3, #8]
	ldr	r3, .L116
	mov	r2, #1
	str	r2, [r3, #16]
	ldr	r3, .L116
	mov	r2, #1
	str	r2, [r3, #20]
	ldr	r3, .L116
	mov	r2, #0
	str	r2, [r3, #24]
	ldr	r3, .L116
	mov	r2, #0
	str	r2, [r3, #32]
	ldr	r3, .L116
	mov	r2, #1
	str	r2, [r3, #36]
	ldr	r3, .L116
	mov	r2, #1
	str	r2, [r3, #40]
	ldr	r3, .L116
	mov	r2, #0
	str	r2, [r3, #48]
	ldr	r3, .L116
	mov	r2, #0
	str	r2, [r3, #52]
	ldr	r3, .L116
	mov	r2, #0
	str	r2, [r3, #56]
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
.L117:
	.align	2
.L116:
	.word	mino
	.size	mino_z, .-mino_z
	.align	2
	.global	mino_j
	.type	mino_j, %function
mino_j:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	ldr	r3, .L119
	mov	r2, #3
	str	r2, [r3, #12]
	ldr	r3, .L119
	mov	r2, #3
	str	r2, [r3, #8]
	ldr	r3, .L119
	mov	r2, #1
	str	r2, [r3, #16]
	ldr	r3, .L119
	mov	r2, #0
	str	r2, [r3, #20]
	ldr	r3, .L119
	mov	r2, #0
	str	r2, [r3, #24]
	ldr	r3, .L119
	mov	r2, #1
	str	r2, [r3, #32]
	ldr	r3, .L119
	mov	r2, #1
	str	r2, [r3, #36]
	ldr	r3, .L119
	mov	r2, #1
	str	r2, [r3, #40]
	ldr	r3, .L119
	mov	r2, #0
	str	r2, [r3, #48]
	ldr	r3, .L119
	mov	r2, #0
	str	r2, [r3, #52]
	ldr	r3, .L119
	mov	r2, #0
	str	r2, [r3, #56]
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
.L120:
	.align	2
.L119:
	.word	mino
	.size	mino_j, .-mino_j
	.align	2
	.global	mino_l
	.type	mino_l, %function
mino_l:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	ldr	r3, .L122
	mov	r2, #3
	str	r2, [r3, #12]
	ldr	r3, .L122
	mov	r2, #3
	str	r2, [r3, #8]
	ldr	r3, .L122
	mov	r2, #0
	str	r2, [r3, #16]
	ldr	r3, .L122
	mov	r2, #0
	str	r2, [r3, #20]
	ldr	r3, .L122
	mov	r2, #1
	str	r2, [r3, #24]
	ldr	r3, .L122
	mov	r2, #1
	str	r2, [r3, #32]
	ldr	r3, .L122
	mov	r2, #1
	str	r2, [r3, #36]
	ldr	r3, .L122
	mov	r2, #1
	str	r2, [r3, #40]
	ldr	r3, .L122
	mov	r2, #0
	str	r2, [r3, #48]
	ldr	r3, .L122
	mov	r2, #0
	str	r2, [r3, #52]
	ldr	r3, .L122
	mov	r2, #0
	str	r2, [r3, #56]
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
.L123:
	.align	2
.L122:
	.word	mino
	.size	mino_l, .-mino_l
	.align	2
	.global	create_mino
	.type	create_mino, %function
create_mino:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L125
.L129:
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L126
.L128:
	ldr	r1, .L137
	ldr	r3, [fp, #-12]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-8]
	add	r3, r2, r3
	add	r3, r3, #4
	ldr	r3, [r1, r3, asl #2]
	cmp	r3, #0
	beq	.L127
	ldr	r3, .L137
	ldr	r2, [r3]
	ldr	r3, [fp, #-12]
	add	r2, r2, r3
	ldr	r3, .L137
	ldr	r1, [r3, #4]
	ldr	r3, [fp, #-8]
	add	r1, r1, r3
	ldr	r0, .L137+4
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r1
	mov	r2, #1
	str	r2, [r0, r3, asl #2]
.L127:
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L126:
	ldr	r3, .L137
	ldr	r2, [r3, #8]
	ldr	r3, [fp, #-8]
	cmp	r2, r3
	bgt	.L128
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L125:
	ldr	r3, .L137
	ldr	r2, [r3, #12]
	ldr	r3, [fp, #-12]
	cmp	r2, r3
	bgt	.L129
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L130
.L136:
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L131
.L135:
	ldr	r1, .L137+4
	ldr	r2, [fp, #-12]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-8]
	add	r3, r3, r2
	ldr	r3, [r1, r3, asl #2]
	cmp	r3, #1
	beq	.L132
	ldr	r1, .L137+8
	ldr	r2, [fp, #-12]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-8]
	add	r3, r3, r2
	ldr	r3, [r1, r3, asl #2]
	cmp	r3, #1
	bne	.L133
.L132:
	mov	r3, #1
	b	.L134
.L133:
	mov	r3, #2
.L134:
	str	r3, [fp, #-16]
	ldr	r0, [fp, #-8]
	ldr	r1, [fp, #-12]
	ldr	r2, [fp, #-16]
	bl	draw_mino
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L131:
	ldr	r3, [fp, #-8]
	cmp	r3, #11
	ble	.L135
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L130:
	ldr	r3, [fp, #-12]
	cmp	r3, #21
	ble	.L136
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, lr}
	bx	lr
.L138:
	.align	2
.L137:
	.word	mino
	.word	screen
	.word	field
	.size	create_mino, .-create_mino
	.align	2
	.global	draw_mino
	.type	draw_mino, %function
draw_mino:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #24
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	ldr	r3, [fp, #-24]
	cmp	r3, #1
	bne	.L140
	mov	r3, #992
	b	.L141
.L140:
	mov	r3, #0
.L141:
	strh	r3, [fp, #-6]	@ movhi
	ldr	r2, [fp, #-16]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #1
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-20]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #1
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-16]
	add	r3, r3, #86
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-20]
	add	r3, r3, #20
	str	r3, [fp, #-20]
	ldrh	r3, [fp, #-6]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldr	r0, [fp, #-16]
	ldr	r1, [fp, #-20]
	mov	r2, r3
	bl	draw_square
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, lr}
	bx	lr
	.size	draw_mino, .-draw_mino
	.align	2
	.global	create_wall
	.type	create_wall, %function
create_wall:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #24
	mvn	r3, #63488
	strh	r3, [fp, #-22]	@ movhi
	mov	r3, #80
	str	r3, [fp, #-12]
	mov	r3, #158
	str	r3, [fp, #-16]
	mov	r3, #20
	str	r3, [fp, #-20]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L143
.L144:
	ldr	r2, [fp, #-8]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #1
	mov	r2, r3
	ldr	r3, [fp, #-20]
	add	r2, r2, r3
	ldrh	r3, [fp, #-22]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldr	r0, [fp, #-12]
	mov	r1, r2
	mov	r2, r3
	bl	draw_square
	ldr	r2, [fp, #-8]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #1
	mov	r2, r3
	ldr	r3, [fp, #-20]
	add	r2, r2, r3
	ldrh	r3, [fp, #-22]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldr	r0, [fp, #-16]
	mov	r1, r2
	mov	r2, r3
	bl	draw_square
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L143:
	ldr	r3, [fp, #-8]
	cmp	r3, #22
	ble	.L144
	ldr	r3, [fp, #-20]
	add	r3, r3, #132
	str	r3, [fp, #-20]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L145
.L146:
	ldr	r2, [fp, #-8]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #1
	mov	r2, r3
	ldr	r3, [fp, #-12]
	add	r2, r2, r3
	ldrh	r3, [fp, #-22]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r2
	ldr	r1, [fp, #-20]
	mov	r2, r3
	bl	draw_square
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L145:
	ldr	r3, [fp, #-8]
	cmp	r3, #12
	ble	.L146
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, lr}
	bx	lr
	.size	create_wall, .-create_wall
	.align	2
	.global	draw_square
	.type	draw_square, %function
draw_square:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #36
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	mov	r3, r2
	strh	r3, [fp, #-30]	@ movhi
	mov	r3, #100663296
	str	r3, [fp, #-8]
	ldr	r2, [fp, #-28]
	mov	r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asl #4
	mov	r2, r3
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-8]
	add	r3, r2, r3
	str	r3, [fp, #-8]
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L148
.L151:
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L149
.L150:
	ldrh	r3, [fp, #-30]	@ movhi
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r3, [fp, #-8]
	strh	r2, [r3]	@ movhi
	ldr	r3, [fp, #-8]
	add	r3, r3, #2
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L149:
	ldr	r3, [fp, #-16]
	cmp	r3, #4
	ble	.L150
	ldr	r3, [fp, #-8]
	add	r3, r3, #468
	add	r3, r3, #2
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L148:
	ldr	r3, [fp, #-12]
	cmp	r3, #4
	ble	.L151
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	draw_square, .-draw_square
	.ident	"GCC: (devkitARM release 44) 4.9.2"
