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
	.file	"ex5.c"
	.comm	mino_width,4,4
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
	ldr	r3, .L6
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-16]
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-20]	@ movhi
	mov	r3, #8
	strh	r3, [fp, #-22]	@ movhi
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
	bl	second
.L4:
	b	.L5
.L7:
	.align	2
.L6:
	.word	67109168
	.word	3843
	.size	main, .-main
	.align	2
	.global	second
	.type	second, %function
second:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #24
	mov	r3, #86
	strh	r3, [fp, #-20]	@ movhi
	mov	r3, #20
	strh	r3, [fp, #-22]	@ movhi
	mvn	r3, #63488
	strh	r3, [fp, #-18]	@ movhi
	mov	r3, #100663296
	str	r3, [fp, #-8]
	mov	r3, #0
	str	r3, [fp, #-16]
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L9
.L10:
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
.L9:
	ldr	r3, [fp, #-12]
	cmp	r3, #38400
	blt	.L10
	bl	create_wall
.L13:
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
	ldr	r0, [fp, #-16]
	bl	move_mino
	ldr	r3, [fp, #-16]
	cmp	r3, #4
	bne	.L11
	ldr	r3, [fp, #-16]
	sub	r3, r3, #4
	b	.L12
.L11:
	ldr	r3, [fp, #-16]
.L12:
	str	r3, [fp, #-16]
	b	.L13
	.size	second, .-second
	.align	2
	.global	draw_square
	.type	draw_square, %function
draw_square:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #28
	mov	r3, r2
	strh	r0, [fp, #-22]	@ movhi
	strh	r1, [fp, #-24]	@ movhi
	strh	r3, [fp, #-26]	@ movhi
	mov	r3, #100663296
	str	r3, [fp, #-8]
	ldrh	r3, [fp, #-24]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r2, r3
	mov	r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asl #4
	mov	r2, r3
	ldrh	r3, [fp, #-22]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r2, r3
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-8]
	add	r3, r2, r3
	str	r3, [fp, #-8]
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L15
.L18:
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L16
.L17:
	ldrh	r3, [fp, #-26]	@ movhi
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
.L16:
	ldr	r3, [fp, #-16]
	cmp	r3, #4
	ble	.L17
	ldr	r3, [fp, #-8]
	add	r3, r3, #468
	add	r3, r3, #2
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L15:
	ldr	r3, [fp, #-12]
	cmp	r3, #4
	ble	.L18
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	draw_square, .-draw_square
	.align	2
	.global	create_wall
	.type	create_wall, %function
create_wall:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	mov	r3, #0
	strh	r3, [fp, #-16]	@ movhi
	mov	r3, #80
	strh	r3, [fp, #-10]	@ movhi
	mov	r3, #158
	strh	r3, [fp, #-12]	@ movhi
	mov	r3, #20
	strh	r3, [fp, #-14]	@ movhi
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L20
.L21:
	ldrh	r3, [fp, #-10]	@ movhi
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r2, r3	@ movhi
	mov	r2, r2, asl #1
	add	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-14]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r2, r3
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-16]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	draw_square
	ldrh	r3, [fp, #-12]	@ movhi
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r2, r3	@ movhi
	mov	r2, r2, asl #1
	add	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-14]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r2, r3
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-16]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	draw_square
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L20:
	ldr	r3, [fp, #-8]
	cmp	r3, #22
	ble	.L21
	ldrh	r3, [fp, #-14]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #132
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-14]	@ movhi
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L22
.L23:
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r2, r3	@ movhi
	mov	r2, r2, asl #1
	add	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-10]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r2, r3
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldrh	r3, [fp, #-14]	@ movhi
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-16]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	draw_square
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L22:
	ldr	r3, [fp, #-8]
	cmp	r3, #12
	ble	.L23
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, lr}
	bx	lr
	.size	create_wall, .-create_wall
	.align	2
	.global	create_mino
	.type	create_mino, %function
create_mino:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #24
	str	r2, [fp, #-20]
	str	r3, [fp, #-24]
	strh	r0, [fp, #-14]	@ movhi
	strh	r1, [fp, #-16]	@ movhi
	ldr	r3, [fp, #-20]
	cmp	r3, #1
	bne	.L25
	mov	r3, #992
	strh	r3, [fp, #-6]	@ movhi
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	bne	.L26
	mvn	r3, #63488
	strh	r3, [fp, #-6]	@ movhi
.L26:
	ldrh	r3, [fp, #-14]	@ movhi
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldrh	r3, [fp, #-16]	@ movhi
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-6]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	create_mino1
	b	.L24
.L25:
	ldr	r3, [fp, #-20]
	cmp	r3, #2
	bne	.L28
	mov	r3, #31
	strh	r3, [fp, #-6]	@ movhi
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	bne	.L29
	mvn	r3, #63488
	strh	r3, [fp, #-6]	@ movhi
.L29:
	ldrh	r3, [fp, #-14]	@ movhi
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldrh	r3, [fp, #-16]	@ movhi
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-6]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	create_mino2
	b	.L24
.L28:
	ldr	r3, [fp, #-20]
	cmp	r3, #3
	bne	.L30
	mov	r3, #31744
	strh	r3, [fp, #-6]	@ movhi
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	bne	.L31
	mvn	r3, #63488
	strh	r3, [fp, #-6]	@ movhi
.L31:
	ldrh	r3, [fp, #-14]	@ movhi
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldrh	r3, [fp, #-16]	@ movhi
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-6]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	create_mino3
	b	.L24
.L30:
	ldr	r3, [fp, #-20]
	cmp	r3, #4
	bne	.L24
	ldr	r3, .L33
	strh	r3, [fp, #-6]	@ movhi
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	bne	.L32
	mvn	r3, #63488
	strh	r3, [fp, #-6]	@ movhi
.L32:
	ldrh	r3, [fp, #-14]	@ movhi
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldrh	r3, [fp, #-16]	@ movhi
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-6]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	create_mino4
.L24:
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, lr}
	bx	lr
.L34:
	.align	2
.L33:
	.word	4383
	.size	create_mino, .-create_mino
	.align	2
	.global	create_mino1
	.type	create_mino1, %function
create_mino1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	mov	r3, r2
	strh	r0, [fp, #-6]	@ movhi
	strh	r1, [fp, #-8]	@ movhi
	strh	r3, [fp, #-10]	@ movhi
	ldrh	r3, [fp, #-6]	@ movhi
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldrh	r3, [fp, #-8]	@ movhi
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-10]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	draw_square
	ldrh	r3, [fp, #-6]	@ movhi
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldrh	r3, [fp, #-8]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-10]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	draw_square
	ldrh	r3, [fp, #-6]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldrh	r3, [fp, #-8]	@ movhi
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-10]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	draw_square
	ldrh	r3, [fp, #-6]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldrh	r3, [fp, #-8]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-10]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	draw_square
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, lr}
	bx	lr
	.size	create_mino1, .-create_mino1
	.align	2
	.global	create_mino2
	.type	create_mino2, %function
create_mino2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	mov	r3, r2
	strh	r0, [fp, #-6]	@ movhi
	strh	r1, [fp, #-8]	@ movhi
	strh	r3, [fp, #-10]	@ movhi
	ldrh	r3, [fp, #-6]	@ movhi
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldrh	r3, [fp, #-8]	@ movhi
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-10]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	draw_square
	ldrh	r3, [fp, #-6]	@ movhi
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldrh	r3, [fp, #-8]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-10]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	draw_square
	ldrh	r3, [fp, #-6]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldrh	r3, [fp, #-8]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #12
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-10]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	draw_square
	ldrh	r3, [fp, #-6]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldrh	r3, [fp, #-8]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-10]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	draw_square
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, lr}
	bx	lr
	.size	create_mino2, .-create_mino2
	.align	2
	.global	create_mino3
	.type	create_mino3, %function
create_mino3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	mov	r3, r2
	strh	r0, [fp, #-6]	@ movhi
	strh	r1, [fp, #-8]	@ movhi
	strh	r3, [fp, #-10]	@ movhi
	ldrh	r3, [fp, #-6]	@ movhi
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldrh	r3, [fp, #-8]	@ movhi
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-10]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	draw_square
	ldrh	r3, [fp, #-6]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #12
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldrh	r3, [fp, #-8]	@ movhi
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-10]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	draw_square
	ldrh	r3, [fp, #-6]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldrh	r3, [fp, #-8]	@ movhi
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-10]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	draw_square
	ldrh	r3, [fp, #-6]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldrh	r3, [fp, #-8]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-10]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	draw_square
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, lr}
	bx	lr
	.size	create_mino3, .-create_mino3
	.align	2
	.global	create_mino4
	.type	create_mino4, %function
create_mino4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	mov	r3, r2
	strh	r0, [fp, #-6]	@ movhi
	strh	r1, [fp, #-8]	@ movhi
	strh	r3, [fp, #-10]	@ movhi
	ldrh	r3, [fp, #-6]	@ movhi
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldrh	r3, [fp, #-8]	@ movhi
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-10]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	draw_square
	ldrh	r3, [fp, #-6]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #12
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldrh	r3, [fp, #-8]	@ movhi
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-10]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	draw_square
	ldrh	r3, [fp, #-6]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldrh	r3, [fp, #-8]	@ movhi
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-10]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	draw_square
	ldrh	r3, [fp, #-6]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #12
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldrh	r3, [fp, #-8]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-10]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	draw_square
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, lr}
	bx	lr
	.size	create_mino4, .-create_mino4
	.align	2
	.global	move_mino
	.type	move_mino, %function
move_mino:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #56
	str	r0, [fp, #-56]
	mov	r3, #122
	str	r3, [fp, #-8]
	mov	r3, #20
	str	r3, [fp, #-12]
	mov	r3, #89
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-56]
	cmp	r3, #1
	bne	.L40
	mov	r3, #145
	b	.L41
.L40:
	mov	r3, #138
.L41:
	str	r3, [fp, #-24]
	mov	r3, #64
	strh	r3, [fp, #-38]	@ movhi
	mov	r3, #128
	strh	r3, [fp, #-40]	@ movhi
	mov	r3, #16
	strh	r3, [fp, #-42]	@ movhi
	mov	r3, #32
	strh	r3, [fp, #-44]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-48]	@ movhi
	mvn	r3, #63488
	strh	r3, [fp, #-50]	@ movhi
	ldr	r3, .L59
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-28]
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-46]	@ movhi
	ldrh	r3, [fp, #-46]	@ movhi
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
	beq	.L42
	bl	second
.L42:
	b	.L43
.L58:
	ldr	r3, .L59
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-28]
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-46]	@ movhi
	ldrh	r3, [fp, #-46]	@ movhi
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
	beq	.L44
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [fp, #-56]
	mov	r3, #0
	bl	create_mino
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-24]
	cmp	r2, r3
	bge	.L45
	ldr	r3, [fp, #-8]
	add	r3, r3, #6
	str	r3, [fp, #-8]
.L45:
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [fp, #-56]
	mov	r3, #1
	bl	create_mino
	b	.L46
.L44:
	ldrh	r3, [fp, #-46]	@ movhi
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
	beq	.L46
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [fp, #-56]
	mov	r3, #0
	bl	create_mino
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-8]
	cmp	r2, r3
	bge	.L47
	ldr	r3, [fp, #-8]
	sub	r3, r3, #6
	str	r3, [fp, #-8]
.L47:
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [fp, #-56]
	mov	r3, #1
	bl	create_mino
.L46:
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L48
.L49:
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L48:
	ldr	r3, [fp, #-16]
	ldr	r2, .L59+4
	cmp	r3, r2
	ble	.L49
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [fp, #-56]
	mov	r3, #0
	bl	create_mino
	ldr	r3, [fp, #-12]
	add	r3, r3, #6
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [fp, #-56]
	mov	r3, #1
	bl	create_mino
	mov	r3, #100663296
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-12]
	add	r2, r3, #6
	mov	r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asl #4
	mov	r2, r3
	ldr	r3, [fp, #-8]
	add	r3, r2, r3
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-36]
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-32]
	add	r3, r2, r3
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-32]
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldr	r2, .L59+8
	cmp	r3, r2
	beq	.L50
	b	.L39
.L50:
	ldr	r3, [fp, #-56]
	cmp	r3, #2
	bne	.L52
	mov	r3, #0
	b	.L53
.L52:
	mov	r3, #12
.L53:
	ldr	r2, [fp, #-32]
	add	r3, r2, r3
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-32]
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldr	r2, .L59+8
	cmp	r3, r2
	beq	.L54
	b	.L39
.L54:
	ldr	r3, [fp, #-56]
	cmp	r3, #1
	beq	.L55
	ldr	r3, [fp, #-56]
	cmp	r3, #2
	bne	.L56
.L55:
	mov	r3, #0
	b	.L57
.L56:
	mov	r3, #12
.L57:
	ldr	r2, [fp, #-32]
	add	r3, r2, r3
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-32]
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldr	r2, .L59+8
	cmp	r3, r2
	beq	.L43
	b	.L39
.L43:
	ldr	r3, [fp, #-12]
	cmp	r3, #145
	ble	.L58
.L39:
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, lr}
	bx	lr
.L60:
	.align	2
.L59:
	.word	67109168
	.word	99999
	.word	2047
	.size	move_mino, .-move_mino
	.ident	"GCC: (devkitARM release 44) 4.9.2"
