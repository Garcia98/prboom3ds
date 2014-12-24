	.arch armv6k
	.fpu softvfp
	.eabi_attribute 23, 1
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"ds_vid.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	2
	.global	I_ShutdownGraphics
	.type	I_ShutdownGraphics, %function
I_ShutdownGraphics:
.LFB20:
	.file 1 "c:/devl/prboom3ds/arm9/source/ds_vid.c"
	.loc 1 680 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.cfi_endproc
.LFE20:
	.size	I_ShutdownGraphics, .-I_ShutdownGraphics
	.align	2
	.global	DS_Controls
	.type	DS_Controls, %function
DS_Controls:
.LFB7:
	.loc 1 42 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 42 0
	stmfd	sp!, {r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #20
	.cfi_def_cfa_offset 40
	.loc 1 45 0
	bl	hidScanInput
.LVL0:
	.loc 1 46 0
	bl	hidKeysDown
.LVL1:
	mov	r6, r0
.LVL2:
	.loc 1 47 0
	bl	hidKeysHeld
.LVL3:
	uxth	r4, r6
	.loc 1 62 0
	tst	r4, #64
	uxth	r5, r0
	bne	.L127
.LVL4:
.L3:
	.loc 1 70 0
	tst	r4, #32
	bne	.L128
.L4:
	.loc 1 78 0
	tst	r6, #128
	bne	.L129
.L5:
	.loc 1 86 0
	tst	r4, #16
	bne	.L130
.L6:
	.loc 1 94 0
	tst	r4, #8
	bne	.L131
.L7:
	.loc 1 102 0
	tst	r4, #4
	bne	.L132
.L8:
	.loc 1 109 0
	tst	r4, #1
	beq	.L9
.LBB10:
	.loc 1 112 0
	mov	r2, #0
	.loc 1 113 0
	ldr	r3, .L149
	.loc 1 115 0
	mov	r0, sp
	.loc 1 113 0
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 112 0
	strb	r2, [sp]
	.loc 1 113 0
	cmp	r3, r2
	movne	r3, #13
	.loc 1 114 0
	moveq	r3, #157
	str	r3, [sp, #4]
	.loc 1 115 0
	bl	D_PostEvent
.LVL5:
.L9:
.LBE10:
	.loc 1 118 0
	tst	r4, #2
	beq	.L12
.LBB11:
	.loc 1 121 0
	mov	r2, #0
	.loc 1 122 0
	ldr	r3, .L149
	.loc 1 124 0
	mov	r0, sp
	.loc 1 122 0
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 121 0
	strb	r2, [sp]
	.loc 1 122 0
	cmp	r3, r2
	movne	r3, #27
	.loc 1 123 0
	moveq	r3, #32
	str	r3, [sp, #4]
	.loc 1 124 0
	bl	D_PostEvent
.LVL6:
.L12:
.LBE11:
	.loc 1 127 0
	tst	r4, #1024
	bne	.L133
.L15:
	.loc 1 135 0
	tst	r4, #2048
	beq	.L16
.LBB12:
	.loc 1 159 0
	ldr	r3, .L149+4
	ldr	r7, .L149+8
	ldr	r3, [r3]
	.loc 1 142 0
	ldr	lr, .L149+12
	ldr	r2, [r7]
	.loc 1 159 0
	add	r0, r3, r3, asl #3
	.loc 1 142 0
	ldrb	r6, [lr]	@ zero_extendqisi2
.LVL7:
	.loc 1 159 0
	mov	r1, r2
	ldrb	ip, [r7, #4]	@ zero_extendqisi2
	ldr	lr, .L149+16
	rsb	r0, r3, r0, asl #3
	b	.L21
.LVL8:
.L17:
	.loc 1 154 0
	add	r1, r2, #1
	.loc 1 158 0
	cmp	r1, #8
	.loc 1 155 0
	movgt	ip, #0
	movle	r2, r1
	.loc 1 158 0
	movgt	r1, ip
	movgt	r2, ip
	.loc 1 155 0
	movle	ip, #0
.L20:
.LVL9:
	.loc 1 159 0
	add	r3, r0, r2
	add	r3, lr, r3, asl #2
	.loc 1 139 0
	ldr	r3, [r3, #124]
	cmp	r3, #0
	bne	.L134
.L21:
.LVL10:
	.loc 1 142 0
	cmp	r6, #1
	bne	.L17
	.loc 1 142 0 is_stmt 0 discriminator 1
	cmp	r2, #2
	bne	.L17
	.loc 1 144 0 is_stmt 1
	cmp	ip, #0
	.loc 1 148 0
	movne	r1, #3
	.loc 1 158 0
	mov	ip, #1
	movne	r2, r1
	b	.L20
.LVL11:
.L134:
	.loc 1 163 0
	mov	r3, #0
	.loc 1 164 0
	ldr	r0, .L149+20
	.loc 1 163 0
	strb	r3, [sp]
	.loc 1 164 0
	ldrb	r2, [r0, r2]	@ zero_extendqisi2
	.loc 1 165 0
	mov	r0, sp
	strb	ip, [r7, #4]
	str	r1, [r7]
	.loc 1 164 0
	str	r2, [sp, #4]
	.loc 1 165 0
	bl	D_PostEvent
.LVL12:
	.loc 1 166 0
	mov	r3, #121
	.loc 1 167 0
	mov	r0, sp
	.loc 1 165 0
	mov	r6, sp
	.loc 1 166 0
	str	r3, [sp, #4]
	.loc 1 167 0
	bl	D_PostEvent
.LVL13:
.L16:
.LBE12:
	.loc 1 170 0
	tst	r4, #256
	beq	.L22
	.loc 1 171 0
	ands	r5, r5, #2
.LVL14:
	beq	.L135
.L24:
	.loc 1 189 0
	bl	hidKeysUp
.LVL15:
	uxth	r4, r0
.LVL16:
	.loc 1 191 0
	tst	r4, #64
	.loc 1 189 0
	mov	r5, r0
.LVL17:
	.loc 1 191 0
	bne	.L136
	.loc 1 199 0
	tst	r4, #32
	bne	.L137
.LVL18:
.L28:
	.loc 1 207 0
	tst	r5, #128
	bne	.L138
.L29:
	.loc 1 215 0
	tst	r4, #16
	bne	.L139
.L30:
	.loc 1 223 0
	tst	r4, #8
	bne	.L140
.L31:
	.loc 1 231 0
	tst	r4, #4
	bne	.L141
.L32:
	.loc 1 239 0
	tst	r4, #1
	bne	.L142
.L33:
	.loc 1 247 0
	tst	r4, #2
	bne	.L143
.L34:
	.loc 1 255 0
	tst	r4, #1024
	bne	.L144
.L35:
	.loc 1 263 0
	tst	r4, #2048
	bne	.L145
.L36:
	.loc 1 273 0
	tst	r4, #256
	bne	.L146
	.loc 1 281 0
	tst	r4, #512
	bne	.L147
.L38:
	.loc 1 289 0
	bl	hidKeysDown
.LVL19:
	tst	r0, #1048576
	bne	.L148
.LVL20:
.L39:
	.loc 1 296 0
	bl	hidKeysHeld
.LVL21:
	tst	r0, #1048576
	beq	.L2
.LBB13:
	.loc 1 301 0
	ldr	r4, .L149+8
	add	r0, r4, #12
	bl	hidTouchRead
.LVL22:
	.loc 1 311 0
	mov	ip, #0
	.loc 1 309 0
	mov	lr, #2
	.loc 1 303 0
	ldrh	r2, [r4, #12]
	.loc 1 306 0
	ldrh	r3, [r4, #8]
	.loc 1 303 0
	mov	r2, r2, asl #7
	uxth	r2, r2
	.loc 1 304 0
	ldrh	r1, [r4, #14]
	.loc 1 306 0
	rsb	r3, r3, r2
	mov	r3, r3, asr #6
.LVL23:
	.loc 1 304 0
	mov	r1, r1, asl #7
	.loc 1 312 0
	mov	r3, r3, asl #5
.LVL24:
	.loc 1 315 0
	mov	r0, sp
	.loc 1 304 0
	strh	r1, [r4, #14]	@ movhi
	.loc 1 303 0
	strh	r2, [r4, #12]	@ movhi
	.loc 1 312 0
	str	r3, [sp, #8]
	.loc 1 309 0
	strb	lr, [sp]
	.loc 1 311 0
	str	ip, [sp, #4]
	.loc 1 314 0
	str	ip, [sp, #12]
	.loc 1 315 0
	bl	D_PostEvent
.LVL25:
	.loc 1 317 0
	ldrh	r2, [r4, #8]
	.loc 1 318 0
	ldrh	r3, [r4, #10]
	.loc 1 317 0
	ldrh	r0, [r4, #12]
	.loc 1 318 0
	ldrh	r1, [r4, #14]
	.loc 1 317 0
	add	r2, r2, r0
	.loc 1 318 0
	add	r3, r3, r1
	.loc 1 317 0
	mov	r2, r2, asr #1
	.loc 1 318 0
	mov	r3, r3, asr #1
	.loc 1 317 0
	strh	r2, [r4, #8]	@ movhi
	.loc 1 318 0
	strh	r3, [r4, #10]	@ movhi
.L2:
.LBE13:
	.loc 1 321 0
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.LVL26:
.L22:
	.cfi_restore_state
	.loc 1 179 0
	tst	r4, #512
	beq	.L24
	.loc 1 181 0
	tst	r5, #2
	moveq	r6, sp
	bne	.L24
.LVL27:
.L26:
.LBB14:
	.loc 1 183 0
	mov	r2, #0
	.loc 1 184 0
	mov	r3, #44
	.loc 1 185 0
	mov	r0, r6
	.loc 1 183 0
	strb	r2, [sp]
	.loc 1 184 0
	str	r3, [sp, #4]
	.loc 1 185 0
	bl	D_PostEvent
.LVL28:
	b	.L24
.L146:
.LBE14:
.LBB15:
	.loc 1 276 0
	mov	r2, #1
	.loc 1 277 0
	mov	r3, #46
	.loc 1 278 0
	mov	r0, sp
	.loc 1 276 0
	strb	r2, [sp]
	.loc 1 277 0
	str	r3, [sp, #4]
	.loc 1 278 0
	bl	D_PostEvent
.LVL29:
.LBE15:
	.loc 1 281 0
	tst	r4, #512
	beq	.L38
.L147:
.LBB16:
	.loc 1 284 0
	mov	r2, #1
	.loc 1 285 0
	mov	r3, #44
	.loc 1 286 0
	mov	r0, sp
	.loc 1 284 0
	strb	r2, [sp]
	.loc 1 285 0
	str	r3, [sp, #4]
	.loc 1 286 0
	bl	D_PostEvent
.LVL30:
.LBE16:
	.loc 1 289 0
	bl	hidKeysDown
.LVL31:
	tst	r0, #1048576
	beq	.L39
.L148:
	.loc 1 291 0
	ldr	r4, .L149+8
.LVL32:
	add	r0, r4, #8
	bl	hidTouchRead
.LVL33:
	.loc 1 292 0
	ldrh	r2, [r4, #8]
	.loc 1 293 0
	ldrh	r3, [r4, #10]
	.loc 1 292 0
	mov	r2, r2, asl #7
	.loc 1 293 0
	mov	r3, r3, asl #7
	.loc 1 292 0
	strh	r2, [r4, #8]	@ movhi
	.loc 1 293 0
	strh	r3, [r4, #10]	@ movhi
	b	.L39
.LVL34:
.L145:
.LBB17:
	.loc 1 266 0
	mov	r3, #1
	.loc 1 267 0
	ldr	r2, .L149+8
	ldr	r1, .L149+20
	ldr	r2, [r2]
	.loc 1 268 0
	mov	r0, sp
	.loc 1 267 0
	ldrb	r2, [r1, r2]	@ zero_extendqisi2
	.loc 1 266 0
	strb	r3, [sp]
	.loc 1 267 0
	str	r2, [sp, #4]
	.loc 1 268 0
	bl	D_PostEvent
.LVL35:
	.loc 1 269 0
	mov	r3, #121
	.loc 1 270 0
	mov	r0, sp
	.loc 1 269 0
	str	r3, [sp, #4]
	.loc 1 270 0
	bl	D_PostEvent
.LVL36:
	b	.L36
.L144:
.LBE17:
.LBB18:
	.loc 1 258 0
	mov	r2, #1
	.loc 1 259 0
	mov	r3, #182
	.loc 1 260 0
	mov	r0, sp
	.loc 1 258 0
	strb	r2, [sp]
	.loc 1 259 0
	str	r3, [sp, #4]
	.loc 1 260 0
	bl	D_PostEvent
.LVL37:
	b	.L35
.L143:
.LBE18:
.LBB19:
	.loc 1 250 0
	mov	r2, #1
	.loc 1 251 0
	mov	r3, #32
	.loc 1 252 0
	mov	r0, sp
	.loc 1 250 0
	strb	r2, [sp]
	.loc 1 251 0
	str	r3, [sp, #4]
	.loc 1 252 0
	bl	D_PostEvent
.LVL38:
	b	.L34
.LVL39:
.L133:
.LBE19:
.LBB20:
	.loc 1 130 0
	mov	r2, #0
	.loc 1 131 0
	mov	r3, #182
	.loc 1 132 0
	mov	r0, sp
	.loc 1 130 0
	strb	r2, [sp]
	.loc 1 131 0
	str	r3, [sp, #4]
	.loc 1 132 0
	bl	D_PostEvent
.LVL40:
	b	.L15
.LVL41:
.L136:
.LBE20:
.LBB21:
	.loc 1 194 0
	mov	r2, #1
	.loc 1 195 0
	mov	r3, #173
	.loc 1 196 0
	mov	r0, sp
.LVL42:
	.loc 1 194 0
	strb	r2, [sp]
	.loc 1 195 0
	str	r3, [sp, #4]
	.loc 1 196 0
	bl	D_PostEvent
.LVL43:
.LBE21:
	.loc 1 199 0
	tst	r4, #32
	beq	.L28
.L137:
.LBB22:
	.loc 1 202 0
	mov	r2, #1
	.loc 1 203 0
	mov	r3, #172
	.loc 1 204 0
	mov	r0, sp
	.loc 1 202 0
	strb	r2, [sp]
	.loc 1 203 0
	str	r3, [sp, #4]
	.loc 1 204 0
	bl	D_PostEvent
.LVL44:
.LBE22:
	.loc 1 207 0
	tst	r5, #128
	beq	.L29
.L138:
.LBB23:
	.loc 1 210 0
	mov	r2, #1
	.loc 1 211 0
	mov	r3, #175
	.loc 1 212 0
	mov	r0, sp
	.loc 1 210 0
	strb	r2, [sp]
	.loc 1 211 0
	str	r3, [sp, #4]
	.loc 1 212 0
	bl	D_PostEvent
.LVL45:
.LBE23:
	.loc 1 215 0
	tst	r4, #16
	beq	.L30
.L139:
.LBB24:
	.loc 1 218 0
	mov	r2, #1
	.loc 1 219 0
	mov	r3, #174
	.loc 1 220 0
	mov	r0, sp
	.loc 1 218 0
	strb	r2, [sp]
	.loc 1 219 0
	str	r3, [sp, #4]
	.loc 1 220 0
	bl	D_PostEvent
.LVL46:
.LBE24:
	.loc 1 223 0
	tst	r4, #8
	beq	.L31
.L140:
.LBB25:
	.loc 1 226 0
	mov	r2, #1
	.loc 1 227 0
	mov	r3, #27
	.loc 1 228 0
	mov	r0, sp
	.loc 1 226 0
	strb	r2, [sp]
	.loc 1 227 0
	str	r3, [sp, #4]
	.loc 1 228 0
	bl	D_PostEvent
.LVL47:
.LBE25:
	.loc 1 231 0
	tst	r4, #4
	beq	.L32
.L141:
.LBB26:
	.loc 1 234 0
	mov	r2, #1
	.loc 1 235 0
	mov	r3, #13
	.loc 1 236 0
	mov	r0, sp
	.loc 1 234 0
	strb	r2, [sp]
	.loc 1 235 0
	str	r3, [sp, #4]
	.loc 1 236 0
	bl	D_PostEvent
.LVL48:
.LBE26:
	.loc 1 239 0
	tst	r4, #1
	beq	.L33
.L142:
.LBB27:
	.loc 1 242 0
	mov	r2, #1
	.loc 1 243 0
	mov	r3, #157
	.loc 1 244 0
	mov	r0, sp
	.loc 1 242 0
	strb	r2, [sp]
	.loc 1 243 0
	str	r3, [sp, #4]
	.loc 1 244 0
	bl	D_PostEvent
.LVL49:
	b	.L33
.LVL50:
.L132:
.LBE27:
.LBB28:
	.loc 1 104 0
	mov	r2, #0
	.loc 1 105 0
	mov	r3, #13
	.loc 1 106 0
	mov	r0, sp
	.loc 1 104 0
	strb	r2, [sp]
	.loc 1 105 0
	str	r3, [sp, #4]
	.loc 1 106 0
	bl	D_PostEvent
.LVL51:
	b	.L8
.L131:
.LBE28:
.LBB29:
	.loc 1 97 0
	mov	r2, #0
	.loc 1 98 0
	mov	r3, #27
	.loc 1 99 0
	mov	r0, sp
	.loc 1 97 0
	strb	r2, [sp]
	.loc 1 98 0
	str	r3, [sp, #4]
	.loc 1 99 0
	bl	D_PostEvent
.LVL52:
	b	.L7
.L130:
.LBE29:
.LBB30:
	.loc 1 89 0
	mov	r2, #0
	.loc 1 90 0
	mov	r3, #174
	.loc 1 91 0
	mov	r0, sp
	.loc 1 89 0
	strb	r2, [sp]
	.loc 1 90 0
	str	r3, [sp, #4]
	.loc 1 91 0
	bl	D_PostEvent
.LVL53:
	b	.L6
.L129:
.LBE30:
.LBB31:
	.loc 1 81 0
	mov	r2, #0
	.loc 1 82 0
	mov	r3, #175
	.loc 1 83 0
	mov	r0, sp
	.loc 1 81 0
	strb	r2, [sp]
	.loc 1 82 0
	str	r3, [sp, #4]
	.loc 1 83 0
	bl	D_PostEvent
.LVL54:
	b	.L5
.L128:
.LBE31:
.LBB32:
	.loc 1 73 0
	mov	r2, #0
	.loc 1 74 0
	mov	r3, #172
	.loc 1 75 0
	mov	r0, sp
	.loc 1 73 0
	strb	r2, [sp]
	.loc 1 74 0
	str	r3, [sp, #4]
	.loc 1 75 0
	bl	D_PostEvent
.LVL55:
	b	.L4
.LVL56:
.L127:
.LBE32:
.LBB33:
	.loc 1 65 0
	mov	r2, #0
	.loc 1 66 0
	mov	r3, #173
	.loc 1 67 0
	mov	r0, sp
.LVL57:
	.loc 1 65 0
	strb	r2, [sp]
	.loc 1 66 0
	str	r3, [sp, #4]
	.loc 1 67 0
	bl	D_PostEvent
.LVL58:
	b	.L3
.LVL59:
.L135:
.LBE33:
.LBB34:
	.loc 1 174 0
	mov	r3, #46
	.loc 1 175 0
	mov	r0, sp
	.loc 1 173 0
	strb	r5, [sp]
	.loc 1 174 0
	str	r3, [sp, #4]
	.loc 1 175 0
	bl	D_PostEvent
.LVL60:
.LBE34:
	.loc 1 179 0
	tst	r4, #512
.LBB35:
	.loc 1 175 0
	mov	r6, sp
.LBE35:
	.loc 1 179 0
	beq	.L24
	b	.L26
.L150:
	.align	2
.L149:
	.word	menuactive
	.word	displayplayer
	.word	.LANCHOR0
	.word	gamemission
	.word	players
	.word	.LANCHOR1
	.cfi_endproc
.LFE7:
	.size	DS_Controls, .-DS_Controls
	.align	2
	.global	I_StartTic
	.type	I_StartTic, %function
I_StartTic:
.LFB8:
	.loc 1 329 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 330 0
	ldr	r3, .L153
	ldr	r3, [r3]
	cmp	r3, #0
	bxne	lr
	.loc 1 344 0
	b	DS_Controls
.LVL61:
.L154:
	.align	2
.L153:
	.word	saveStringEnter
	.cfi_endproc
.LFE8:
	.size	I_StartTic, .-I_StartTic
	.align	2
	.global	I_StartFrame
	.type	I_StartFrame, %function
I_StartFrame:
.LFB9:
	.loc 1 352 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.cfi_endproc
.LFE9:
	.size	I_StartFrame, .-I_StartFrame
	.align	2
	.global	I_ScreenShot
	.type	I_ScreenShot, %function
I_ScreenShot:
.LFB11:
	.loc 1 379 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL62:
.LVL63:
	.loc 1 380 0
	bx	lr
	.cfi_endproc
.LFE11:
	.size	I_ScreenShot, .-I_ScreenShot
	.align	2
	.global	I_SetPalette
	.type	I_SetPalette, %function
I_SetPalette:
.LFB12:
	.loc 1 389 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL64:
	.loc 1 390 0
	ldr	r3, .L158
	str	r0, [r3, #16]
	bx	lr
.L159:
	.align	2
.L158:
	.word	.LANCHOR0
	.cfi_endproc
.LFE12:
	.size	I_SetPalette, .-I_SetPalette
	.align	2
	.global	I_CalculateRes
	.type	I_CalculateRes, %function
I_CalculateRes:
.LFB13:
	.loc 1 394 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL65:
	.loc 1 395 0
	ldr	ip, .L161
	.loc 1 397 0
	ldr	r2, .L161+4
	.loc 1 396 0
	ldr	r3, .L161+8
	.loc 1 395 0
	str	r0, [ip]
	.loc 1 397 0
	str	r0, [r2]
	.loc 1 396 0
	str	r1, [r3]
	bx	lr
.L162:
	.align	2
.L161:
	.word	SCREENWIDTH
	.word	SCREENPITCH
	.word	SCREENHEIGHT
	.cfi_endproc
.LFE13:
	.size	I_CalculateRes, .-I_CalculateRes
	.global	__aeabi_idiv
	.align	2
	.global	I_SetRes
	.type	I_SetRes, %function
I_SetRes:
.LFB14:
	.loc 1 404 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 1 407 0
	ldr	r6, .L167
	ldr	r5, .L167+4
	ldr	r8, [r6]
.LVL66:
	mov	r4, r5
.LBB36:
.LBB37:
	.loc 1 397 0
	mov	r3, r8
	ldr	r7, .L167+8
	ldr	fp, .L167+12
.LVL67:
.LBE37:
.LBE36:
	.loc 1 404 0
	sub	sp, sp, #4
	.cfi_def_cfa_offset 40
.LBB39:
.LBB38:
	.loc 1 397 0
	str	r8, [r7]
.LVL68:
	add	r10, r5, #84
.LVL69:
.L165:
.LBE38:
.LBE39:
	.loc 1 412 0 discriminator 3
	ldr	r1, [fp]
	.loc 1 411 0 discriminator 3
	str	r3, [r4, #8]
	.loc 1 413 0 discriminator 3
	str	r8, [r4, #16]
	.loc 1 412 0 discriminator 3
	str	r1, [r4, #12]
	.loc 1 414 0 discriminator 3
	mov	r0, #2
	bl	V_GetModePixelDepth
.LVL70:
	mov	r1, r0
	mov	r0, r8
	bl	__aeabi_idiv
.LVL71:
	str	r0, [r4, #20]
	.loc 1 415 0 discriminator 3
	mov	r0, #3
	ldr	r8, [r7]
	bl	V_GetModePixelDepth
.LVL72:
	mov	r1, r0
	mov	r0, r8
	bl	__aeabi_idiv
.LVL73:
	add	r4, r4, #28
	str	r0, [r4, #-4]
	.loc 1 410 0 discriminator 3
	cmp	r4, r10
	.loc 1 412 0 discriminator 3
	ldr	r8, .L167+12
	.loc 1 415 0 discriminator 3
	ldr	r9, .L167+8
	.loc 1 410 0 discriminator 3
	ldrne	r3, [r6]
	ldrne	r8, [r9]
	bne	.L165
.L164:
	.loc 1 420 0
	ldr	r3, [r8]
	ldr	r2, .L167+16
	mov	r3, r3, asl #5
	smull	r1, r2, r2, r3
	mov	r3, r3, asr #31
	.loc 1 421 0
	ldr	r4, [r9]
	.loc 1 420 0
	rsb	r3, r3, r2, asr #6
	.loc 1 419 0
	ldr	r2, [r6]
	.loc 1 420 0
	add	r3, r3, #1
	.loc 1 422 0
	mov	r0, #2
	.loc 1 420 0
	str	r3, [r5, #124]
	.loc 1 419 0
	str	r2, [r5, #120]
	.loc 1 421 0
	str	r4, [r5, #128]
	.loc 1 422 0
	bl	V_GetModePixelDepth
.LVL74:
	mov	r1, r0
	mov	r0, r4
	bl	__aeabi_idiv
.LVL75:
	str	r0, [r5, #132]
	.loc 1 423 0
	mov	r0, #3
	ldr	r4, [r9]
	bl	V_GetModePixelDepth
.LVL76:
	mov	r1, r0
	mov	r0, r4
	bl	__aeabi_idiv
.LVL77:
	str	r0, [r5, #136]
	.loc 1 425 0
	mov	r0, #1
	ldr	r2, [r6]
	ldr	r3, [r8]
	ldr	r1, .L167+20
	.loc 1 426 0
	add	sp, sp, #4
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_restore 14
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 425 0
	b	lprintf
.LVL78:
.L168:
	.align	2
.L167:
	.word	SCREENWIDTH
	.word	screens
	.word	SCREENPITCH
	.word	SCREENHEIGHT
	.word	1374389535
	.word	.LC0
	.cfi_endproc
.LFE14:
	.size	I_SetRes, .-I_SetRes
	.align	2
	.global	I_GetModeFromString
	.type	I_GetModeFromString, %function
I_GetModeFromString:
.LFB15:
	.loc 1 429 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL79:
	stmfd	sp!, {r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 432 0
	ldr	r1, .L180
	.loc 1 429 0
	mov	r4, r0
	.loc 1 432 0
	bl	strcasecmp
.LVL80:
	cmp	r0, #0
	beq	.L172
	.loc 1 435 0
	mov	r0, r4
	ldr	r1, .L180+4
	bl	strcasecmp
.LVL81:
	cmp	r0, #0
	beq	.L172
	.loc 1 438 0
	mov	r0, r4
	ldr	r1, .L180+8
	bl	strcasecmp
.LVL82:
	cmp	r0, #0
	beq	.L174
	.loc 1 441 0
	mov	r0, r4
	ldr	r1, .L180+12
	bl	strcasecmp
.LVL83:
	cmp	r0, #0
	beq	.L174
	.loc 1 444 0
	mov	r0, r4
	ldr	r1, .L180+16
	bl	strcasecmp
.LVL84:
	cmp	r0, #0
	beq	.L176
	.loc 1 447 0
	mov	r0, r4
	ldr	r1, .L180+20
	bl	strcasecmp
.LVL85:
	cmp	r0, #0
	beq	.L176
	.loc 1 450 0
	mov	r0, r4
	ldr	r1, .L180+24
	bl	strcasecmp
.LVL86:
	cmp	r0, #0
	beq	.L177
	.loc 1 453 0
	mov	r0, r4
	ldr	r1, .L180+28
	bl	strcasecmp
.LVL87:
	cmp	r0, #0
	moveq	r0, #4
	movne	r0, #0
	ldmfd	sp!, {r4, pc}
.L172:
	mov	r0, #1
	ldmfd	sp!, {r4, pc}
.L174:
	mov	r0, #2
	ldmfd	sp!, {r4, pc}
.L176:
	mov	r0, #3
	ldmfd	sp!, {r4, pc}
.L177:
	mov	r0, #4
	.loc 1 460 0
	ldmfd	sp!, {r4, pc}
.L181:
	.align	2
.L180:
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.word	.LC5
	.word	.LC6
	.word	.LC7
	.word	.LC8
	.cfi_endproc
.LFE15:
	.size	I_GetModeFromString, .-I_GetModeFromString
	.align	2
	.global	I_UpdateVideoMode
	.type	I_UpdateVideoMode, %function
I_UpdateVideoMode:
.LFB10:
	.loc 1 357 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 361 0
	ldr	r5, .L188
	ldr	r4, .L188+4
	ldr	r2, [r5]
	ldr	r1, .L188+8
	ldr	r3, [r4]
	mov	r0, #1
	bl	lprintf
.LVL88:
	.loc 1 363 0
	ldr	r3, .L188+12
	ldr	r0, [r3]
	bl	I_GetModeFromString
.LVL89:
	uxtb	r6, r0
.LVL90:
	.loc 1 364 0
	ldr	r0, .L188+16
	bl	M_CheckParm
.LVL91:
	cmp	r0, #0
	beq	.L183
	.loc 1 364 0 is_stmt 0 discriminator 1
	ldr	r2, .L188+20
	ldr	r2, [r2]
	sub	r2, r2, #1
	cmp	r0, r2
	bge	.L183
	.loc 1 365 0 is_stmt 1
	ldr	r2, .L188+24
	add	r3, r0, #1
	ldr	r2, [r2]
	ldr	r0, [r2, r3, asl #2]
.LVL92:
	bl	I_GetModeFromString
.LVL93:
	uxtb	r6, r0
.LVL94:
.L183:
	.loc 1 368 0
	mov	r0, r6
	bl	V_InitMode
.LVL95:
	.loc 1 369 0
	bl	V_DestroyUnusedTrueColorPalettes
.LVL96:
	.loc 1 370 0
	bl	V_FreeScreens
.LVL97:
	.loc 1 372 0
	bl	I_SetRes
.LVL98:
	.loc 1 374 0
	bl	V_AllocScreens
.LVL99:
	.loc 1 376 0
	ldr	r0, [r5]
	ldr	r1, [r4]
	.loc 1 377 0
	ldmfd	sp!, {r4, r5, r6, lr}
	.cfi_restore 14
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL100:
	.loc 1 376 0
	b	R_InitBuffer
.LVL101:
.L189:
	.align	2
.L188:
	.word	SCREENWIDTH
	.word	SCREENHEIGHT
	.word	.LC9
	.word	default_videomode
	.word	.LC10
	.word	myargc
	.word	myargv
	.cfi_endproc
.LFE10:
	.size	I_UpdateVideoMode, .-I_UpdateVideoMode
	.align	2
	.global	I_UpdateNoBlit
	.type	I_UpdateNoBlit, %function
I_UpdateNoBlit:
.LFB16:
	.loc 1 466 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.cfi_endproc
.LFE16:
	.size	I_UpdateNoBlit, .-I_UpdateNoBlit
	.align	2
	.global	copy_screen
	.type	copy_screen, %function
copy_screen:
.LFB18:
	.loc 1 619 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL102:
	.loc 1 620 0
	uxtb	r1, r0
	mov	r0, #0
.LVL103:
	.loc 1 619 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	.loc 1 620 0
	mov	r2, r0
	mov	r3, r0
	bl	gfxGetFramebuffer
.LVL104:
.LBB40:
	.loc 1 632 0
	mov	r5, #1
	mov	ip, #3
	.loc 1 633 0
	mov	r4, #2
.LBE40:
	.loc 1 623 0
	ldr	r3, .L197
.LVL105:
	add	r7, r0, #286720
	ldr	r6, [r3]
	ldr	r1, .L197+4
	add	r6, r6, #95232
	add	r7, r7, #1280
	add	r6, r6, #368
.LVL106:
.L192:
	.loc 1 619 0
	mov	r2, r6
	add	lr, r0, #720
.LVL107:
.L193:
.LBB41:
	.loc 1 631 0 discriminator 3
	ldrb	r3, [r2]	@ zero_extendqisi2
	add	r0, r0, #3
.LVL108:
	add	r3, r3, r3, asl #1
	ldrb	r3, [r1, r3]	@ zero_extendqisi2
	strb	r3, [r0, #-3]
	.loc 1 632 0 discriminator 3
	ldrb	r3, [r2]	@ zero_extendqisi2
	smlabb	r3, ip, r3, r5
	ldrb	r3, [r1, r3]	@ zero_extendqisi2
	strb	r3, [r0, #-2]
	.loc 1 633 0 discriminator 3
	ldrb	r3, [r2], #-400	@ zero_extendqisi2
	smlabb	r3, ip, r3, r4
	ldrb	r3, [r1, r3]	@ zero_extendqisi2
	strb	r3, [r0, #-1]
.LBE41:
	.loc 1 627 0 discriminator 3
	cmp	lr, r0
	bne	.L193
	.loc 1 625 0 discriminator 2
	cmp	lr, r7
	add	r6, r6, #1
	mov	r0, lr
.LVL109:
	bne	.L192
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}
.L198:
	.align	2
.L197:
	.word	screens
	.word	pal3ds
	.cfi_endproc
.LFE18:
	.size	copy_screen, .-copy_screen
	.align	2
	.global	I_FinishUpdate
	.type	I_FinishUpdate, %function
I_FinishUpdate:
.LFB19:
	.loc 1 641 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	.cfi_def_cfa_offset 32
	.cfi_offset 4, -32
	.cfi_offset 5, -28
	.cfi_offset 6, -24
	.cfi_offset 7, -20
	.cfi_offset 8, -16
	.cfi_offset 9, -12
	.cfi_offset 10, -8
	.cfi_offset 14, -4
	.loc 1 673 0
	ldr	r4, .L220
	.loc 1 651 0
	bl	gfxFlushBuffers
.LVL110:
	.loc 1 652 0
	bl	gfxSwapBuffers
.LVL111:
	.loc 1 673 0
	ldr	r6, [r4, #16]
	cmp	r6, #1000
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
.LVL112:
.LBB48:
.LBB49:
	.loc 1 538 0
	bl	V_GetMode
.LVL113:
	cmp	r0, #4
	beq	.L209
	.loc 1 541 0
	ldr	r2, [r4, #20]
	ldr	r5, .L220+4
	cmp	r2, #0
	beq	.L202
	ldr	r1, [r4, #24]
	ldr	r3, [r5]
	cmp	r1, r3
	beq	.L203
.L202:
.LBB50:
	.loc 1 542 0
	ldr	r0, .L220+8
	bl	W_GetNumForName
.LVL114:
.LBB51:
.LBB52:
	.file 2 "c:/devl/prboom3ds/src/w_wad.h"
	.loc 2 132 0
	mvn	r2, #0
	mov	r1, #5
.LBE52:
.LBE51:
	.loc 1 542 0
	mov	r7, r0
.LVL115:
.LBB54:
.LBB53:
	.loc 2 132 0
	ldr	r0, .L220+12
.LVL116:
	bl	W_FindNumFromName
.LVL117:
	mov	r8, r0
.LBE53:
.LBE54:
	.loc 1 544 0
	mov	r0, r7
	bl	W_CacheLumpNum
.LVL118:
	mov	r9, r0
.LVL119:
	.loc 1 545 0
	mov	r0, r8
.LVL120:
	bl	W_CacheLumpNum
.LVL121:
	ldr	r3, [r5]
	ldr	r10, .L220
	add	r5, r0, r3, asl #8
.LVL122:
	.loc 1 548 0
	mov	r0, r7
	.loc 1 545 0
	str	r3, [r4, #24]
	.loc 1 548 0
	bl	W_LumpLength
.LVL123:
	ldr	r2, .L220+16
	mov	r3, r0, asr #31
	smull	r2, r0, r2, r0
	.loc 1 551 0
	ldr	r2, [r4, #20]
	.loc 1 548 0
	rsb	r0, r3, r0, asr #7
	.loc 1 549 0
	mov	ip, r0, asl #8
	.loc 1 551 0
	cmp	r2, #0
	.loc 1 549 0
	str	ip, [r4, #28]
	.loc 1 551 0
	beq	.L219
.L204:
.LVL124:
	.loc 1 557 0
	cmp	ip, #0
	beq	.L207
	ldr	r3, [r4, #20]
	add	r1, r9, #3
	add	r0, r3, ip, asl #2
.LVL125:
.L206:
	.loc 1 558 0
	ldrb	r2, [r1, #-3]	@ zero_extendqisi2
	add	r3, r3, #4
	ldrb	r2, [r5, r2]	@ zero_extendqisi2
	add	r1, r1, #3
.LVL126:
	strb	r2, [r3, #-4]
	.loc 1 559 0
	ldrb	r2, [r1, #-5]	@ zero_extendqisi2
	ldrb	r2, [r5, r2]	@ zero_extendqisi2
	strb	r2, [r3, #-3]
	.loc 1 560 0
	ldrb	r2, [r1, #-4]	@ zero_extendqisi2
	ldrb	ip, [r5, r2]	@ zero_extendqisi2
	strb	ip, [r3, #-2]
.LVL127:
	.loc 1 557 0
	cmp	r3, r0
	bne	.L206
.L207:
	.loc 1 564 0
	mov	r0, r7
	bl	W_UnlockLumpNum
.LVL128:
	.loc 1 565 0
	mov	r0, r8
	bl	W_UnlockLumpNum
.LVL129:
	.loc 1 566 0
	ldr	r3, [r4, #28]
	ldr	r2, [r4, #20]
	mov	r3, r3, lsr #8
	str	r3, [r4, #28]
.LVL130:
.L203:
	ldr	r3, .L220+20
	add	r2, r2, r6, asl #10
	add	r2, r2, #1
	add	lr, r3, #768
.LVL131:
.L208:
.LBE50:
.LBB55:
	.loc 1 584 0
	ldrb	ip, [r2, #-1]	@ zero_extendqisi2
.LVL132:
	.loc 1 585 0
	ldrb	r1, [r2]	@ zero_extendqisi2
.LVL133:
	.loc 1 586 0
	ldrb	r0, [r2, #1]	@ zero_extendqisi2
.LVL134:
	add	r3, r3, #3
	.loc 1 590 0
	strb	ip, [r3, #-1]
	.loc 1 588 0
	strb	r0, [r3, #-3]
	.loc 1 589 0
	strb	r1, [r3, #-2]
.LBE55:
	.loc 1 580 0
	cmp	r3, lr
	add	r2, r2, #4
	bne	.L208
.LVL135:
.L209:
.LBE49:
.LBE48:
	.loc 1 675 0
	mov	r3, #1000
	str	r3, [r4, #16]
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
.LVL136:
.L219:
.LBB58:
.LBB57:
.LBB56:
	.loc 1 553 0
	mov	r0, r0, asl #10
	mov	r1, #1
	bl	Z_Malloc
.LVL137:
	ldr	ip, [r10, #28]
	str	r0, [r10, #20]
	b	.L204
.L221:
	.align	2
.L220:
	.word	.LANCHOR0
	.word	usegamma
	.word	.LC11
	.word	.LC12
	.word	715827883
	.word	pal3ds
.LBE56:
.LBE57:
.LBE58:
	.cfi_endproc
.LFE19:
	.size	I_FinishUpdate, .-I_FinishUpdate
	.align	2
	.global	I_InitGraphics
	.type	I_InitGraphics, %function
I_InitGraphics:
.LFB22:
	.loc 1 738 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 1 742 0
	ldr	r3, .L225
	ldr	r2, [r3, #12]
	cmp	r2, #0
	ldmeqfd	sp!, {r3, pc}
	.loc 1 744 0
	mov	r2, #0
	.loc 1 746 0
	ldr	r0, .L225+4
	.loc 1 744 0
	str	r2, [r3, #12]
	.loc 1 746 0
	bl	atexit
.LVL138:
	.loc 1 747 0
	ldr	r2, .L225+8
	ldr	r3, .L225+12
	ldr	r2, [r2]
	ldr	r3, [r3]
	ldr	r1, .L225+16
	mov	r0, #1
	bl	lprintf
.LVL139:
	.loc 1 750 0
	bl	I_UpdateVideoMode
.LVL140:
	.loc 1 755 0
	ldmfd	sp!, {r3, lr}
	.cfi_restore 14
	.cfi_restore 3
	.cfi_def_cfa_offset 0
.LBB59:
.LBB60:
	.loc 1 685 0
	ldr	r0, .L225+20
	b	M_CheckParm
.LVL141:
.L226:
	.align	2
.L225:
	.word	.LANCHOR1
	.word	I_ShutdownGraphics
	.word	SCREENWIDTH
	.word	SCREENHEIGHT
	.word	.LC13
	.word	.LC14
.LBE60:
.LBE59:
	.cfi_endproc
.LFE22:
	.size	I_InitGraphics, .-I_InitGraphics
	.comm	pal3ds,768,4
	.global	g_currentTouch
	.global	g_lastTouch
	.global	weapon_shotgun_cycled
	.global	weapon_index
	.global	weapons
	.global	out_buffer
	.comm	desired_fullscreen,4,4
	.comm	use_fullscreen,4,4
	.global	use_doublebuffer
	.data
	.align	2
	.set	.LANCHOR1,. + 0
	.type	weapons, %object
	.size	weapons, 9
weapons:
	.byte	49
	.byte	50
	.byte	51
	.byte	52
	.byte	53
	.byte	54
	.byte	55
	.byte	56
	.byte	57
	.space	3
	.type	firsttime.10732, %object
	.size	firsttime.10732, 4
firsttime.10732:
	.word	1
	.type	use_doublebuffer, %object
	.size	use_doublebuffer, 4
use_doublebuffer:
	.word	1
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"I_SetRes: Using resolution %dx%d\012\000"
	.space	2
.LC1:
	.ascii	"15\000"
	.space	1
.LC2:
	.ascii	"15bit\000"
	.space	2
.LC3:
	.ascii	"16\000"
	.space	1
.LC4:
	.ascii	"16bit\000"
	.space	2
.LC5:
	.ascii	"32\000"
	.space	1
.LC6:
	.ascii	"32bit\000"
	.space	2
.LC7:
	.ascii	"gl\000"
	.space	1
.LC8:
	.ascii	"OpenGL\000"
	.space	1
.LC9:
	.ascii	"I_UpdateVideoMode: %dx%d\012\000"
	.space	2
.LC10:
	.ascii	"-vidmode\000"
	.space	3
.LC11:
	.ascii	"PLAYPAL\000"
.LC12:
	.ascii	"GAMMATBL\000"
	.space	3
.LC13:
	.ascii	"I_InitGraphics: %dx%d\012\000"
	.space	1
.LC14:
	.ascii	"-nomouse\000"
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	weapon_index, %object
	.size	weapon_index, 4
weapon_index:
	.space	4
	.type	weapon_shotgun_cycled, %object
	.size	weapon_shotgun_cycled, 1
weapon_shotgun_cycled:
	.space	1
	.space	3
	.type	g_lastTouch, %object
	.size	g_lastTouch, 4
g_lastTouch:
	.space	4
	.type	g_currentTouch, %object
	.size	g_currentTouch, 4
g_currentTouch:
	.space	4
	.type	newpal, %object
	.size	newpal, 4
newpal:
	.space	4
	.type	colours.10683, %object
	.size	colours.10683, 4
colours.10683:
	.space	4
	.type	cachedgamma.10684, %object
	.size	cachedgamma.10684, 4
cachedgamma.10684:
	.space	4
	.type	num_pals.10685, %object
	.size	num_pals.10685, 4
num_pals.10685:
	.space	4
	.type	out_buffer, %object
	.size	out_buffer, 4
out_buffer:
	.space	4
	.text
.Letext0:
	.file 3 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\machine\\_default_types.h"
	.file 4 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\stdint.h"
	.file 5 "c:\\devkitpro\\devkitarm\\lib\\gcc\\arm-none-eabi\\4.9.2\\include\\stddef.h"
	.file 6 "c:/devkitPro/libctru/include/3ds/types.h"
	.file 7 "c:/devkitPro/libctru/include/3ds/gfx.h"
	.file 8 "c:/devkitPro/libctru/include/3ds/services/hid.h"
	.file 9 "c:/devl/prboom3ds/src/doomtype.h"
	.file 10 "c:/devl/prboom3ds/src/z_zone.h"
	.file 11 "c:/devl/prboom3ds/src/doomdef.h"
	.file 12 "c:/devl/prboom3ds/src/m_fixed.h"
	.file 13 "c:/devl/prboom3ds/src/tables.h"
	.file 14 "c:/devl/prboom3ds/src/d_think.h"
	.file 15 "c:/devl/prboom3ds/src/info.h"
	.file 16 "c:/devl/prboom3ds/src/p_pspr.h"
	.file 17 "c:/devl/prboom3ds/src/doomdata.h"
	.file 18 "c:/devl/prboom3ds/src/p_mobj.h"
	.file 19 "c:/devl/prboom3ds/src/r_defs.h"
	.file 20 "c:/devl/prboom3ds/src/d_player.h"
	.file 21 "c:/devl/prboom3ds/src/d_ticcmd.h"
	.file 22 "c:/devl/prboom3ds/src/doomstat.h"
	.file 23 "c:/devl/prboom3ds/src/lprintf.h"
	.file 24 "c:/devl/prboom3ds/src/d_event.h"
	.file 25 "c:/devl/prboom3ds/src/v_video.h"
	.file 26 "c:/devl/prboom3ds/src/m_argv.h"
	.file 27 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\string.h"
	.file 28 "c:/devl/prboom3ds/src/r_draw.h"
	.file 29 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\stdlib.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x49d1
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF1799
	.byte	0x1
	.4byte	.LASF1800
	.4byte	.LASF1801
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x3
	.byte	0x1c
	.4byte	0x37
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x3
	.byte	0x26
	.4byte	0x50
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x3
	.byte	0x38
	.4byte	0x69
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x4
	.byte	0x2a
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0x36
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0x42
	.4byte	0x5e
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x5
	.byte	0xd4
	.4byte	0x85
	.uleb128 0x5
	.ascii	"u8\000"
	.byte	0x6
	.byte	0x14
	.4byte	0x8c
	.uleb128 0x5
	.ascii	"u16\000"
	.byte	0x6
	.byte	0x15
	.4byte	0x97
	.uleb128 0x5
	.ascii	"u32\000"
	.byte	0x6
	.byte	0x16
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF16
	.uleb128 0x6
	.byte	0x1
	.byte	0x7
	.byte	0x9
	.4byte	0xf4
	.uleb128 0x7
	.4byte	.LASF17
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF18
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x7
	.byte	0xc
	.4byte	0xdf
	.uleb128 0x6
	.byte	0x1
	.byte	0x7
	.byte	0xf
	.4byte	0x114
	.uleb128 0x7
	.4byte	.LASF20
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF21
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x7
	.byte	0x13
	.4byte	0xff
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF23
	.uleb128 0x8
	.byte	0x4
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF24
	.uleb128 0x9
	.byte	0x4
	.4byte	0xb8
	.uleb128 0x9
	.byte	0x4
	.4byte	0xc2
	.uleb128 0x6
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.4byte	0x220
	.uleb128 0x7
	.4byte	.LASF25
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF26
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF27
	.sleb128 4
	.uleb128 0x7
	.4byte	.LASF28
	.sleb128 8
	.uleb128 0x7
	.4byte	.LASF29
	.sleb128 16
	.uleb128 0x7
	.4byte	.LASF30
	.sleb128 32
	.uleb128 0x7
	.4byte	.LASF31
	.sleb128 64
	.uleb128 0x7
	.4byte	.LASF32
	.sleb128 128
	.uleb128 0x7
	.4byte	.LASF33
	.sleb128 256
	.uleb128 0x7
	.4byte	.LASF34
	.sleb128 512
	.uleb128 0x7
	.4byte	.LASF35
	.sleb128 1024
	.uleb128 0x7
	.4byte	.LASF36
	.sleb128 2048
	.uleb128 0x7
	.4byte	.LASF37
	.sleb128 16384
	.uleb128 0x7
	.4byte	.LASF38
	.sleb128 32768
	.uleb128 0x7
	.4byte	.LASF39
	.sleb128 1048576
	.uleb128 0x7
	.4byte	.LASF40
	.sleb128 16777216
	.uleb128 0x7
	.4byte	.LASF41
	.sleb128 33554432
	.uleb128 0x7
	.4byte	.LASF42
	.sleb128 67108864
	.uleb128 0x7
	.4byte	.LASF43
	.sleb128 134217728
	.uleb128 0x7
	.4byte	.LASF44
	.sleb128 268435456
	.uleb128 0x7
	.4byte	.LASF45
	.sleb128 536870912
	.uleb128 0x7
	.4byte	.LASF46
	.sleb128 1073741824
	.uleb128 0x7
	.4byte	.LASF47
	.sleb128 2147483648
	.uleb128 0x7
	.4byte	.LASF48
	.sleb128 1073741888
	.uleb128 0x7
	.4byte	.LASF49
	.sleb128 2147483776
	.uleb128 0x7
	.4byte	.LASF50
	.sleb128 536870944
	.uleb128 0x7
	.4byte	.LASF51
	.sleb128 268435472
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.byte	0x8
	.byte	0x28
	.4byte	0x23f
	.uleb128 0xb
	.ascii	"px\000"
	.byte	0x8
	.byte	0x2a
	.4byte	0xc2
	.byte	0
	.uleb128 0xb
	.ascii	"py\000"
	.byte	0x8
	.byte	0x2a
	.4byte	0xc2
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF52
	.byte	0x8
	.byte	0x2b
	.4byte	0x220
	.uleb128 0x9
	.byte	0x4
	.4byte	0x250
	.uleb128 0xc
	.uleb128 0x9
	.byte	0x4
	.4byte	0x37
	.uleb128 0x9
	.byte	0x4
	.4byte	0x25d
	.uleb128 0xd
	.4byte	0x128
	.uleb128 0x3
	.4byte	.LASF53
	.byte	0x9
	.byte	0x42
	.4byte	0x7e
	.uleb128 0x3
	.4byte	.LASF54
	.byte	0x9
	.byte	0x4c
	.4byte	0x37
	.uleb128 0x3
	.4byte	.LASF55
	.byte	0x9
	.byte	0x5c
	.4byte	0x77
	.uleb128 0x9
	.byte	0x4
	.4byte	0x289
	.uleb128 0xe
	.uleb128 0x6
	.byte	0x1
	.byte	0xa
	.byte	0x3c
	.4byte	0x2c9
	.uleb128 0x7
	.4byte	.LASF56
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF57
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF58
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF59
	.sleb128 3
	.uleb128 0x7
	.4byte	.LASF60
	.sleb128 4
	.uleb128 0x7
	.4byte	.LASF61
	.sleb128 5
	.uleb128 0x7
	.4byte	.LASF62
	.sleb128 6
	.uleb128 0x7
	.4byte	.LASF63
	.sleb128 7
	.uleb128 0x7
	.4byte	.LASF64
	.sleb128 8
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.byte	0xb
	.byte	0x4c
	.4byte	0x2f0
	.uleb128 0x7
	.4byte	.LASF65
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF66
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF67
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF68
	.sleb128 3
	.uleb128 0x7
	.4byte	.LASF69
	.sleb128 4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF70
	.byte	0xb
	.byte	0x52
	.4byte	0x2c9
	.uleb128 0x6
	.byte	0x1
	.byte	0xb
	.byte	0xbc
	.4byte	0x32e
	.uleb128 0x7
	.4byte	.LASF71
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF72
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF73
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF74
	.sleb128 3
	.uleb128 0x7
	.4byte	.LASF75
	.sleb128 4
	.uleb128 0x7
	.4byte	.LASF76
	.sleb128 5
	.uleb128 0x7
	.4byte	.LASF77
	.sleb128 6
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.byte	0xb
	.byte	0xc8
	.4byte	0x379
	.uleb128 0x7
	.4byte	.LASF78
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF79
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF80
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF81
	.sleb128 3
	.uleb128 0x7
	.4byte	.LASF82
	.sleb128 4
	.uleb128 0x7
	.4byte	.LASF83
	.sleb128 5
	.uleb128 0x7
	.4byte	.LASF84
	.sleb128 6
	.uleb128 0x7
	.4byte	.LASF85
	.sleb128 7
	.uleb128 0x7
	.4byte	.LASF86
	.sleb128 8
	.uleb128 0x7
	.4byte	.LASF87
	.sleb128 9
	.uleb128 0x7
	.4byte	.LASF88
	.sleb128 10
	.byte	0
	.uleb128 0x3
	.4byte	.LASF89
	.byte	0xb
	.byte	0xd5
	.4byte	0x32e
	.uleb128 0x6
	.byte	0x1
	.byte	0xb
	.byte	0xd8
	.4byte	0x3b1
	.uleb128 0x7
	.4byte	.LASF90
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF91
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF92
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF93
	.sleb128 3
	.uleb128 0x7
	.4byte	.LASF94
	.sleb128 4
	.uleb128 0x7
	.4byte	.LASF95
	.sleb128 5
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.byte	0xb
	.byte	0xe2
	.4byte	0x3e4
	.uleb128 0x7
	.4byte	.LASF96
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF97
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF98
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF99
	.sleb128 3
	.uleb128 0x7
	.4byte	.LASF100
	.sleb128 4
	.uleb128 0x7
	.4byte	.LASF101
	.sleb128 5
	.uleb128 0x7
	.4byte	.LASF102
	.sleb128 6
	.byte	0
	.uleb128 0x3
	.4byte	.LASF103
	.byte	0xc
	.byte	0x2f
	.4byte	0x7e
	.uleb128 0x3
	.4byte	.LASF104
	.byte	0xd
	.byte	0x47
	.4byte	0x85
	.uleb128 0x3
	.4byte	.LASF105
	.byte	0xe
	.byte	0x32
	.4byte	0x405
	.uleb128 0x9
	.byte	0x4
	.4byte	0x40b
	.uleb128 0xf
	.4byte	0x412
	.uleb128 0x10
	.byte	0
	.uleb128 0x3
	.4byte	.LASF106
	.byte	0xe
	.byte	0x48
	.4byte	0x3fa
	.uleb128 0x11
	.4byte	.LASF1489
	.byte	0x18
	.byte	0xe
	.byte	0x4c
	.4byte	0x472
	.uleb128 0x12
	.4byte	.LASF107
	.byte	0xe
	.byte	0x4e
	.4byte	0x472
	.byte	0
	.uleb128 0x12
	.4byte	.LASF108
	.byte	0xe
	.byte	0x4f
	.4byte	0x472
	.byte	0x4
	.uleb128 0x12
	.4byte	.LASF109
	.byte	0xe
	.byte	0x50
	.4byte	0x412
	.byte	0x8
	.uleb128 0x12
	.4byte	.LASF110
	.byte	0xe
	.byte	0x56
	.4byte	0x472
	.byte	0xc
	.uleb128 0x12
	.4byte	.LASF111
	.byte	0xe
	.byte	0x56
	.4byte	0x472
	.byte	0x10
	.uleb128 0x12
	.4byte	.LASF112
	.byte	0xe
	.byte	0x5b
	.4byte	0x85
	.byte	0x14
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x41d
	.uleb128 0x3
	.4byte	.LASF113
	.byte	0xe
	.byte	0x5c
	.4byte	0x41d
	.uleb128 0x6
	.byte	0x1
	.byte	0xf
	.byte	0x2e
	.4byte	0x827
	.uleb128 0x7
	.4byte	.LASF114
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF115
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF116
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF117
	.sleb128 3
	.uleb128 0x7
	.4byte	.LASF118
	.sleb128 4
	.uleb128 0x7
	.4byte	.LASF119
	.sleb128 5
	.uleb128 0x7
	.4byte	.LASF120
	.sleb128 6
	.uleb128 0x7
	.4byte	.LASF121
	.sleb128 7
	.uleb128 0x7
	.4byte	.LASF122
	.sleb128 8
	.uleb128 0x7
	.4byte	.LASF123
	.sleb128 9
	.uleb128 0x7
	.4byte	.LASF124
	.sleb128 10
	.uleb128 0x7
	.4byte	.LASF125
	.sleb128 11
	.uleb128 0x7
	.4byte	.LASF126
	.sleb128 12
	.uleb128 0x7
	.4byte	.LASF127
	.sleb128 13
	.uleb128 0x7
	.4byte	.LASF128
	.sleb128 14
	.uleb128 0x7
	.4byte	.LASF129
	.sleb128 15
	.uleb128 0x7
	.4byte	.LASF130
	.sleb128 16
	.uleb128 0x7
	.4byte	.LASF131
	.sleb128 17
	.uleb128 0x7
	.4byte	.LASF132
	.sleb128 18
	.uleb128 0x7
	.4byte	.LASF133
	.sleb128 19
	.uleb128 0x7
	.4byte	.LASF134
	.sleb128 20
	.uleb128 0x7
	.4byte	.LASF135
	.sleb128 21
	.uleb128 0x7
	.4byte	.LASF136
	.sleb128 22
	.uleb128 0x7
	.4byte	.LASF137
	.sleb128 23
	.uleb128 0x7
	.4byte	.LASF138
	.sleb128 24
	.uleb128 0x7
	.4byte	.LASF139
	.sleb128 25
	.uleb128 0x7
	.4byte	.LASF140
	.sleb128 26
	.uleb128 0x7
	.4byte	.LASF141
	.sleb128 27
	.uleb128 0x7
	.4byte	.LASF142
	.sleb128 28
	.uleb128 0x7
	.4byte	.LASF143
	.sleb128 29
	.uleb128 0x7
	.4byte	.LASF144
	.sleb128 30
	.uleb128 0x7
	.4byte	.LASF145
	.sleb128 31
	.uleb128 0x7
	.4byte	.LASF146
	.sleb128 32
	.uleb128 0x7
	.4byte	.LASF147
	.sleb128 33
	.uleb128 0x7
	.4byte	.LASF148
	.sleb128 34
	.uleb128 0x7
	.4byte	.LASF149
	.sleb128 35
	.uleb128 0x7
	.4byte	.LASF150
	.sleb128 36
	.uleb128 0x7
	.4byte	.LASF151
	.sleb128 37
	.uleb128 0x7
	.4byte	.LASF152
	.sleb128 38
	.uleb128 0x7
	.4byte	.LASF153
	.sleb128 39
	.uleb128 0x7
	.4byte	.LASF154
	.sleb128 40
	.uleb128 0x7
	.4byte	.LASF155
	.sleb128 41
	.uleb128 0x7
	.4byte	.LASF156
	.sleb128 42
	.uleb128 0x7
	.4byte	.LASF157
	.sleb128 43
	.uleb128 0x7
	.4byte	.LASF158
	.sleb128 44
	.uleb128 0x7
	.4byte	.LASF159
	.sleb128 45
	.uleb128 0x7
	.4byte	.LASF160
	.sleb128 46
	.uleb128 0x7
	.4byte	.LASF161
	.sleb128 47
	.uleb128 0x7
	.4byte	.LASF162
	.sleb128 48
	.uleb128 0x7
	.4byte	.LASF163
	.sleb128 49
	.uleb128 0x7
	.4byte	.LASF164
	.sleb128 50
	.uleb128 0x7
	.4byte	.LASF165
	.sleb128 51
	.uleb128 0x7
	.4byte	.LASF166
	.sleb128 52
	.uleb128 0x7
	.4byte	.LASF167
	.sleb128 53
	.uleb128 0x7
	.4byte	.LASF168
	.sleb128 54
	.uleb128 0x7
	.4byte	.LASF169
	.sleb128 55
	.uleb128 0x7
	.4byte	.LASF170
	.sleb128 56
	.uleb128 0x7
	.4byte	.LASF171
	.sleb128 57
	.uleb128 0x7
	.4byte	.LASF172
	.sleb128 58
	.uleb128 0x7
	.4byte	.LASF173
	.sleb128 59
	.uleb128 0x7
	.4byte	.LASF174
	.sleb128 60
	.uleb128 0x7
	.4byte	.LASF175
	.sleb128 61
	.uleb128 0x7
	.4byte	.LASF176
	.sleb128 62
	.uleb128 0x7
	.4byte	.LASF177
	.sleb128 63
	.uleb128 0x7
	.4byte	.LASF178
	.sleb128 64
	.uleb128 0x7
	.4byte	.LASF179
	.sleb128 65
	.uleb128 0x7
	.4byte	.LASF180
	.sleb128 66
	.uleb128 0x7
	.4byte	.LASF181
	.sleb128 67
	.uleb128 0x7
	.4byte	.LASF182
	.sleb128 68
	.uleb128 0x7
	.4byte	.LASF183
	.sleb128 69
	.uleb128 0x7
	.4byte	.LASF184
	.sleb128 70
	.uleb128 0x7
	.4byte	.LASF185
	.sleb128 71
	.uleb128 0x7
	.4byte	.LASF186
	.sleb128 72
	.uleb128 0x7
	.4byte	.LASF187
	.sleb128 73
	.uleb128 0x7
	.4byte	.LASF188
	.sleb128 74
	.uleb128 0x7
	.4byte	.LASF189
	.sleb128 75
	.uleb128 0x7
	.4byte	.LASF190
	.sleb128 76
	.uleb128 0x7
	.4byte	.LASF191
	.sleb128 77
	.uleb128 0x7
	.4byte	.LASF192
	.sleb128 78
	.uleb128 0x7
	.4byte	.LASF193
	.sleb128 79
	.uleb128 0x7
	.4byte	.LASF194
	.sleb128 80
	.uleb128 0x7
	.4byte	.LASF195
	.sleb128 81
	.uleb128 0x7
	.4byte	.LASF196
	.sleb128 82
	.uleb128 0x7
	.4byte	.LASF197
	.sleb128 83
	.uleb128 0x7
	.4byte	.LASF198
	.sleb128 84
	.uleb128 0x7
	.4byte	.LASF199
	.sleb128 85
	.uleb128 0x7
	.4byte	.LASF200
	.sleb128 86
	.uleb128 0x7
	.4byte	.LASF201
	.sleb128 87
	.uleb128 0x7
	.4byte	.LASF202
	.sleb128 88
	.uleb128 0x7
	.4byte	.LASF203
	.sleb128 89
	.uleb128 0x7
	.4byte	.LASF204
	.sleb128 90
	.uleb128 0x7
	.4byte	.LASF205
	.sleb128 91
	.uleb128 0x7
	.4byte	.LASF206
	.sleb128 92
	.uleb128 0x7
	.4byte	.LASF207
	.sleb128 93
	.uleb128 0x7
	.4byte	.LASF208
	.sleb128 94
	.uleb128 0x7
	.4byte	.LASF209
	.sleb128 95
	.uleb128 0x7
	.4byte	.LASF210
	.sleb128 96
	.uleb128 0x7
	.4byte	.LASF211
	.sleb128 97
	.uleb128 0x7
	.4byte	.LASF212
	.sleb128 98
	.uleb128 0x7
	.4byte	.LASF213
	.sleb128 99
	.uleb128 0x7
	.4byte	.LASF214
	.sleb128 100
	.uleb128 0x7
	.4byte	.LASF215
	.sleb128 101
	.uleb128 0x7
	.4byte	.LASF216
	.sleb128 102
	.uleb128 0x7
	.4byte	.LASF217
	.sleb128 103
	.uleb128 0x7
	.4byte	.LASF218
	.sleb128 104
	.uleb128 0x7
	.4byte	.LASF219
	.sleb128 105
	.uleb128 0x7
	.4byte	.LASF220
	.sleb128 106
	.uleb128 0x7
	.4byte	.LASF221
	.sleb128 107
	.uleb128 0x7
	.4byte	.LASF222
	.sleb128 108
	.uleb128 0x7
	.4byte	.LASF223
	.sleb128 109
	.uleb128 0x7
	.4byte	.LASF224
	.sleb128 110
	.uleb128 0x7
	.4byte	.LASF225
	.sleb128 111
	.uleb128 0x7
	.4byte	.LASF226
	.sleb128 112
	.uleb128 0x7
	.4byte	.LASF227
	.sleb128 113
	.uleb128 0x7
	.4byte	.LASF228
	.sleb128 114
	.uleb128 0x7
	.4byte	.LASF229
	.sleb128 115
	.uleb128 0x7
	.4byte	.LASF230
	.sleb128 116
	.uleb128 0x7
	.4byte	.LASF231
	.sleb128 117
	.uleb128 0x7
	.4byte	.LASF232
	.sleb128 118
	.uleb128 0x7
	.4byte	.LASF233
	.sleb128 119
	.uleb128 0x7
	.4byte	.LASF234
	.sleb128 120
	.uleb128 0x7
	.4byte	.LASF235
	.sleb128 121
	.uleb128 0x7
	.4byte	.LASF236
	.sleb128 122
	.uleb128 0x7
	.4byte	.LASF237
	.sleb128 123
	.uleb128 0x7
	.4byte	.LASF238
	.sleb128 124
	.uleb128 0x7
	.4byte	.LASF239
	.sleb128 125
	.uleb128 0x7
	.4byte	.LASF240
	.sleb128 126
	.uleb128 0x7
	.4byte	.LASF241
	.sleb128 127
	.uleb128 0x7
	.4byte	.LASF242
	.sleb128 128
	.uleb128 0x7
	.4byte	.LASF243
	.sleb128 129
	.uleb128 0x7
	.4byte	.LASF244
	.sleb128 130
	.uleb128 0x7
	.4byte	.LASF245
	.sleb128 131
	.uleb128 0x7
	.4byte	.LASF246
	.sleb128 132
	.uleb128 0x7
	.4byte	.LASF247
	.sleb128 133
	.uleb128 0x7
	.4byte	.LASF248
	.sleb128 134
	.uleb128 0x7
	.4byte	.LASF249
	.sleb128 135
	.uleb128 0x7
	.4byte	.LASF250
	.sleb128 136
	.uleb128 0x7
	.4byte	.LASF251
	.sleb128 137
	.uleb128 0x7
	.4byte	.LASF252
	.sleb128 138
	.uleb128 0x7
	.4byte	.LASF253
	.sleb128 139
	.uleb128 0x7
	.4byte	.LASF254
	.sleb128 140
	.byte	0
	.uleb128 0x3
	.4byte	.LASF255
	.byte	0xf
	.byte	0xc1
	.4byte	0x483
	.uleb128 0x6
	.byte	0x2
	.byte	0xf
	.byte	0xc8
	.4byte	0x2456
	.uleb128 0x7
	.4byte	.LASF256
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF257
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF258
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF259
	.sleb128 3
	.uleb128 0x7
	.4byte	.LASF260
	.sleb128 4
	.uleb128 0x7
	.4byte	.LASF261
	.sleb128 5
	.uleb128 0x7
	.4byte	.LASF262
	.sleb128 6
	.uleb128 0x7
	.4byte	.LASF263
	.sleb128 7
	.uleb128 0x7
	.4byte	.LASF264
	.sleb128 8
	.uleb128 0x7
	.4byte	.LASF265
	.sleb128 9
	.uleb128 0x7
	.4byte	.LASF266
	.sleb128 10
	.uleb128 0x7
	.4byte	.LASF267
	.sleb128 11
	.uleb128 0x7
	.4byte	.LASF268
	.sleb128 12
	.uleb128 0x7
	.4byte	.LASF269
	.sleb128 13
	.uleb128 0x7
	.4byte	.LASF270
	.sleb128 14
	.uleb128 0x7
	.4byte	.LASF271
	.sleb128 15
	.uleb128 0x7
	.4byte	.LASF272
	.sleb128 16
	.uleb128 0x7
	.4byte	.LASF273
	.sleb128 17
	.uleb128 0x7
	.4byte	.LASF274
	.sleb128 18
	.uleb128 0x7
	.4byte	.LASF275
	.sleb128 19
	.uleb128 0x7
	.4byte	.LASF276
	.sleb128 20
	.uleb128 0x7
	.4byte	.LASF277
	.sleb128 21
	.uleb128 0x7
	.4byte	.LASF278
	.sleb128 22
	.uleb128 0x7
	.4byte	.LASF279
	.sleb128 23
	.uleb128 0x7
	.4byte	.LASF280
	.sleb128 24
	.uleb128 0x7
	.4byte	.LASF281
	.sleb128 25
	.uleb128 0x7
	.4byte	.LASF282
	.sleb128 26
	.uleb128 0x7
	.4byte	.LASF283
	.sleb128 27
	.uleb128 0x7
	.4byte	.LASF284
	.sleb128 28
	.uleb128 0x7
	.4byte	.LASF285
	.sleb128 29
	.uleb128 0x7
	.4byte	.LASF286
	.sleb128 30
	.uleb128 0x7
	.4byte	.LASF287
	.sleb128 31
	.uleb128 0x7
	.4byte	.LASF288
	.sleb128 32
	.uleb128 0x7
	.4byte	.LASF289
	.sleb128 33
	.uleb128 0x7
	.4byte	.LASF290
	.sleb128 34
	.uleb128 0x7
	.4byte	.LASF291
	.sleb128 35
	.uleb128 0x7
	.4byte	.LASF292
	.sleb128 36
	.uleb128 0x7
	.4byte	.LASF293
	.sleb128 37
	.uleb128 0x7
	.4byte	.LASF294
	.sleb128 38
	.uleb128 0x7
	.4byte	.LASF295
	.sleb128 39
	.uleb128 0x7
	.4byte	.LASF296
	.sleb128 40
	.uleb128 0x7
	.4byte	.LASF297
	.sleb128 41
	.uleb128 0x7
	.4byte	.LASF298
	.sleb128 42
	.uleb128 0x7
	.4byte	.LASF299
	.sleb128 43
	.uleb128 0x7
	.4byte	.LASF300
	.sleb128 44
	.uleb128 0x7
	.4byte	.LASF301
	.sleb128 45
	.uleb128 0x7
	.4byte	.LASF302
	.sleb128 46
	.uleb128 0x7
	.4byte	.LASF303
	.sleb128 47
	.uleb128 0x7
	.4byte	.LASF304
	.sleb128 48
	.uleb128 0x7
	.4byte	.LASF305
	.sleb128 49
	.uleb128 0x7
	.4byte	.LASF306
	.sleb128 50
	.uleb128 0x7
	.4byte	.LASF307
	.sleb128 51
	.uleb128 0x7
	.4byte	.LASF308
	.sleb128 52
	.uleb128 0x7
	.4byte	.LASF309
	.sleb128 53
	.uleb128 0x7
	.4byte	.LASF310
	.sleb128 54
	.uleb128 0x7
	.4byte	.LASF311
	.sleb128 55
	.uleb128 0x7
	.4byte	.LASF312
	.sleb128 56
	.uleb128 0x7
	.4byte	.LASF313
	.sleb128 57
	.uleb128 0x7
	.4byte	.LASF314
	.sleb128 58
	.uleb128 0x7
	.4byte	.LASF315
	.sleb128 59
	.uleb128 0x7
	.4byte	.LASF316
	.sleb128 60
	.uleb128 0x7
	.4byte	.LASF317
	.sleb128 61
	.uleb128 0x7
	.4byte	.LASF318
	.sleb128 62
	.uleb128 0x7
	.4byte	.LASF319
	.sleb128 63
	.uleb128 0x7
	.4byte	.LASF320
	.sleb128 64
	.uleb128 0x7
	.4byte	.LASF321
	.sleb128 65
	.uleb128 0x7
	.4byte	.LASF322
	.sleb128 66
	.uleb128 0x7
	.4byte	.LASF323
	.sleb128 67
	.uleb128 0x7
	.4byte	.LASF324
	.sleb128 68
	.uleb128 0x7
	.4byte	.LASF325
	.sleb128 69
	.uleb128 0x7
	.4byte	.LASF326
	.sleb128 70
	.uleb128 0x7
	.4byte	.LASF327
	.sleb128 71
	.uleb128 0x7
	.4byte	.LASF328
	.sleb128 72
	.uleb128 0x7
	.4byte	.LASF329
	.sleb128 73
	.uleb128 0x7
	.4byte	.LASF330
	.sleb128 74
	.uleb128 0x7
	.4byte	.LASF331
	.sleb128 75
	.uleb128 0x7
	.4byte	.LASF332
	.sleb128 76
	.uleb128 0x7
	.4byte	.LASF333
	.sleb128 77
	.uleb128 0x7
	.4byte	.LASF334
	.sleb128 78
	.uleb128 0x7
	.4byte	.LASF335
	.sleb128 79
	.uleb128 0x7
	.4byte	.LASF336
	.sleb128 80
	.uleb128 0x7
	.4byte	.LASF337
	.sleb128 81
	.uleb128 0x7
	.4byte	.LASF338
	.sleb128 82
	.uleb128 0x7
	.4byte	.LASF339
	.sleb128 83
	.uleb128 0x7
	.4byte	.LASF340
	.sleb128 84
	.uleb128 0x7
	.4byte	.LASF341
	.sleb128 85
	.uleb128 0x7
	.4byte	.LASF342
	.sleb128 86
	.uleb128 0x7
	.4byte	.LASF343
	.sleb128 87
	.uleb128 0x7
	.4byte	.LASF344
	.sleb128 88
	.uleb128 0x7
	.4byte	.LASF345
	.sleb128 89
	.uleb128 0x7
	.4byte	.LASF346
	.sleb128 90
	.uleb128 0x7
	.4byte	.LASF347
	.sleb128 91
	.uleb128 0x7
	.4byte	.LASF348
	.sleb128 92
	.uleb128 0x7
	.4byte	.LASF349
	.sleb128 93
	.uleb128 0x7
	.4byte	.LASF350
	.sleb128 94
	.uleb128 0x7
	.4byte	.LASF351
	.sleb128 95
	.uleb128 0x7
	.4byte	.LASF352
	.sleb128 96
	.uleb128 0x7
	.4byte	.LASF353
	.sleb128 97
	.uleb128 0x7
	.4byte	.LASF354
	.sleb128 98
	.uleb128 0x7
	.4byte	.LASF355
	.sleb128 99
	.uleb128 0x7
	.4byte	.LASF356
	.sleb128 100
	.uleb128 0x7
	.4byte	.LASF357
	.sleb128 101
	.uleb128 0x7
	.4byte	.LASF358
	.sleb128 102
	.uleb128 0x7
	.4byte	.LASF359
	.sleb128 103
	.uleb128 0x7
	.4byte	.LASF360
	.sleb128 104
	.uleb128 0x7
	.4byte	.LASF361
	.sleb128 105
	.uleb128 0x7
	.4byte	.LASF362
	.sleb128 106
	.uleb128 0x7
	.4byte	.LASF363
	.sleb128 107
	.uleb128 0x7
	.4byte	.LASF364
	.sleb128 108
	.uleb128 0x7
	.4byte	.LASF365
	.sleb128 109
	.uleb128 0x7
	.4byte	.LASF366
	.sleb128 110
	.uleb128 0x7
	.4byte	.LASF367
	.sleb128 111
	.uleb128 0x7
	.4byte	.LASF368
	.sleb128 112
	.uleb128 0x7
	.4byte	.LASF369
	.sleb128 113
	.uleb128 0x7
	.4byte	.LASF370
	.sleb128 114
	.uleb128 0x7
	.4byte	.LASF371
	.sleb128 115
	.uleb128 0x7
	.4byte	.LASF372
	.sleb128 116
	.uleb128 0x7
	.4byte	.LASF373
	.sleb128 117
	.uleb128 0x7
	.4byte	.LASF374
	.sleb128 118
	.uleb128 0x7
	.4byte	.LASF375
	.sleb128 119
	.uleb128 0x7
	.4byte	.LASF376
	.sleb128 120
	.uleb128 0x7
	.4byte	.LASF377
	.sleb128 121
	.uleb128 0x7
	.4byte	.LASF378
	.sleb128 122
	.uleb128 0x7
	.4byte	.LASF379
	.sleb128 123
	.uleb128 0x7
	.4byte	.LASF380
	.sleb128 124
	.uleb128 0x7
	.4byte	.LASF381
	.sleb128 125
	.uleb128 0x7
	.4byte	.LASF382
	.sleb128 126
	.uleb128 0x7
	.4byte	.LASF383
	.sleb128 127
	.uleb128 0x7
	.4byte	.LASF384
	.sleb128 128
	.uleb128 0x7
	.4byte	.LASF385
	.sleb128 129
	.uleb128 0x7
	.4byte	.LASF386
	.sleb128 130
	.uleb128 0x7
	.4byte	.LASF387
	.sleb128 131
	.uleb128 0x7
	.4byte	.LASF388
	.sleb128 132
	.uleb128 0x7
	.4byte	.LASF389
	.sleb128 133
	.uleb128 0x7
	.4byte	.LASF390
	.sleb128 134
	.uleb128 0x7
	.4byte	.LASF391
	.sleb128 135
	.uleb128 0x7
	.4byte	.LASF392
	.sleb128 136
	.uleb128 0x7
	.4byte	.LASF393
	.sleb128 137
	.uleb128 0x7
	.4byte	.LASF394
	.sleb128 138
	.uleb128 0x7
	.4byte	.LASF395
	.sleb128 139
	.uleb128 0x7
	.4byte	.LASF396
	.sleb128 140
	.uleb128 0x7
	.4byte	.LASF397
	.sleb128 141
	.uleb128 0x7
	.4byte	.LASF398
	.sleb128 142
	.uleb128 0x7
	.4byte	.LASF399
	.sleb128 143
	.uleb128 0x7
	.4byte	.LASF400
	.sleb128 144
	.uleb128 0x7
	.4byte	.LASF401
	.sleb128 145
	.uleb128 0x7
	.4byte	.LASF402
	.sleb128 146
	.uleb128 0x7
	.4byte	.LASF403
	.sleb128 147
	.uleb128 0x7
	.4byte	.LASF404
	.sleb128 148
	.uleb128 0x7
	.4byte	.LASF405
	.sleb128 149
	.uleb128 0x7
	.4byte	.LASF406
	.sleb128 150
	.uleb128 0x7
	.4byte	.LASF407
	.sleb128 151
	.uleb128 0x7
	.4byte	.LASF408
	.sleb128 152
	.uleb128 0x7
	.4byte	.LASF409
	.sleb128 153
	.uleb128 0x7
	.4byte	.LASF410
	.sleb128 154
	.uleb128 0x7
	.4byte	.LASF411
	.sleb128 155
	.uleb128 0x7
	.4byte	.LASF412
	.sleb128 156
	.uleb128 0x7
	.4byte	.LASF413
	.sleb128 157
	.uleb128 0x7
	.4byte	.LASF414
	.sleb128 158
	.uleb128 0x7
	.4byte	.LASF415
	.sleb128 159
	.uleb128 0x7
	.4byte	.LASF416
	.sleb128 160
	.uleb128 0x7
	.4byte	.LASF417
	.sleb128 161
	.uleb128 0x7
	.4byte	.LASF418
	.sleb128 162
	.uleb128 0x7
	.4byte	.LASF419
	.sleb128 163
	.uleb128 0x7
	.4byte	.LASF420
	.sleb128 164
	.uleb128 0x7
	.4byte	.LASF421
	.sleb128 165
	.uleb128 0x7
	.4byte	.LASF422
	.sleb128 166
	.uleb128 0x7
	.4byte	.LASF423
	.sleb128 167
	.uleb128 0x7
	.4byte	.LASF424
	.sleb128 168
	.uleb128 0x7
	.4byte	.LASF425
	.sleb128 169
	.uleb128 0x7
	.4byte	.LASF426
	.sleb128 170
	.uleb128 0x7
	.4byte	.LASF427
	.sleb128 171
	.uleb128 0x7
	.4byte	.LASF428
	.sleb128 172
	.uleb128 0x7
	.4byte	.LASF429
	.sleb128 173
	.uleb128 0x7
	.4byte	.LASF430
	.sleb128 174
	.uleb128 0x7
	.4byte	.LASF431
	.sleb128 175
	.uleb128 0x7
	.4byte	.LASF432
	.sleb128 176
	.uleb128 0x7
	.4byte	.LASF433
	.sleb128 177
	.uleb128 0x7
	.4byte	.LASF434
	.sleb128 178
	.uleb128 0x7
	.4byte	.LASF435
	.sleb128 179
	.uleb128 0x7
	.4byte	.LASF436
	.sleb128 180
	.uleb128 0x7
	.4byte	.LASF437
	.sleb128 181
	.uleb128 0x7
	.4byte	.LASF438
	.sleb128 182
	.uleb128 0x7
	.4byte	.LASF439
	.sleb128 183
	.uleb128 0x7
	.4byte	.LASF440
	.sleb128 184
	.uleb128 0x7
	.4byte	.LASF441
	.sleb128 185
	.uleb128 0x7
	.4byte	.LASF442
	.sleb128 186
	.uleb128 0x7
	.4byte	.LASF443
	.sleb128 187
	.uleb128 0x7
	.4byte	.LASF444
	.sleb128 188
	.uleb128 0x7
	.4byte	.LASF445
	.sleb128 189
	.uleb128 0x7
	.4byte	.LASF446
	.sleb128 190
	.uleb128 0x7
	.4byte	.LASF447
	.sleb128 191
	.uleb128 0x7
	.4byte	.LASF448
	.sleb128 192
	.uleb128 0x7
	.4byte	.LASF449
	.sleb128 193
	.uleb128 0x7
	.4byte	.LASF450
	.sleb128 194
	.uleb128 0x7
	.4byte	.LASF451
	.sleb128 195
	.uleb128 0x7
	.4byte	.LASF452
	.sleb128 196
	.uleb128 0x7
	.4byte	.LASF453
	.sleb128 197
	.uleb128 0x7
	.4byte	.LASF454
	.sleb128 198
	.uleb128 0x7
	.4byte	.LASF455
	.sleb128 199
	.uleb128 0x7
	.4byte	.LASF456
	.sleb128 200
	.uleb128 0x7
	.4byte	.LASF457
	.sleb128 201
	.uleb128 0x7
	.4byte	.LASF458
	.sleb128 202
	.uleb128 0x7
	.4byte	.LASF459
	.sleb128 203
	.uleb128 0x7
	.4byte	.LASF460
	.sleb128 204
	.uleb128 0x7
	.4byte	.LASF461
	.sleb128 205
	.uleb128 0x7
	.4byte	.LASF462
	.sleb128 206
	.uleb128 0x7
	.4byte	.LASF463
	.sleb128 207
	.uleb128 0x7
	.4byte	.LASF464
	.sleb128 208
	.uleb128 0x7
	.4byte	.LASF465
	.sleb128 209
	.uleb128 0x7
	.4byte	.LASF466
	.sleb128 210
	.uleb128 0x7
	.4byte	.LASF467
	.sleb128 211
	.uleb128 0x7
	.4byte	.LASF468
	.sleb128 212
	.uleb128 0x7
	.4byte	.LASF469
	.sleb128 213
	.uleb128 0x7
	.4byte	.LASF470
	.sleb128 214
	.uleb128 0x7
	.4byte	.LASF471
	.sleb128 215
	.uleb128 0x7
	.4byte	.LASF472
	.sleb128 216
	.uleb128 0x7
	.4byte	.LASF473
	.sleb128 217
	.uleb128 0x7
	.4byte	.LASF474
	.sleb128 218
	.uleb128 0x7
	.4byte	.LASF475
	.sleb128 219
	.uleb128 0x7
	.4byte	.LASF476
	.sleb128 220
	.uleb128 0x7
	.4byte	.LASF477
	.sleb128 221
	.uleb128 0x7
	.4byte	.LASF478
	.sleb128 222
	.uleb128 0x7
	.4byte	.LASF479
	.sleb128 223
	.uleb128 0x7
	.4byte	.LASF480
	.sleb128 224
	.uleb128 0x7
	.4byte	.LASF481
	.sleb128 225
	.uleb128 0x7
	.4byte	.LASF482
	.sleb128 226
	.uleb128 0x7
	.4byte	.LASF483
	.sleb128 227
	.uleb128 0x7
	.4byte	.LASF484
	.sleb128 228
	.uleb128 0x7
	.4byte	.LASF485
	.sleb128 229
	.uleb128 0x7
	.4byte	.LASF486
	.sleb128 230
	.uleb128 0x7
	.4byte	.LASF487
	.sleb128 231
	.uleb128 0x7
	.4byte	.LASF488
	.sleb128 232
	.uleb128 0x7
	.4byte	.LASF489
	.sleb128 233
	.uleb128 0x7
	.4byte	.LASF490
	.sleb128 234
	.uleb128 0x7
	.4byte	.LASF491
	.sleb128 235
	.uleb128 0x7
	.4byte	.LASF492
	.sleb128 236
	.uleb128 0x7
	.4byte	.LASF493
	.sleb128 237
	.uleb128 0x7
	.4byte	.LASF494
	.sleb128 238
	.uleb128 0x7
	.4byte	.LASF495
	.sleb128 239
	.uleb128 0x7
	.4byte	.LASF496
	.sleb128 240
	.uleb128 0x7
	.4byte	.LASF497
	.sleb128 241
	.uleb128 0x7
	.4byte	.LASF498
	.sleb128 242
	.uleb128 0x7
	.4byte	.LASF499
	.sleb128 243
	.uleb128 0x7
	.4byte	.LASF500
	.sleb128 244
	.uleb128 0x7
	.4byte	.LASF501
	.sleb128 245
	.uleb128 0x7
	.4byte	.LASF502
	.sleb128 246
	.uleb128 0x7
	.4byte	.LASF503
	.sleb128 247
	.uleb128 0x7
	.4byte	.LASF504
	.sleb128 248
	.uleb128 0x7
	.4byte	.LASF505
	.sleb128 249
	.uleb128 0x7
	.4byte	.LASF506
	.sleb128 250
	.uleb128 0x7
	.4byte	.LASF507
	.sleb128 251
	.uleb128 0x7
	.4byte	.LASF508
	.sleb128 252
	.uleb128 0x7
	.4byte	.LASF509
	.sleb128 253
	.uleb128 0x7
	.4byte	.LASF510
	.sleb128 254
	.uleb128 0x7
	.4byte	.LASF511
	.sleb128 255
	.uleb128 0x7
	.4byte	.LASF512
	.sleb128 256
	.uleb128 0x7
	.4byte	.LASF513
	.sleb128 257
	.uleb128 0x7
	.4byte	.LASF514
	.sleb128 258
	.uleb128 0x7
	.4byte	.LASF515
	.sleb128 259
	.uleb128 0x7
	.4byte	.LASF516
	.sleb128 260
	.uleb128 0x7
	.4byte	.LASF517
	.sleb128 261
	.uleb128 0x7
	.4byte	.LASF518
	.sleb128 262
	.uleb128 0x7
	.4byte	.LASF519
	.sleb128 263
	.uleb128 0x7
	.4byte	.LASF520
	.sleb128 264
	.uleb128 0x7
	.4byte	.LASF521
	.sleb128 265
	.uleb128 0x7
	.4byte	.LASF522
	.sleb128 266
	.uleb128 0x7
	.4byte	.LASF523
	.sleb128 267
	.uleb128 0x7
	.4byte	.LASF524
	.sleb128 268
	.uleb128 0x7
	.4byte	.LASF525
	.sleb128 269
	.uleb128 0x7
	.4byte	.LASF526
	.sleb128 270
	.uleb128 0x7
	.4byte	.LASF527
	.sleb128 271
	.uleb128 0x7
	.4byte	.LASF528
	.sleb128 272
	.uleb128 0x7
	.4byte	.LASF529
	.sleb128 273
	.uleb128 0x7
	.4byte	.LASF530
	.sleb128 274
	.uleb128 0x7
	.4byte	.LASF531
	.sleb128 275
	.uleb128 0x7
	.4byte	.LASF532
	.sleb128 276
	.uleb128 0x7
	.4byte	.LASF533
	.sleb128 277
	.uleb128 0x7
	.4byte	.LASF534
	.sleb128 278
	.uleb128 0x7
	.4byte	.LASF535
	.sleb128 279
	.uleb128 0x7
	.4byte	.LASF536
	.sleb128 280
	.uleb128 0x7
	.4byte	.LASF537
	.sleb128 281
	.uleb128 0x7
	.4byte	.LASF538
	.sleb128 282
	.uleb128 0x7
	.4byte	.LASF539
	.sleb128 283
	.uleb128 0x7
	.4byte	.LASF540
	.sleb128 284
	.uleb128 0x7
	.4byte	.LASF541
	.sleb128 285
	.uleb128 0x7
	.4byte	.LASF542
	.sleb128 286
	.uleb128 0x7
	.4byte	.LASF543
	.sleb128 287
	.uleb128 0x7
	.4byte	.LASF544
	.sleb128 288
	.uleb128 0x7
	.4byte	.LASF545
	.sleb128 289
	.uleb128 0x7
	.4byte	.LASF546
	.sleb128 290
	.uleb128 0x7
	.4byte	.LASF547
	.sleb128 291
	.uleb128 0x7
	.4byte	.LASF548
	.sleb128 292
	.uleb128 0x7
	.4byte	.LASF549
	.sleb128 293
	.uleb128 0x7
	.4byte	.LASF550
	.sleb128 294
	.uleb128 0x7
	.4byte	.LASF551
	.sleb128 295
	.uleb128 0x7
	.4byte	.LASF552
	.sleb128 296
	.uleb128 0x7
	.4byte	.LASF553
	.sleb128 297
	.uleb128 0x7
	.4byte	.LASF554
	.sleb128 298
	.uleb128 0x7
	.4byte	.LASF555
	.sleb128 299
	.uleb128 0x7
	.4byte	.LASF556
	.sleb128 300
	.uleb128 0x7
	.4byte	.LASF557
	.sleb128 301
	.uleb128 0x7
	.4byte	.LASF558
	.sleb128 302
	.uleb128 0x7
	.4byte	.LASF559
	.sleb128 303
	.uleb128 0x7
	.4byte	.LASF560
	.sleb128 304
	.uleb128 0x7
	.4byte	.LASF561
	.sleb128 305
	.uleb128 0x7
	.4byte	.LASF562
	.sleb128 306
	.uleb128 0x7
	.4byte	.LASF563
	.sleb128 307
	.uleb128 0x7
	.4byte	.LASF564
	.sleb128 308
	.uleb128 0x7
	.4byte	.LASF565
	.sleb128 309
	.uleb128 0x7
	.4byte	.LASF566
	.sleb128 310
	.uleb128 0x7
	.4byte	.LASF567
	.sleb128 311
	.uleb128 0x7
	.4byte	.LASF568
	.sleb128 312
	.uleb128 0x7
	.4byte	.LASF569
	.sleb128 313
	.uleb128 0x7
	.4byte	.LASF570
	.sleb128 314
	.uleb128 0x7
	.4byte	.LASF571
	.sleb128 315
	.uleb128 0x7
	.4byte	.LASF572
	.sleb128 316
	.uleb128 0x7
	.4byte	.LASF573
	.sleb128 317
	.uleb128 0x7
	.4byte	.LASF574
	.sleb128 318
	.uleb128 0x7
	.4byte	.LASF575
	.sleb128 319
	.uleb128 0x7
	.4byte	.LASF576
	.sleb128 320
	.uleb128 0x7
	.4byte	.LASF577
	.sleb128 321
	.uleb128 0x7
	.4byte	.LASF578
	.sleb128 322
	.uleb128 0x7
	.4byte	.LASF579
	.sleb128 323
	.uleb128 0x7
	.4byte	.LASF580
	.sleb128 324
	.uleb128 0x7
	.4byte	.LASF581
	.sleb128 325
	.uleb128 0x7
	.4byte	.LASF582
	.sleb128 326
	.uleb128 0x7
	.4byte	.LASF583
	.sleb128 327
	.uleb128 0x7
	.4byte	.LASF584
	.sleb128 328
	.uleb128 0x7
	.4byte	.LASF585
	.sleb128 329
	.uleb128 0x7
	.4byte	.LASF586
	.sleb128 330
	.uleb128 0x7
	.4byte	.LASF587
	.sleb128 331
	.uleb128 0x7
	.4byte	.LASF588
	.sleb128 332
	.uleb128 0x7
	.4byte	.LASF589
	.sleb128 333
	.uleb128 0x7
	.4byte	.LASF590
	.sleb128 334
	.uleb128 0x7
	.4byte	.LASF591
	.sleb128 335
	.uleb128 0x7
	.4byte	.LASF592
	.sleb128 336
	.uleb128 0x7
	.4byte	.LASF593
	.sleb128 337
	.uleb128 0x7
	.4byte	.LASF594
	.sleb128 338
	.uleb128 0x7
	.4byte	.LASF595
	.sleb128 339
	.uleb128 0x7
	.4byte	.LASF596
	.sleb128 340
	.uleb128 0x7
	.4byte	.LASF597
	.sleb128 341
	.uleb128 0x7
	.4byte	.LASF598
	.sleb128 342
	.uleb128 0x7
	.4byte	.LASF599
	.sleb128 343
	.uleb128 0x7
	.4byte	.LASF600
	.sleb128 344
	.uleb128 0x7
	.4byte	.LASF601
	.sleb128 345
	.uleb128 0x7
	.4byte	.LASF602
	.sleb128 346
	.uleb128 0x7
	.4byte	.LASF603
	.sleb128 347
	.uleb128 0x7
	.4byte	.LASF604
	.sleb128 348
	.uleb128 0x7
	.4byte	.LASF605
	.sleb128 349
	.uleb128 0x7
	.4byte	.LASF606
	.sleb128 350
	.uleb128 0x7
	.4byte	.LASF607
	.sleb128 351
	.uleb128 0x7
	.4byte	.LASF608
	.sleb128 352
	.uleb128 0x7
	.4byte	.LASF609
	.sleb128 353
	.uleb128 0x7
	.4byte	.LASF610
	.sleb128 354
	.uleb128 0x7
	.4byte	.LASF611
	.sleb128 355
	.uleb128 0x7
	.4byte	.LASF612
	.sleb128 356
	.uleb128 0x7
	.4byte	.LASF613
	.sleb128 357
	.uleb128 0x7
	.4byte	.LASF614
	.sleb128 358
	.uleb128 0x7
	.4byte	.LASF615
	.sleb128 359
	.uleb128 0x7
	.4byte	.LASF616
	.sleb128 360
	.uleb128 0x7
	.4byte	.LASF617
	.sleb128 361
	.uleb128 0x7
	.4byte	.LASF618
	.sleb128 362
	.uleb128 0x7
	.4byte	.LASF619
	.sleb128 363
	.uleb128 0x7
	.4byte	.LASF620
	.sleb128 364
	.uleb128 0x7
	.4byte	.LASF621
	.sleb128 365
	.uleb128 0x7
	.4byte	.LASF622
	.sleb128 366
	.uleb128 0x7
	.4byte	.LASF623
	.sleb128 367
	.uleb128 0x7
	.4byte	.LASF624
	.sleb128 368
	.uleb128 0x7
	.4byte	.LASF625
	.sleb128 369
	.uleb128 0x7
	.4byte	.LASF626
	.sleb128 370
	.uleb128 0x7
	.4byte	.LASF627
	.sleb128 371
	.uleb128 0x7
	.4byte	.LASF628
	.sleb128 372
	.uleb128 0x7
	.4byte	.LASF629
	.sleb128 373
	.uleb128 0x7
	.4byte	.LASF630
	.sleb128 374
	.uleb128 0x7
	.4byte	.LASF631
	.sleb128 375
	.uleb128 0x7
	.4byte	.LASF632
	.sleb128 376
	.uleb128 0x7
	.4byte	.LASF633
	.sleb128 377
	.uleb128 0x7
	.4byte	.LASF634
	.sleb128 378
	.uleb128 0x7
	.4byte	.LASF635
	.sleb128 379
	.uleb128 0x7
	.4byte	.LASF636
	.sleb128 380
	.uleb128 0x7
	.4byte	.LASF637
	.sleb128 381
	.uleb128 0x7
	.4byte	.LASF638
	.sleb128 382
	.uleb128 0x7
	.4byte	.LASF639
	.sleb128 383
	.uleb128 0x7
	.4byte	.LASF640
	.sleb128 384
	.uleb128 0x7
	.4byte	.LASF641
	.sleb128 385
	.uleb128 0x7
	.4byte	.LASF642
	.sleb128 386
	.uleb128 0x7
	.4byte	.LASF643
	.sleb128 387
	.uleb128 0x7
	.4byte	.LASF644
	.sleb128 388
	.uleb128 0x7
	.4byte	.LASF645
	.sleb128 389
	.uleb128 0x7
	.4byte	.LASF646
	.sleb128 390
	.uleb128 0x7
	.4byte	.LASF647
	.sleb128 391
	.uleb128 0x7
	.4byte	.LASF648
	.sleb128 392
	.uleb128 0x7
	.4byte	.LASF649
	.sleb128 393
	.uleb128 0x7
	.4byte	.LASF650
	.sleb128 394
	.uleb128 0x7
	.4byte	.LASF651
	.sleb128 395
	.uleb128 0x7
	.4byte	.LASF652
	.sleb128 396
	.uleb128 0x7
	.4byte	.LASF653
	.sleb128 397
	.uleb128 0x7
	.4byte	.LASF654
	.sleb128 398
	.uleb128 0x7
	.4byte	.LASF655
	.sleb128 399
	.uleb128 0x7
	.4byte	.LASF656
	.sleb128 400
	.uleb128 0x7
	.4byte	.LASF657
	.sleb128 401
	.uleb128 0x7
	.4byte	.LASF658
	.sleb128 402
	.uleb128 0x7
	.4byte	.LASF659
	.sleb128 403
	.uleb128 0x7
	.4byte	.LASF660
	.sleb128 404
	.uleb128 0x7
	.4byte	.LASF661
	.sleb128 405
	.uleb128 0x7
	.4byte	.LASF662
	.sleb128 406
	.uleb128 0x7
	.4byte	.LASF663
	.sleb128 407
	.uleb128 0x7
	.4byte	.LASF664
	.sleb128 408
	.uleb128 0x7
	.4byte	.LASF665
	.sleb128 409
	.uleb128 0x7
	.4byte	.LASF666
	.sleb128 410
	.uleb128 0x7
	.4byte	.LASF667
	.sleb128 411
	.uleb128 0x7
	.4byte	.LASF668
	.sleb128 412
	.uleb128 0x7
	.4byte	.LASF669
	.sleb128 413
	.uleb128 0x7
	.4byte	.LASF670
	.sleb128 414
	.uleb128 0x7
	.4byte	.LASF671
	.sleb128 415
	.uleb128 0x7
	.4byte	.LASF672
	.sleb128 416
	.uleb128 0x7
	.4byte	.LASF673
	.sleb128 417
	.uleb128 0x7
	.4byte	.LASF674
	.sleb128 418
	.uleb128 0x7
	.4byte	.LASF675
	.sleb128 419
	.uleb128 0x7
	.4byte	.LASF676
	.sleb128 420
	.uleb128 0x7
	.4byte	.LASF677
	.sleb128 421
	.uleb128 0x7
	.4byte	.LASF678
	.sleb128 422
	.uleb128 0x7
	.4byte	.LASF679
	.sleb128 423
	.uleb128 0x7
	.4byte	.LASF680
	.sleb128 424
	.uleb128 0x7
	.4byte	.LASF681
	.sleb128 425
	.uleb128 0x7
	.4byte	.LASF682
	.sleb128 426
	.uleb128 0x7
	.4byte	.LASF683
	.sleb128 427
	.uleb128 0x7
	.4byte	.LASF684
	.sleb128 428
	.uleb128 0x7
	.4byte	.LASF685
	.sleb128 429
	.uleb128 0x7
	.4byte	.LASF686
	.sleb128 430
	.uleb128 0x7
	.4byte	.LASF687
	.sleb128 431
	.uleb128 0x7
	.4byte	.LASF688
	.sleb128 432
	.uleb128 0x7
	.4byte	.LASF689
	.sleb128 433
	.uleb128 0x7
	.4byte	.LASF690
	.sleb128 434
	.uleb128 0x7
	.4byte	.LASF691
	.sleb128 435
	.uleb128 0x7
	.4byte	.LASF692
	.sleb128 436
	.uleb128 0x7
	.4byte	.LASF693
	.sleb128 437
	.uleb128 0x7
	.4byte	.LASF694
	.sleb128 438
	.uleb128 0x7
	.4byte	.LASF695
	.sleb128 439
	.uleb128 0x7
	.4byte	.LASF696
	.sleb128 440
	.uleb128 0x7
	.4byte	.LASF697
	.sleb128 441
	.uleb128 0x7
	.4byte	.LASF698
	.sleb128 442
	.uleb128 0x7
	.4byte	.LASF699
	.sleb128 443
	.uleb128 0x7
	.4byte	.LASF700
	.sleb128 444
	.uleb128 0x7
	.4byte	.LASF701
	.sleb128 445
	.uleb128 0x7
	.4byte	.LASF702
	.sleb128 446
	.uleb128 0x7
	.4byte	.LASF703
	.sleb128 447
	.uleb128 0x7
	.4byte	.LASF704
	.sleb128 448
	.uleb128 0x7
	.4byte	.LASF705
	.sleb128 449
	.uleb128 0x7
	.4byte	.LASF706
	.sleb128 450
	.uleb128 0x7
	.4byte	.LASF707
	.sleb128 451
	.uleb128 0x7
	.4byte	.LASF708
	.sleb128 452
	.uleb128 0x7
	.4byte	.LASF709
	.sleb128 453
	.uleb128 0x7
	.4byte	.LASF710
	.sleb128 454
	.uleb128 0x7
	.4byte	.LASF711
	.sleb128 455
	.uleb128 0x7
	.4byte	.LASF712
	.sleb128 456
	.uleb128 0x7
	.4byte	.LASF713
	.sleb128 457
	.uleb128 0x7
	.4byte	.LASF714
	.sleb128 458
	.uleb128 0x7
	.4byte	.LASF715
	.sleb128 459
	.uleb128 0x7
	.4byte	.LASF716
	.sleb128 460
	.uleb128 0x7
	.4byte	.LASF717
	.sleb128 461
	.uleb128 0x7
	.4byte	.LASF718
	.sleb128 462
	.uleb128 0x7
	.4byte	.LASF719
	.sleb128 463
	.uleb128 0x7
	.4byte	.LASF720
	.sleb128 464
	.uleb128 0x7
	.4byte	.LASF721
	.sleb128 465
	.uleb128 0x7
	.4byte	.LASF722
	.sleb128 466
	.uleb128 0x7
	.4byte	.LASF723
	.sleb128 467
	.uleb128 0x7
	.4byte	.LASF724
	.sleb128 468
	.uleb128 0x7
	.4byte	.LASF725
	.sleb128 469
	.uleb128 0x7
	.4byte	.LASF726
	.sleb128 470
	.uleb128 0x7
	.4byte	.LASF727
	.sleb128 471
	.uleb128 0x7
	.4byte	.LASF728
	.sleb128 472
	.uleb128 0x7
	.4byte	.LASF729
	.sleb128 473
	.uleb128 0x7
	.4byte	.LASF730
	.sleb128 474
	.uleb128 0x7
	.4byte	.LASF731
	.sleb128 475
	.uleb128 0x7
	.4byte	.LASF732
	.sleb128 476
	.uleb128 0x7
	.4byte	.LASF733
	.sleb128 477
	.uleb128 0x7
	.4byte	.LASF734
	.sleb128 478
	.uleb128 0x7
	.4byte	.LASF735
	.sleb128 479
	.uleb128 0x7
	.4byte	.LASF736
	.sleb128 480
	.uleb128 0x7
	.4byte	.LASF737
	.sleb128 481
	.uleb128 0x7
	.4byte	.LASF738
	.sleb128 482
	.uleb128 0x7
	.4byte	.LASF739
	.sleb128 483
	.uleb128 0x7
	.4byte	.LASF740
	.sleb128 484
	.uleb128 0x7
	.4byte	.LASF741
	.sleb128 485
	.uleb128 0x7
	.4byte	.LASF742
	.sleb128 486
	.uleb128 0x7
	.4byte	.LASF743
	.sleb128 487
	.uleb128 0x7
	.4byte	.LASF744
	.sleb128 488
	.uleb128 0x7
	.4byte	.LASF745
	.sleb128 489
	.uleb128 0x7
	.4byte	.LASF746
	.sleb128 490
	.uleb128 0x7
	.4byte	.LASF747
	.sleb128 491
	.uleb128 0x7
	.4byte	.LASF748
	.sleb128 492
	.uleb128 0x7
	.4byte	.LASF749
	.sleb128 493
	.uleb128 0x7
	.4byte	.LASF750
	.sleb128 494
	.uleb128 0x7
	.4byte	.LASF751
	.sleb128 495
	.uleb128 0x7
	.4byte	.LASF752
	.sleb128 496
	.uleb128 0x7
	.4byte	.LASF753
	.sleb128 497
	.uleb128 0x7
	.4byte	.LASF754
	.sleb128 498
	.uleb128 0x7
	.4byte	.LASF755
	.sleb128 499
	.uleb128 0x7
	.4byte	.LASF756
	.sleb128 500
	.uleb128 0x7
	.4byte	.LASF757
	.sleb128 501
	.uleb128 0x7
	.4byte	.LASF758
	.sleb128 502
	.uleb128 0x7
	.4byte	.LASF759
	.sleb128 503
	.uleb128 0x7
	.4byte	.LASF760
	.sleb128 504
	.uleb128 0x7
	.4byte	.LASF761
	.sleb128 505
	.uleb128 0x7
	.4byte	.LASF762
	.sleb128 506
	.uleb128 0x7
	.4byte	.LASF763
	.sleb128 507
	.uleb128 0x7
	.4byte	.LASF764
	.sleb128 508
	.uleb128 0x7
	.4byte	.LASF765
	.sleb128 509
	.uleb128 0x7
	.4byte	.LASF766
	.sleb128 510
	.uleb128 0x7
	.4byte	.LASF767
	.sleb128 511
	.uleb128 0x7
	.4byte	.LASF768
	.sleb128 512
	.uleb128 0x7
	.4byte	.LASF769
	.sleb128 513
	.uleb128 0x7
	.4byte	.LASF770
	.sleb128 514
	.uleb128 0x7
	.4byte	.LASF771
	.sleb128 515
	.uleb128 0x7
	.4byte	.LASF772
	.sleb128 516
	.uleb128 0x7
	.4byte	.LASF773
	.sleb128 517
	.uleb128 0x7
	.4byte	.LASF774
	.sleb128 518
	.uleb128 0x7
	.4byte	.LASF775
	.sleb128 519
	.uleb128 0x7
	.4byte	.LASF776
	.sleb128 520
	.uleb128 0x7
	.4byte	.LASF777
	.sleb128 521
	.uleb128 0x7
	.4byte	.LASF778
	.sleb128 522
	.uleb128 0x7
	.4byte	.LASF779
	.sleb128 523
	.uleb128 0x7
	.4byte	.LASF780
	.sleb128 524
	.uleb128 0x7
	.4byte	.LASF781
	.sleb128 525
	.uleb128 0x7
	.4byte	.LASF782
	.sleb128 526
	.uleb128 0x7
	.4byte	.LASF783
	.sleb128 527
	.uleb128 0x7
	.4byte	.LASF784
	.sleb128 528
	.uleb128 0x7
	.4byte	.LASF785
	.sleb128 529
	.uleb128 0x7
	.4byte	.LASF786
	.sleb128 530
	.uleb128 0x7
	.4byte	.LASF787
	.sleb128 531
	.uleb128 0x7
	.4byte	.LASF788
	.sleb128 532
	.uleb128 0x7
	.4byte	.LASF789
	.sleb128 533
	.uleb128 0x7
	.4byte	.LASF790
	.sleb128 534
	.uleb128 0x7
	.4byte	.LASF791
	.sleb128 535
	.uleb128 0x7
	.4byte	.LASF792
	.sleb128 536
	.uleb128 0x7
	.4byte	.LASF793
	.sleb128 537
	.uleb128 0x7
	.4byte	.LASF794
	.sleb128 538
	.uleb128 0x7
	.4byte	.LASF795
	.sleb128 539
	.uleb128 0x7
	.4byte	.LASF796
	.sleb128 540
	.uleb128 0x7
	.4byte	.LASF797
	.sleb128 541
	.uleb128 0x7
	.4byte	.LASF798
	.sleb128 542
	.uleb128 0x7
	.4byte	.LASF799
	.sleb128 543
	.uleb128 0x7
	.4byte	.LASF800
	.sleb128 544
	.uleb128 0x7
	.4byte	.LASF801
	.sleb128 545
	.uleb128 0x7
	.4byte	.LASF802
	.sleb128 546
	.uleb128 0x7
	.4byte	.LASF803
	.sleb128 547
	.uleb128 0x7
	.4byte	.LASF804
	.sleb128 548
	.uleb128 0x7
	.4byte	.LASF805
	.sleb128 549
	.uleb128 0x7
	.4byte	.LASF806
	.sleb128 550
	.uleb128 0x7
	.4byte	.LASF807
	.sleb128 551
	.uleb128 0x7
	.4byte	.LASF808
	.sleb128 552
	.uleb128 0x7
	.4byte	.LASF809
	.sleb128 553
	.uleb128 0x7
	.4byte	.LASF810
	.sleb128 554
	.uleb128 0x7
	.4byte	.LASF811
	.sleb128 555
	.uleb128 0x7
	.4byte	.LASF812
	.sleb128 556
	.uleb128 0x7
	.4byte	.LASF813
	.sleb128 557
	.uleb128 0x7
	.4byte	.LASF814
	.sleb128 558
	.uleb128 0x7
	.4byte	.LASF815
	.sleb128 559
	.uleb128 0x7
	.4byte	.LASF816
	.sleb128 560
	.uleb128 0x7
	.4byte	.LASF817
	.sleb128 561
	.uleb128 0x7
	.4byte	.LASF818
	.sleb128 562
	.uleb128 0x7
	.4byte	.LASF819
	.sleb128 563
	.uleb128 0x7
	.4byte	.LASF820
	.sleb128 564
	.uleb128 0x7
	.4byte	.LASF821
	.sleb128 565
	.uleb128 0x7
	.4byte	.LASF822
	.sleb128 566
	.uleb128 0x7
	.4byte	.LASF823
	.sleb128 567
	.uleb128 0x7
	.4byte	.LASF824
	.sleb128 568
	.uleb128 0x7
	.4byte	.LASF825
	.sleb128 569
	.uleb128 0x7
	.4byte	.LASF826
	.sleb128 570
	.uleb128 0x7
	.4byte	.LASF827
	.sleb128 571
	.uleb128 0x7
	.4byte	.LASF828
	.sleb128 572
	.uleb128 0x7
	.4byte	.LASF829
	.sleb128 573
	.uleb128 0x7
	.4byte	.LASF830
	.sleb128 574
	.uleb128 0x7
	.4byte	.LASF831
	.sleb128 575
	.uleb128 0x7
	.4byte	.LASF832
	.sleb128 576
	.uleb128 0x7
	.4byte	.LASF833
	.sleb128 577
	.uleb128 0x7
	.4byte	.LASF834
	.sleb128 578
	.uleb128 0x7
	.4byte	.LASF835
	.sleb128 579
	.uleb128 0x7
	.4byte	.LASF836
	.sleb128 580
	.uleb128 0x7
	.4byte	.LASF837
	.sleb128 581
	.uleb128 0x7
	.4byte	.LASF838
	.sleb128 582
	.uleb128 0x7
	.4byte	.LASF839
	.sleb128 583
	.uleb128 0x7
	.4byte	.LASF840
	.sleb128 584
	.uleb128 0x7
	.4byte	.LASF841
	.sleb128 585
	.uleb128 0x7
	.4byte	.LASF842
	.sleb128 586
	.uleb128 0x7
	.4byte	.LASF843
	.sleb128 587
	.uleb128 0x7
	.4byte	.LASF844
	.sleb128 588
	.uleb128 0x7
	.4byte	.LASF845
	.sleb128 589
	.uleb128 0x7
	.4byte	.LASF846
	.sleb128 590
	.uleb128 0x7
	.4byte	.LASF847
	.sleb128 591
	.uleb128 0x7
	.4byte	.LASF848
	.sleb128 592
	.uleb128 0x7
	.4byte	.LASF849
	.sleb128 593
	.uleb128 0x7
	.4byte	.LASF850
	.sleb128 594
	.uleb128 0x7
	.4byte	.LASF851
	.sleb128 595
	.uleb128 0x7
	.4byte	.LASF852
	.sleb128 596
	.uleb128 0x7
	.4byte	.LASF853
	.sleb128 597
	.uleb128 0x7
	.4byte	.LASF854
	.sleb128 598
	.uleb128 0x7
	.4byte	.LASF855
	.sleb128 599
	.uleb128 0x7
	.4byte	.LASF856
	.sleb128 600
	.uleb128 0x7
	.4byte	.LASF857
	.sleb128 601
	.uleb128 0x7
	.4byte	.LASF858
	.sleb128 602
	.uleb128 0x7
	.4byte	.LASF859
	.sleb128 603
	.uleb128 0x7
	.4byte	.LASF860
	.sleb128 604
	.uleb128 0x7
	.4byte	.LASF861
	.sleb128 605
	.uleb128 0x7
	.4byte	.LASF862
	.sleb128 606
	.uleb128 0x7
	.4byte	.LASF863
	.sleb128 607
	.uleb128 0x7
	.4byte	.LASF864
	.sleb128 608
	.uleb128 0x7
	.4byte	.LASF865
	.sleb128 609
	.uleb128 0x7
	.4byte	.LASF866
	.sleb128 610
	.uleb128 0x7
	.4byte	.LASF867
	.sleb128 611
	.uleb128 0x7
	.4byte	.LASF868
	.sleb128 612
	.uleb128 0x7
	.4byte	.LASF869
	.sleb128 613
	.uleb128 0x7
	.4byte	.LASF870
	.sleb128 614
	.uleb128 0x7
	.4byte	.LASF871
	.sleb128 615
	.uleb128 0x7
	.4byte	.LASF872
	.sleb128 616
	.uleb128 0x7
	.4byte	.LASF873
	.sleb128 617
	.uleb128 0x7
	.4byte	.LASF874
	.sleb128 618
	.uleb128 0x7
	.4byte	.LASF875
	.sleb128 619
	.uleb128 0x7
	.4byte	.LASF876
	.sleb128 620
	.uleb128 0x7
	.4byte	.LASF877
	.sleb128 621
	.uleb128 0x7
	.4byte	.LASF878
	.sleb128 622
	.uleb128 0x7
	.4byte	.LASF879
	.sleb128 623
	.uleb128 0x7
	.4byte	.LASF880
	.sleb128 624
	.uleb128 0x7
	.4byte	.LASF881
	.sleb128 625
	.uleb128 0x7
	.4byte	.LASF882
	.sleb128 626
	.uleb128 0x7
	.4byte	.LASF883
	.sleb128 627
	.uleb128 0x7
	.4byte	.LASF884
	.sleb128 628
	.uleb128 0x7
	.4byte	.LASF885
	.sleb128 629
	.uleb128 0x7
	.4byte	.LASF886
	.sleb128 630
	.uleb128 0x7
	.4byte	.LASF887
	.sleb128 631
	.uleb128 0x7
	.4byte	.LASF888
	.sleb128 632
	.uleb128 0x7
	.4byte	.LASF889
	.sleb128 633
	.uleb128 0x7
	.4byte	.LASF890
	.sleb128 634
	.uleb128 0x7
	.4byte	.LASF891
	.sleb128 635
	.uleb128 0x7
	.4byte	.LASF892
	.sleb128 636
	.uleb128 0x7
	.4byte	.LASF893
	.sleb128 637
	.uleb128 0x7
	.4byte	.LASF894
	.sleb128 638
	.uleb128 0x7
	.4byte	.LASF895
	.sleb128 639
	.uleb128 0x7
	.4byte	.LASF896
	.sleb128 640
	.uleb128 0x7
	.4byte	.LASF897
	.sleb128 641
	.uleb128 0x7
	.4byte	.LASF898
	.sleb128 642
	.uleb128 0x7
	.4byte	.LASF899
	.sleb128 643
	.uleb128 0x7
	.4byte	.LASF900
	.sleb128 644
	.uleb128 0x7
	.4byte	.LASF901
	.sleb128 645
	.uleb128 0x7
	.4byte	.LASF902
	.sleb128 646
	.uleb128 0x7
	.4byte	.LASF903
	.sleb128 647
	.uleb128 0x7
	.4byte	.LASF904
	.sleb128 648
	.uleb128 0x7
	.4byte	.LASF905
	.sleb128 649
	.uleb128 0x7
	.4byte	.LASF906
	.sleb128 650
	.uleb128 0x7
	.4byte	.LASF907
	.sleb128 651
	.uleb128 0x7
	.4byte	.LASF908
	.sleb128 652
	.uleb128 0x7
	.4byte	.LASF909
	.sleb128 653
	.uleb128 0x7
	.4byte	.LASF910
	.sleb128 654
	.uleb128 0x7
	.4byte	.LASF911
	.sleb128 655
	.uleb128 0x7
	.4byte	.LASF912
	.sleb128 656
	.uleb128 0x7
	.4byte	.LASF913
	.sleb128 657
	.uleb128 0x7
	.4byte	.LASF914
	.sleb128 658
	.uleb128 0x7
	.4byte	.LASF915
	.sleb128 659
	.uleb128 0x7
	.4byte	.LASF916
	.sleb128 660
	.uleb128 0x7
	.4byte	.LASF917
	.sleb128 661
	.uleb128 0x7
	.4byte	.LASF918
	.sleb128 662
	.uleb128 0x7
	.4byte	.LASF919
	.sleb128 663
	.uleb128 0x7
	.4byte	.LASF920
	.sleb128 664
	.uleb128 0x7
	.4byte	.LASF921
	.sleb128 665
	.uleb128 0x7
	.4byte	.LASF922
	.sleb128 666
	.uleb128 0x7
	.4byte	.LASF923
	.sleb128 667
	.uleb128 0x7
	.4byte	.LASF924
	.sleb128 668
	.uleb128 0x7
	.4byte	.LASF925
	.sleb128 669
	.uleb128 0x7
	.4byte	.LASF926
	.sleb128 670
	.uleb128 0x7
	.4byte	.LASF927
	.sleb128 671
	.uleb128 0x7
	.4byte	.LASF928
	.sleb128 672
	.uleb128 0x7
	.4byte	.LASF929
	.sleb128 673
	.uleb128 0x7
	.4byte	.LASF930
	.sleb128 674
	.uleb128 0x7
	.4byte	.LASF931
	.sleb128 675
	.uleb128 0x7
	.4byte	.LASF932
	.sleb128 676
	.uleb128 0x7
	.4byte	.LASF933
	.sleb128 677
	.uleb128 0x7
	.4byte	.LASF934
	.sleb128 678
	.uleb128 0x7
	.4byte	.LASF935
	.sleb128 679
	.uleb128 0x7
	.4byte	.LASF936
	.sleb128 680
	.uleb128 0x7
	.4byte	.LASF937
	.sleb128 681
	.uleb128 0x7
	.4byte	.LASF938
	.sleb128 682
	.uleb128 0x7
	.4byte	.LASF939
	.sleb128 683
	.uleb128 0x7
	.4byte	.LASF940
	.sleb128 684
	.uleb128 0x7
	.4byte	.LASF941
	.sleb128 685
	.uleb128 0x7
	.4byte	.LASF942
	.sleb128 686
	.uleb128 0x7
	.4byte	.LASF943
	.sleb128 687
	.uleb128 0x7
	.4byte	.LASF944
	.sleb128 688
	.uleb128 0x7
	.4byte	.LASF945
	.sleb128 689
	.uleb128 0x7
	.4byte	.LASF946
	.sleb128 690
	.uleb128 0x7
	.4byte	.LASF947
	.sleb128 691
	.uleb128 0x7
	.4byte	.LASF948
	.sleb128 692
	.uleb128 0x7
	.4byte	.LASF949
	.sleb128 693
	.uleb128 0x7
	.4byte	.LASF950
	.sleb128 694
	.uleb128 0x7
	.4byte	.LASF951
	.sleb128 695
	.uleb128 0x7
	.4byte	.LASF952
	.sleb128 696
	.uleb128 0x7
	.4byte	.LASF953
	.sleb128 697
	.uleb128 0x7
	.4byte	.LASF954
	.sleb128 698
	.uleb128 0x7
	.4byte	.LASF955
	.sleb128 699
	.uleb128 0x7
	.4byte	.LASF956
	.sleb128 700
	.uleb128 0x7
	.4byte	.LASF957
	.sleb128 701
	.uleb128 0x7
	.4byte	.LASF958
	.sleb128 702
	.uleb128 0x7
	.4byte	.LASF959
	.sleb128 703
	.uleb128 0x7
	.4byte	.LASF960
	.sleb128 704
	.uleb128 0x7
	.4byte	.LASF961
	.sleb128 705
	.uleb128 0x7
	.4byte	.LASF962
	.sleb128 706
	.uleb128 0x7
	.4byte	.LASF963
	.sleb128 707
	.uleb128 0x7
	.4byte	.LASF964
	.sleb128 708
	.uleb128 0x7
	.4byte	.LASF965
	.sleb128 709
	.uleb128 0x7
	.4byte	.LASF966
	.sleb128 710
	.uleb128 0x7
	.4byte	.LASF967
	.sleb128 711
	.uleb128 0x7
	.4byte	.LASF968
	.sleb128 712
	.uleb128 0x7
	.4byte	.LASF969
	.sleb128 713
	.uleb128 0x7
	.4byte	.LASF970
	.sleb128 714
	.uleb128 0x7
	.4byte	.LASF971
	.sleb128 715
	.uleb128 0x7
	.4byte	.LASF972
	.sleb128 716
	.uleb128 0x7
	.4byte	.LASF973
	.sleb128 717
	.uleb128 0x7
	.4byte	.LASF974
	.sleb128 718
	.uleb128 0x7
	.4byte	.LASF975
	.sleb128 719
	.uleb128 0x7
	.4byte	.LASF976
	.sleb128 720
	.uleb128 0x7
	.4byte	.LASF977
	.sleb128 721
	.uleb128 0x7
	.4byte	.LASF978
	.sleb128 722
	.uleb128 0x7
	.4byte	.LASF979
	.sleb128 723
	.uleb128 0x7
	.4byte	.LASF980
	.sleb128 724
	.uleb128 0x7
	.4byte	.LASF981
	.sleb128 725
	.uleb128 0x7
	.4byte	.LASF982
	.sleb128 726
	.uleb128 0x7
	.4byte	.LASF983
	.sleb128 727
	.uleb128 0x7
	.4byte	.LASF984
	.sleb128 728
	.uleb128 0x7
	.4byte	.LASF985
	.sleb128 729
	.uleb128 0x7
	.4byte	.LASF986
	.sleb128 730
	.uleb128 0x7
	.4byte	.LASF987
	.sleb128 731
	.uleb128 0x7
	.4byte	.LASF988
	.sleb128 732
	.uleb128 0x7
	.4byte	.LASF989
	.sleb128 733
	.uleb128 0x7
	.4byte	.LASF990
	.sleb128 734
	.uleb128 0x7
	.4byte	.LASF991
	.sleb128 735
	.uleb128 0x7
	.4byte	.LASF992
	.sleb128 736
	.uleb128 0x7
	.4byte	.LASF993
	.sleb128 737
	.uleb128 0x7
	.4byte	.LASF994
	.sleb128 738
	.uleb128 0x7
	.4byte	.LASF995
	.sleb128 739
	.uleb128 0x7
	.4byte	.LASF996
	.sleb128 740
	.uleb128 0x7
	.4byte	.LASF997
	.sleb128 741
	.uleb128 0x7
	.4byte	.LASF998
	.sleb128 742
	.uleb128 0x7
	.4byte	.LASF999
	.sleb128 743
	.uleb128 0x7
	.4byte	.LASF1000
	.sleb128 744
	.uleb128 0x7
	.4byte	.LASF1001
	.sleb128 745
	.uleb128 0x7
	.4byte	.LASF1002
	.sleb128 746
	.uleb128 0x7
	.4byte	.LASF1003
	.sleb128 747
	.uleb128 0x7
	.4byte	.LASF1004
	.sleb128 748
	.uleb128 0x7
	.4byte	.LASF1005
	.sleb128 749
	.uleb128 0x7
	.4byte	.LASF1006
	.sleb128 750
	.uleb128 0x7
	.4byte	.LASF1007
	.sleb128 751
	.uleb128 0x7
	.4byte	.LASF1008
	.sleb128 752
	.uleb128 0x7
	.4byte	.LASF1009
	.sleb128 753
	.uleb128 0x7
	.4byte	.LASF1010
	.sleb128 754
	.uleb128 0x7
	.4byte	.LASF1011
	.sleb128 755
	.uleb128 0x7
	.4byte	.LASF1012
	.sleb128 756
	.uleb128 0x7
	.4byte	.LASF1013
	.sleb128 757
	.uleb128 0x7
	.4byte	.LASF1014
	.sleb128 758
	.uleb128 0x7
	.4byte	.LASF1015
	.sleb128 759
	.uleb128 0x7
	.4byte	.LASF1016
	.sleb128 760
	.uleb128 0x7
	.4byte	.LASF1017
	.sleb128 761
	.uleb128 0x7
	.4byte	.LASF1018
	.sleb128 762
	.uleb128 0x7
	.4byte	.LASF1019
	.sleb128 763
	.uleb128 0x7
	.4byte	.LASF1020
	.sleb128 764
	.uleb128 0x7
	.4byte	.LASF1021
	.sleb128 765
	.uleb128 0x7
	.4byte	.LASF1022
	.sleb128 766
	.uleb128 0x7
	.4byte	.LASF1023
	.sleb128 767
	.uleb128 0x7
	.4byte	.LASF1024
	.sleb128 768
	.uleb128 0x7
	.4byte	.LASF1025
	.sleb128 769
	.uleb128 0x7
	.4byte	.LASF1026
	.sleb128 770
	.uleb128 0x7
	.4byte	.LASF1027
	.sleb128 771
	.uleb128 0x7
	.4byte	.LASF1028
	.sleb128 772
	.uleb128 0x7
	.4byte	.LASF1029
	.sleb128 773
	.uleb128 0x7
	.4byte	.LASF1030
	.sleb128 774
	.uleb128 0x7
	.4byte	.LASF1031
	.sleb128 775
	.uleb128 0x7
	.4byte	.LASF1032
	.sleb128 776
	.uleb128 0x7
	.4byte	.LASF1033
	.sleb128 777
	.uleb128 0x7
	.4byte	.LASF1034
	.sleb128 778
	.uleb128 0x7
	.4byte	.LASF1035
	.sleb128 779
	.uleb128 0x7
	.4byte	.LASF1036
	.sleb128 780
	.uleb128 0x7
	.4byte	.LASF1037
	.sleb128 781
	.uleb128 0x7
	.4byte	.LASF1038
	.sleb128 782
	.uleb128 0x7
	.4byte	.LASF1039
	.sleb128 783
	.uleb128 0x7
	.4byte	.LASF1040
	.sleb128 784
	.uleb128 0x7
	.4byte	.LASF1041
	.sleb128 785
	.uleb128 0x7
	.4byte	.LASF1042
	.sleb128 786
	.uleb128 0x7
	.4byte	.LASF1043
	.sleb128 787
	.uleb128 0x7
	.4byte	.LASF1044
	.sleb128 788
	.uleb128 0x7
	.4byte	.LASF1045
	.sleb128 789
	.uleb128 0x7
	.4byte	.LASF1046
	.sleb128 790
	.uleb128 0x7
	.4byte	.LASF1047
	.sleb128 791
	.uleb128 0x7
	.4byte	.LASF1048
	.sleb128 792
	.uleb128 0x7
	.4byte	.LASF1049
	.sleb128 793
	.uleb128 0x7
	.4byte	.LASF1050
	.sleb128 794
	.uleb128 0x7
	.4byte	.LASF1051
	.sleb128 795
	.uleb128 0x7
	.4byte	.LASF1052
	.sleb128 796
	.uleb128 0x7
	.4byte	.LASF1053
	.sleb128 797
	.uleb128 0x7
	.4byte	.LASF1054
	.sleb128 798
	.uleb128 0x7
	.4byte	.LASF1055
	.sleb128 799
	.uleb128 0x7
	.4byte	.LASF1056
	.sleb128 800
	.uleb128 0x7
	.4byte	.LASF1057
	.sleb128 801
	.uleb128 0x7
	.4byte	.LASF1058
	.sleb128 802
	.uleb128 0x7
	.4byte	.LASF1059
	.sleb128 803
	.uleb128 0x7
	.4byte	.LASF1060
	.sleb128 804
	.uleb128 0x7
	.4byte	.LASF1061
	.sleb128 805
	.uleb128 0x7
	.4byte	.LASF1062
	.sleb128 806
	.uleb128 0x7
	.4byte	.LASF1063
	.sleb128 807
	.uleb128 0x7
	.4byte	.LASF1064
	.sleb128 808
	.uleb128 0x7
	.4byte	.LASF1065
	.sleb128 809
	.uleb128 0x7
	.4byte	.LASF1066
	.sleb128 810
	.uleb128 0x7
	.4byte	.LASF1067
	.sleb128 811
	.uleb128 0x7
	.4byte	.LASF1068
	.sleb128 812
	.uleb128 0x7
	.4byte	.LASF1069
	.sleb128 813
	.uleb128 0x7
	.4byte	.LASF1070
	.sleb128 814
	.uleb128 0x7
	.4byte	.LASF1071
	.sleb128 815
	.uleb128 0x7
	.4byte	.LASF1072
	.sleb128 816
	.uleb128 0x7
	.4byte	.LASF1073
	.sleb128 817
	.uleb128 0x7
	.4byte	.LASF1074
	.sleb128 818
	.uleb128 0x7
	.4byte	.LASF1075
	.sleb128 819
	.uleb128 0x7
	.4byte	.LASF1076
	.sleb128 820
	.uleb128 0x7
	.4byte	.LASF1077
	.sleb128 821
	.uleb128 0x7
	.4byte	.LASF1078
	.sleb128 822
	.uleb128 0x7
	.4byte	.LASF1079
	.sleb128 823
	.uleb128 0x7
	.4byte	.LASF1080
	.sleb128 824
	.uleb128 0x7
	.4byte	.LASF1081
	.sleb128 825
	.uleb128 0x7
	.4byte	.LASF1082
	.sleb128 826
	.uleb128 0x7
	.4byte	.LASF1083
	.sleb128 827
	.uleb128 0x7
	.4byte	.LASF1084
	.sleb128 828
	.uleb128 0x7
	.4byte	.LASF1085
	.sleb128 829
	.uleb128 0x7
	.4byte	.LASF1086
	.sleb128 830
	.uleb128 0x7
	.4byte	.LASF1087
	.sleb128 831
	.uleb128 0x7
	.4byte	.LASF1088
	.sleb128 832
	.uleb128 0x7
	.4byte	.LASF1089
	.sleb128 833
	.uleb128 0x7
	.4byte	.LASF1090
	.sleb128 834
	.uleb128 0x7
	.4byte	.LASF1091
	.sleb128 835
	.uleb128 0x7
	.4byte	.LASF1092
	.sleb128 836
	.uleb128 0x7
	.4byte	.LASF1093
	.sleb128 837
	.uleb128 0x7
	.4byte	.LASF1094
	.sleb128 838
	.uleb128 0x7
	.4byte	.LASF1095
	.sleb128 839
	.uleb128 0x7
	.4byte	.LASF1096
	.sleb128 840
	.uleb128 0x7
	.4byte	.LASF1097
	.sleb128 841
	.uleb128 0x7
	.4byte	.LASF1098
	.sleb128 842
	.uleb128 0x7
	.4byte	.LASF1099
	.sleb128 843
	.uleb128 0x7
	.4byte	.LASF1100
	.sleb128 844
	.uleb128 0x7
	.4byte	.LASF1101
	.sleb128 845
	.uleb128 0x7
	.4byte	.LASF1102
	.sleb128 846
	.uleb128 0x7
	.4byte	.LASF1103
	.sleb128 847
	.uleb128 0x7
	.4byte	.LASF1104
	.sleb128 848
	.uleb128 0x7
	.4byte	.LASF1105
	.sleb128 849
	.uleb128 0x7
	.4byte	.LASF1106
	.sleb128 850
	.uleb128 0x7
	.4byte	.LASF1107
	.sleb128 851
	.uleb128 0x7
	.4byte	.LASF1108
	.sleb128 852
	.uleb128 0x7
	.4byte	.LASF1109
	.sleb128 853
	.uleb128 0x7
	.4byte	.LASF1110
	.sleb128 854
	.uleb128 0x7
	.4byte	.LASF1111
	.sleb128 855
	.uleb128 0x7
	.4byte	.LASF1112
	.sleb128 856
	.uleb128 0x7
	.4byte	.LASF1113
	.sleb128 857
	.uleb128 0x7
	.4byte	.LASF1114
	.sleb128 858
	.uleb128 0x7
	.4byte	.LASF1115
	.sleb128 859
	.uleb128 0x7
	.4byte	.LASF1116
	.sleb128 860
	.uleb128 0x7
	.4byte	.LASF1117
	.sleb128 861
	.uleb128 0x7
	.4byte	.LASF1118
	.sleb128 862
	.uleb128 0x7
	.4byte	.LASF1119
	.sleb128 863
	.uleb128 0x7
	.4byte	.LASF1120
	.sleb128 864
	.uleb128 0x7
	.4byte	.LASF1121
	.sleb128 865
	.uleb128 0x7
	.4byte	.LASF1122
	.sleb128 866
	.uleb128 0x7
	.4byte	.LASF1123
	.sleb128 867
	.uleb128 0x7
	.4byte	.LASF1124
	.sleb128 868
	.uleb128 0x7
	.4byte	.LASF1125
	.sleb128 869
	.uleb128 0x7
	.4byte	.LASF1126
	.sleb128 870
	.uleb128 0x7
	.4byte	.LASF1127
	.sleb128 871
	.uleb128 0x7
	.4byte	.LASF1128
	.sleb128 872
	.uleb128 0x7
	.4byte	.LASF1129
	.sleb128 873
	.uleb128 0x7
	.4byte	.LASF1130
	.sleb128 874
	.uleb128 0x7
	.4byte	.LASF1131
	.sleb128 875
	.uleb128 0x7
	.4byte	.LASF1132
	.sleb128 876
	.uleb128 0x7
	.4byte	.LASF1133
	.sleb128 877
	.uleb128 0x7
	.4byte	.LASF1134
	.sleb128 878
	.uleb128 0x7
	.4byte	.LASF1135
	.sleb128 879
	.uleb128 0x7
	.4byte	.LASF1136
	.sleb128 880
	.uleb128 0x7
	.4byte	.LASF1137
	.sleb128 881
	.uleb128 0x7
	.4byte	.LASF1138
	.sleb128 882
	.uleb128 0x7
	.4byte	.LASF1139
	.sleb128 883
	.uleb128 0x7
	.4byte	.LASF1140
	.sleb128 884
	.uleb128 0x7
	.4byte	.LASF1141
	.sleb128 885
	.uleb128 0x7
	.4byte	.LASF1142
	.sleb128 886
	.uleb128 0x7
	.4byte	.LASF1143
	.sleb128 887
	.uleb128 0x7
	.4byte	.LASF1144
	.sleb128 888
	.uleb128 0x7
	.4byte	.LASF1145
	.sleb128 889
	.uleb128 0x7
	.4byte	.LASF1146
	.sleb128 890
	.uleb128 0x7
	.4byte	.LASF1147
	.sleb128 891
	.uleb128 0x7
	.4byte	.LASF1148
	.sleb128 892
	.uleb128 0x7
	.4byte	.LASF1149
	.sleb128 893
	.uleb128 0x7
	.4byte	.LASF1150
	.sleb128 894
	.uleb128 0x7
	.4byte	.LASF1151
	.sleb128 895
	.uleb128 0x7
	.4byte	.LASF1152
	.sleb128 896
	.uleb128 0x7
	.4byte	.LASF1153
	.sleb128 897
	.uleb128 0x7
	.4byte	.LASF1154
	.sleb128 898
	.uleb128 0x7
	.4byte	.LASF1155
	.sleb128 899
	.uleb128 0x7
	.4byte	.LASF1156
	.sleb128 900
	.uleb128 0x7
	.4byte	.LASF1157
	.sleb128 901
	.uleb128 0x7
	.4byte	.LASF1158
	.sleb128 902
	.uleb128 0x7
	.4byte	.LASF1159
	.sleb128 903
	.uleb128 0x7
	.4byte	.LASF1160
	.sleb128 904
	.uleb128 0x7
	.4byte	.LASF1161
	.sleb128 905
	.uleb128 0x7
	.4byte	.LASF1162
	.sleb128 906
	.uleb128 0x7
	.4byte	.LASF1163
	.sleb128 907
	.uleb128 0x7
	.4byte	.LASF1164
	.sleb128 908
	.uleb128 0x7
	.4byte	.LASF1165
	.sleb128 909
	.uleb128 0x7
	.4byte	.LASF1166
	.sleb128 910
	.uleb128 0x7
	.4byte	.LASF1167
	.sleb128 911
	.uleb128 0x7
	.4byte	.LASF1168
	.sleb128 912
	.uleb128 0x7
	.4byte	.LASF1169
	.sleb128 913
	.uleb128 0x7
	.4byte	.LASF1170
	.sleb128 914
	.uleb128 0x7
	.4byte	.LASF1171
	.sleb128 915
	.uleb128 0x7
	.4byte	.LASF1172
	.sleb128 916
	.uleb128 0x7
	.4byte	.LASF1173
	.sleb128 917
	.uleb128 0x7
	.4byte	.LASF1174
	.sleb128 918
	.uleb128 0x7
	.4byte	.LASF1175
	.sleb128 919
	.uleb128 0x7
	.4byte	.LASF1176
	.sleb128 920
	.uleb128 0x7
	.4byte	.LASF1177
	.sleb128 921
	.uleb128 0x7
	.4byte	.LASF1178
	.sleb128 922
	.uleb128 0x7
	.4byte	.LASF1179
	.sleb128 923
	.uleb128 0x7
	.4byte	.LASF1180
	.sleb128 924
	.uleb128 0x7
	.4byte	.LASF1181
	.sleb128 925
	.uleb128 0x7
	.4byte	.LASF1182
	.sleb128 926
	.uleb128 0x7
	.4byte	.LASF1183
	.sleb128 927
	.uleb128 0x7
	.4byte	.LASF1184
	.sleb128 928
	.uleb128 0x7
	.4byte	.LASF1185
	.sleb128 929
	.uleb128 0x7
	.4byte	.LASF1186
	.sleb128 930
	.uleb128 0x7
	.4byte	.LASF1187
	.sleb128 931
	.uleb128 0x7
	.4byte	.LASF1188
	.sleb128 932
	.uleb128 0x7
	.4byte	.LASF1189
	.sleb128 933
	.uleb128 0x7
	.4byte	.LASF1190
	.sleb128 934
	.uleb128 0x7
	.4byte	.LASF1191
	.sleb128 935
	.uleb128 0x7
	.4byte	.LASF1192
	.sleb128 936
	.uleb128 0x7
	.4byte	.LASF1193
	.sleb128 937
	.uleb128 0x7
	.4byte	.LASF1194
	.sleb128 938
	.uleb128 0x7
	.4byte	.LASF1195
	.sleb128 939
	.uleb128 0x7
	.4byte	.LASF1196
	.sleb128 940
	.uleb128 0x7
	.4byte	.LASF1197
	.sleb128 941
	.uleb128 0x7
	.4byte	.LASF1198
	.sleb128 942
	.uleb128 0x7
	.4byte	.LASF1199
	.sleb128 943
	.uleb128 0x7
	.4byte	.LASF1200
	.sleb128 944
	.uleb128 0x7
	.4byte	.LASF1201
	.sleb128 945
	.uleb128 0x7
	.4byte	.LASF1202
	.sleb128 946
	.uleb128 0x7
	.4byte	.LASF1203
	.sleb128 947
	.uleb128 0x7
	.4byte	.LASF1204
	.sleb128 948
	.uleb128 0x7
	.4byte	.LASF1205
	.sleb128 949
	.uleb128 0x7
	.4byte	.LASF1206
	.sleb128 950
	.uleb128 0x7
	.4byte	.LASF1207
	.sleb128 951
	.uleb128 0x7
	.4byte	.LASF1208
	.sleb128 952
	.uleb128 0x7
	.4byte	.LASF1209
	.sleb128 953
	.uleb128 0x7
	.4byte	.LASF1210
	.sleb128 954
	.uleb128 0x7
	.4byte	.LASF1211
	.sleb128 955
	.uleb128 0x7
	.4byte	.LASF1212
	.sleb128 956
	.uleb128 0x7
	.4byte	.LASF1213
	.sleb128 957
	.uleb128 0x7
	.4byte	.LASF1214
	.sleb128 958
	.uleb128 0x7
	.4byte	.LASF1215
	.sleb128 959
	.uleb128 0x7
	.4byte	.LASF1216
	.sleb128 960
	.uleb128 0x7
	.4byte	.LASF1217
	.sleb128 961
	.uleb128 0x7
	.4byte	.LASF1218
	.sleb128 962
	.uleb128 0x7
	.4byte	.LASF1219
	.sleb128 963
	.uleb128 0x7
	.4byte	.LASF1220
	.sleb128 964
	.uleb128 0x7
	.4byte	.LASF1221
	.sleb128 965
	.uleb128 0x7
	.4byte	.LASF1222
	.sleb128 966
	.uleb128 0x7
	.4byte	.LASF1223
	.sleb128 967
	.uleb128 0x7
	.4byte	.LASF1224
	.sleb128 968
	.uleb128 0x7
	.4byte	.LASF1225
	.sleb128 969
	.uleb128 0x7
	.4byte	.LASF1226
	.sleb128 970
	.uleb128 0x7
	.4byte	.LASF1227
	.sleb128 971
	.uleb128 0x7
	.4byte	.LASF1228
	.sleb128 972
	.uleb128 0x7
	.4byte	.LASF1229
	.sleb128 973
	.uleb128 0x7
	.4byte	.LASF1230
	.sleb128 974
	.uleb128 0x7
	.4byte	.LASF1231
	.sleb128 975
	.uleb128 0x7
	.4byte	.LASF1232
	.sleb128 976
	.uleb128 0x7
	.4byte	.LASF1233
	.sleb128 977
	.uleb128 0x7
	.4byte	.LASF1234
	.sleb128 978
	.uleb128 0x7
	.4byte	.LASF1235
	.sleb128 979
	.uleb128 0x7
	.4byte	.LASF1236
	.sleb128 980
	.uleb128 0x7
	.4byte	.LASF1237
	.sleb128 981
	.uleb128 0x7
	.4byte	.LASF1238
	.sleb128 982
	.uleb128 0x7
	.4byte	.LASF1239
	.sleb128 983
	.uleb128 0x7
	.4byte	.LASF1240
	.sleb128 984
	.uleb128 0x7
	.4byte	.LASF1241
	.sleb128 985
	.uleb128 0x7
	.4byte	.LASF1242
	.sleb128 986
	.uleb128 0x7
	.4byte	.LASF1243
	.sleb128 987
	.uleb128 0x7
	.4byte	.LASF1244
	.sleb128 988
	.uleb128 0x7
	.4byte	.LASF1245
	.sleb128 989
	.uleb128 0x7
	.4byte	.LASF1246
	.sleb128 990
	.uleb128 0x7
	.4byte	.LASF1247
	.sleb128 991
	.uleb128 0x7
	.4byte	.LASF1248
	.sleb128 992
	.uleb128 0x7
	.4byte	.LASF1249
	.sleb128 993
	.uleb128 0x7
	.4byte	.LASF1250
	.sleb128 994
	.uleb128 0x7
	.4byte	.LASF1251
	.sleb128 995
	.uleb128 0x7
	.4byte	.LASF1252
	.sleb128 996
	.uleb128 0x7
	.4byte	.LASF1253
	.sleb128 997
	.uleb128 0x7
	.4byte	.LASF1254
	.sleb128 998
	.uleb128 0x7
	.4byte	.LASF1255
	.sleb128 999
	.uleb128 0x7
	.4byte	.LASF1256
	.sleb128 1040
	.uleb128 0x7
	.4byte	.LASF1257
	.sleb128 1041
	.uleb128 0x7
	.4byte	.LASF1258
	.sleb128 1042
	.uleb128 0x7
	.4byte	.LASF1259
	.sleb128 1043
	.uleb128 0x7
	.4byte	.LASF1260
	.sleb128 1044
	.uleb128 0x7
	.4byte	.LASF1261
	.sleb128 1045
	.uleb128 0x7
	.4byte	.LASF1262
	.sleb128 1046
	.uleb128 0x7
	.4byte	.LASF1263
	.sleb128 1047
	.uleb128 0x7
	.4byte	.LASF1264
	.sleb128 1048
	.uleb128 0x7
	.4byte	.LASF1265
	.sleb128 1049
	.uleb128 0x7
	.4byte	.LASF1266
	.sleb128 1050
	.uleb128 0x7
	.4byte	.LASF1267
	.sleb128 1051
	.uleb128 0x7
	.4byte	.LASF1268
	.sleb128 1052
	.uleb128 0x7
	.4byte	.LASF1269
	.sleb128 1053
	.uleb128 0x7
	.4byte	.LASF1270
	.sleb128 1054
	.uleb128 0x7
	.4byte	.LASF1271
	.sleb128 1055
	.uleb128 0x7
	.4byte	.LASF1272
	.sleb128 1056
	.uleb128 0x7
	.4byte	.LASF1273
	.sleb128 1057
	.uleb128 0x7
	.4byte	.LASF1274
	.sleb128 1058
	.uleb128 0x7
	.4byte	.LASF1275
	.sleb128 1059
	.uleb128 0x7
	.4byte	.LASF1276
	.sleb128 1060
	.uleb128 0x7
	.4byte	.LASF1277
	.sleb128 1061
	.uleb128 0x7
	.4byte	.LASF1278
	.sleb128 1062
	.uleb128 0x7
	.4byte	.LASF1279
	.sleb128 1063
	.uleb128 0x7
	.4byte	.LASF1280
	.sleb128 1064
	.uleb128 0x7
	.4byte	.LASF1281
	.sleb128 1065
	.uleb128 0x7
	.4byte	.LASF1282
	.sleb128 1066
	.uleb128 0x7
	.4byte	.LASF1283
	.sleb128 1067
	.uleb128 0x7
	.4byte	.LASF1284
	.sleb128 1068
	.uleb128 0x7
	.4byte	.LASF1285
	.sleb128 1069
	.uleb128 0x7
	.4byte	.LASF1286
	.sleb128 1070
	.uleb128 0x7
	.4byte	.LASF1287
	.sleb128 1071
	.uleb128 0x7
	.4byte	.LASF1288
	.sleb128 1072
	.uleb128 0x7
	.4byte	.LASF1289
	.sleb128 1073
	.uleb128 0x7
	.4byte	.LASF1290
	.sleb128 1074
	.uleb128 0x7
	.4byte	.LASF1291
	.sleb128 1075
	.uleb128 0x7
	.4byte	.LASF1292
	.sleb128 1076
	.byte	0
	.uleb128 0x13
	.4byte	.LASF1293
	.byte	0xf
	.2byte	0x4e3
	.4byte	0x832
	.uleb128 0x14
	.byte	0x1c
	.byte	0xf
	.2byte	0x4e9
	.4byte	0x24c7
	.uleb128 0x15
	.4byte	.LASF1294
	.byte	0xf
	.2byte	0x4eb
	.4byte	0x827
	.byte	0
	.uleb128 0x15
	.4byte	.LASF1295
	.byte	0xf
	.2byte	0x4ec
	.4byte	0x57
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF1296
	.byte	0xf
	.2byte	0x4ed
	.4byte	0x57
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF1297
	.byte	0xf
	.2byte	0x4ee
	.4byte	0x3fa
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF1298
	.byte	0xf
	.2byte	0x4ef
	.4byte	0x2456
	.byte	0x10
	.uleb128 0x15
	.4byte	.LASF1299
	.byte	0xf
	.2byte	0x4f0
	.4byte	0x57
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF1300
	.byte	0xf
	.2byte	0x4f0
	.4byte	0x57
	.byte	0x18
	.byte	0
	.uleb128 0x13
	.4byte	.LASF1301
	.byte	0xf
	.2byte	0x4f1
	.4byte	0x2462
	.uleb128 0x16
	.byte	0x1
	.byte	0xf
	.2byte	0x4fd
	.4byte	0x28cc
	.uleb128 0x7
	.4byte	.LASF1302
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF1303
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF1304
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF1305
	.sleb128 3
	.uleb128 0x7
	.4byte	.LASF1306
	.sleb128 4
	.uleb128 0x7
	.4byte	.LASF1307
	.sleb128 5
	.uleb128 0x7
	.4byte	.LASF1308
	.sleb128 6
	.uleb128 0x7
	.4byte	.LASF1309
	.sleb128 7
	.uleb128 0x7
	.4byte	.LASF1310
	.sleb128 8
	.uleb128 0x7
	.4byte	.LASF1311
	.sleb128 9
	.uleb128 0x7
	.4byte	.LASF1312
	.sleb128 10
	.uleb128 0x7
	.4byte	.LASF1313
	.sleb128 11
	.uleb128 0x7
	.4byte	.LASF1314
	.sleb128 12
	.uleb128 0x7
	.4byte	.LASF1315
	.sleb128 13
	.uleb128 0x7
	.4byte	.LASF1316
	.sleb128 14
	.uleb128 0x7
	.4byte	.LASF1317
	.sleb128 15
	.uleb128 0x7
	.4byte	.LASF1318
	.sleb128 16
	.uleb128 0x7
	.4byte	.LASF1319
	.sleb128 17
	.uleb128 0x7
	.4byte	.LASF1320
	.sleb128 18
	.uleb128 0x7
	.4byte	.LASF1321
	.sleb128 19
	.uleb128 0x7
	.4byte	.LASF1322
	.sleb128 20
	.uleb128 0x7
	.4byte	.LASF1323
	.sleb128 21
	.uleb128 0x7
	.4byte	.LASF1324
	.sleb128 22
	.uleb128 0x7
	.4byte	.LASF1325
	.sleb128 23
	.uleb128 0x7
	.4byte	.LASF1326
	.sleb128 24
	.uleb128 0x7
	.4byte	.LASF1327
	.sleb128 25
	.uleb128 0x7
	.4byte	.LASF1328
	.sleb128 26
	.uleb128 0x7
	.4byte	.LASF1329
	.sleb128 27
	.uleb128 0x7
	.4byte	.LASF1330
	.sleb128 28
	.uleb128 0x7
	.4byte	.LASF1331
	.sleb128 29
	.uleb128 0x7
	.4byte	.LASF1332
	.sleb128 30
	.uleb128 0x7
	.4byte	.LASF1333
	.sleb128 31
	.uleb128 0x7
	.4byte	.LASF1334
	.sleb128 32
	.uleb128 0x7
	.4byte	.LASF1335
	.sleb128 33
	.uleb128 0x7
	.4byte	.LASF1336
	.sleb128 34
	.uleb128 0x7
	.4byte	.LASF1337
	.sleb128 35
	.uleb128 0x7
	.4byte	.LASF1338
	.sleb128 36
	.uleb128 0x7
	.4byte	.LASF1339
	.sleb128 37
	.uleb128 0x7
	.4byte	.LASF1340
	.sleb128 38
	.uleb128 0x7
	.4byte	.LASF1341
	.sleb128 39
	.uleb128 0x7
	.4byte	.LASF1342
	.sleb128 40
	.uleb128 0x7
	.4byte	.LASF1343
	.sleb128 41
	.uleb128 0x7
	.4byte	.LASF1344
	.sleb128 42
	.uleb128 0x7
	.4byte	.LASF1345
	.sleb128 43
	.uleb128 0x7
	.4byte	.LASF1346
	.sleb128 44
	.uleb128 0x7
	.4byte	.LASF1347
	.sleb128 45
	.uleb128 0x7
	.4byte	.LASF1348
	.sleb128 46
	.uleb128 0x7
	.4byte	.LASF1349
	.sleb128 47
	.uleb128 0x7
	.4byte	.LASF1350
	.sleb128 48
	.uleb128 0x7
	.4byte	.LASF1351
	.sleb128 49
	.uleb128 0x7
	.4byte	.LASF1352
	.sleb128 50
	.uleb128 0x7
	.4byte	.LASF1353
	.sleb128 51
	.uleb128 0x7
	.4byte	.LASF1354
	.sleb128 52
	.uleb128 0x7
	.4byte	.LASF1355
	.sleb128 53
	.uleb128 0x7
	.4byte	.LASF1356
	.sleb128 54
	.uleb128 0x7
	.4byte	.LASF1357
	.sleb128 55
	.uleb128 0x7
	.4byte	.LASF1358
	.sleb128 56
	.uleb128 0x7
	.4byte	.LASF1359
	.sleb128 57
	.uleb128 0x7
	.4byte	.LASF1360
	.sleb128 58
	.uleb128 0x7
	.4byte	.LASF1361
	.sleb128 59
	.uleb128 0x7
	.4byte	.LASF1362
	.sleb128 60
	.uleb128 0x7
	.4byte	.LASF1363
	.sleb128 61
	.uleb128 0x7
	.4byte	.LASF1364
	.sleb128 62
	.uleb128 0x7
	.4byte	.LASF1365
	.sleb128 63
	.uleb128 0x7
	.4byte	.LASF1366
	.sleb128 64
	.uleb128 0x7
	.4byte	.LASF1367
	.sleb128 65
	.uleb128 0x7
	.4byte	.LASF1368
	.sleb128 66
	.uleb128 0x7
	.4byte	.LASF1369
	.sleb128 67
	.uleb128 0x7
	.4byte	.LASF1370
	.sleb128 68
	.uleb128 0x7
	.4byte	.LASF1371
	.sleb128 69
	.uleb128 0x7
	.4byte	.LASF1372
	.sleb128 70
	.uleb128 0x7
	.4byte	.LASF1373
	.sleb128 71
	.uleb128 0x7
	.4byte	.LASF1374
	.sleb128 72
	.uleb128 0x7
	.4byte	.LASF1375
	.sleb128 73
	.uleb128 0x7
	.4byte	.LASF1376
	.sleb128 74
	.uleb128 0x7
	.4byte	.LASF1377
	.sleb128 75
	.uleb128 0x7
	.4byte	.LASF1378
	.sleb128 76
	.uleb128 0x7
	.4byte	.LASF1379
	.sleb128 77
	.uleb128 0x7
	.4byte	.LASF1380
	.sleb128 78
	.uleb128 0x7
	.4byte	.LASF1381
	.sleb128 79
	.uleb128 0x7
	.4byte	.LASF1382
	.sleb128 80
	.uleb128 0x7
	.4byte	.LASF1383
	.sleb128 81
	.uleb128 0x7
	.4byte	.LASF1384
	.sleb128 82
	.uleb128 0x7
	.4byte	.LASF1385
	.sleb128 83
	.uleb128 0x7
	.4byte	.LASF1386
	.sleb128 84
	.uleb128 0x7
	.4byte	.LASF1387
	.sleb128 85
	.uleb128 0x7
	.4byte	.LASF1388
	.sleb128 86
	.uleb128 0x7
	.4byte	.LASF1389
	.sleb128 87
	.uleb128 0x7
	.4byte	.LASF1390
	.sleb128 88
	.uleb128 0x7
	.4byte	.LASF1391
	.sleb128 89
	.uleb128 0x7
	.4byte	.LASF1392
	.sleb128 90
	.uleb128 0x7
	.4byte	.LASF1393
	.sleb128 91
	.uleb128 0x7
	.4byte	.LASF1394
	.sleb128 92
	.uleb128 0x7
	.4byte	.LASF1395
	.sleb128 93
	.uleb128 0x7
	.4byte	.LASF1396
	.sleb128 94
	.uleb128 0x7
	.4byte	.LASF1397
	.sleb128 95
	.uleb128 0x7
	.4byte	.LASF1398
	.sleb128 96
	.uleb128 0x7
	.4byte	.LASF1399
	.sleb128 97
	.uleb128 0x7
	.4byte	.LASF1400
	.sleb128 98
	.uleb128 0x7
	.4byte	.LASF1401
	.sleb128 99
	.uleb128 0x7
	.4byte	.LASF1402
	.sleb128 100
	.uleb128 0x7
	.4byte	.LASF1403
	.sleb128 101
	.uleb128 0x7
	.4byte	.LASF1404
	.sleb128 102
	.uleb128 0x7
	.4byte	.LASF1405
	.sleb128 103
	.uleb128 0x7
	.4byte	.LASF1406
	.sleb128 104
	.uleb128 0x7
	.4byte	.LASF1407
	.sleb128 105
	.uleb128 0x7
	.4byte	.LASF1408
	.sleb128 106
	.uleb128 0x7
	.4byte	.LASF1409
	.sleb128 107
	.uleb128 0x7
	.4byte	.LASF1410
	.sleb128 108
	.uleb128 0x7
	.4byte	.LASF1411
	.sleb128 109
	.uleb128 0x7
	.4byte	.LASF1412
	.sleb128 110
	.uleb128 0x7
	.4byte	.LASF1413
	.sleb128 111
	.uleb128 0x7
	.4byte	.LASF1414
	.sleb128 112
	.uleb128 0x7
	.4byte	.LASF1415
	.sleb128 113
	.uleb128 0x7
	.4byte	.LASF1416
	.sleb128 114
	.uleb128 0x7
	.4byte	.LASF1417
	.sleb128 115
	.uleb128 0x7
	.4byte	.LASF1418
	.sleb128 116
	.uleb128 0x7
	.4byte	.LASF1419
	.sleb128 117
	.uleb128 0x7
	.4byte	.LASF1420
	.sleb128 118
	.uleb128 0x7
	.4byte	.LASF1421
	.sleb128 119
	.uleb128 0x7
	.4byte	.LASF1422
	.sleb128 120
	.uleb128 0x7
	.4byte	.LASF1423
	.sleb128 121
	.uleb128 0x7
	.4byte	.LASF1424
	.sleb128 122
	.uleb128 0x7
	.4byte	.LASF1425
	.sleb128 123
	.uleb128 0x7
	.4byte	.LASF1426
	.sleb128 124
	.uleb128 0x7
	.4byte	.LASF1427
	.sleb128 125
	.uleb128 0x7
	.4byte	.LASF1428
	.sleb128 126
	.uleb128 0x7
	.4byte	.LASF1429
	.sleb128 127
	.uleb128 0x7
	.4byte	.LASF1430
	.sleb128 128
	.uleb128 0x7
	.4byte	.LASF1431
	.sleb128 129
	.uleb128 0x7
	.4byte	.LASF1432
	.sleb128 130
	.uleb128 0x7
	.4byte	.LASF1433
	.sleb128 131
	.uleb128 0x7
	.4byte	.LASF1434
	.sleb128 132
	.uleb128 0x7
	.4byte	.LASF1435
	.sleb128 133
	.uleb128 0x7
	.4byte	.LASF1436
	.sleb128 134
	.uleb128 0x7
	.4byte	.LASF1437
	.sleb128 135
	.uleb128 0x7
	.4byte	.LASF1438
	.sleb128 136
	.uleb128 0x7
	.4byte	.LASF1439
	.sleb128 137
	.uleb128 0x7
	.4byte	.LASF1440
	.sleb128 138
	.uleb128 0x7
	.4byte	.LASF1441
	.sleb128 139
	.uleb128 0x7
	.4byte	.LASF1442
	.sleb128 140
	.uleb128 0x7
	.4byte	.LASF1443
	.sleb128 141
	.uleb128 0x7
	.4byte	.LASF1444
	.sleb128 142
	.uleb128 0x7
	.4byte	.LASF1445
	.sleb128 143
	.uleb128 0x7
	.4byte	.LASF1446
	.sleb128 144
	.uleb128 0x7
	.4byte	.LASF1447
	.sleb128 145
	.uleb128 0x7
	.4byte	.LASF1448
	.sleb128 146
	.uleb128 0x7
	.4byte	.LASF1449
	.sleb128 147
	.uleb128 0x7
	.4byte	.LASF1450
	.sleb128 148
	.uleb128 0x7
	.4byte	.LASF1451
	.sleb128 149
	.uleb128 0x7
	.4byte	.LASF1452
	.sleb128 150
	.uleb128 0x7
	.4byte	.LASF1453
	.sleb128 151
	.uleb128 0x7
	.4byte	.LASF1454
	.sleb128 152
	.byte	0
	.uleb128 0x13
	.4byte	.LASF1455
	.byte	0xf
	.2byte	0x59e
	.4byte	0x24d3
	.uleb128 0x14
	.byte	0x68
	.byte	0xf
	.2byte	0x5a8
	.4byte	0x2a0d
	.uleb128 0x15
	.4byte	.LASF1456
	.byte	0xf
	.2byte	0x5aa
	.4byte	0x7e
	.byte	0
	.uleb128 0x15
	.4byte	.LASF1457
	.byte	0xf
	.2byte	0x5ac
	.4byte	0x7e
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF1458
	.byte	0xf
	.2byte	0x5ae
	.4byte	0x7e
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF1459
	.byte	0xf
	.2byte	0x5af
	.4byte	0x7e
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF1460
	.byte	0xf
	.2byte	0x5b0
	.4byte	0x7e
	.byte	0x10
	.uleb128 0x15
	.4byte	.LASF1461
	.byte	0xf
	.2byte	0x5b1
	.4byte	0x7e
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF1462
	.byte	0xf
	.2byte	0x5b4
	.4byte	0x7e
	.byte	0x18
	.uleb128 0x15
	.4byte	.LASF1463
	.byte	0xf
	.2byte	0x5b5
	.4byte	0x7e
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF1464
	.byte	0xf
	.2byte	0x5b6
	.4byte	0x7e
	.byte	0x20
	.uleb128 0x15
	.4byte	.LASF1465
	.byte	0xf
	.2byte	0x5bc
	.4byte	0x7e
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF1466
	.byte	0xf
	.2byte	0x5bd
	.4byte	0x7e
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF1467
	.byte	0xf
	.2byte	0x5be
	.4byte	0x7e
	.byte	0x2c
	.uleb128 0x15
	.4byte	.LASF1468
	.byte	0xf
	.2byte	0x5c0
	.4byte	0x7e
	.byte	0x30
	.uleb128 0x15
	.4byte	.LASF1469
	.byte	0xf
	.2byte	0x5c1
	.4byte	0x7e
	.byte	0x34
	.uleb128 0x15
	.4byte	.LASF1470
	.byte	0xf
	.2byte	0x5c3
	.4byte	0x7e
	.byte	0x38
	.uleb128 0x15
	.4byte	.LASF1471
	.byte	0xf
	.2byte	0x5c6
	.4byte	0x7e
	.byte	0x3c
	.uleb128 0x15
	.4byte	.LASF1472
	.byte	0xf
	.2byte	0x5c8
	.4byte	0x7e
	.byte	0x40
	.uleb128 0x15
	.4byte	.LASF1473
	.byte	0xf
	.2byte	0x5c9
	.4byte	0x7e
	.byte	0x44
	.uleb128 0x15
	.4byte	.LASF1474
	.byte	0xf
	.2byte	0x5cb
	.4byte	0x7e
	.byte	0x48
	.uleb128 0x15
	.4byte	.LASF1475
	.byte	0xf
	.2byte	0x5ce
	.4byte	0x7e
	.byte	0x4c
	.uleb128 0x15
	.4byte	.LASF1476
	.byte	0xf
	.2byte	0x5cf
	.4byte	0x7e
	.byte	0x50
	.uleb128 0x15
	.4byte	.LASF1477
	.byte	0xf
	.2byte	0x5d1
	.4byte	0x278
	.byte	0x58
	.uleb128 0x15
	.4byte	.LASF1478
	.byte	0xf
	.2byte	0x5d2
	.4byte	0x7e
	.byte	0x60
	.byte	0
	.uleb128 0x13
	.4byte	.LASF1479
	.byte	0xf
	.2byte	0x5d5
	.4byte	0x28d8
	.uleb128 0x6
	.byte	0x1
	.byte	0x10
	.byte	0x47
	.4byte	0x2a34
	.uleb128 0x7
	.4byte	.LASF1480
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF1481
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF1482
	.sleb128 2
	.byte	0
	.uleb128 0xa
	.byte	0x10
	.byte	0x10
	.byte	0x4d
	.4byte	0x2a6b
	.uleb128 0x12
	.4byte	.LASF1483
	.byte	0x10
	.byte	0x4f
	.4byte	0x2a6b
	.byte	0
	.uleb128 0x12
	.4byte	.LASF1296
	.byte	0x10
	.byte	0x50
	.4byte	0x7e
	.byte	0x4
	.uleb128 0xb
	.ascii	"sx\000"
	.byte	0x10
	.byte	0x51
	.4byte	0x3e4
	.byte	0x8
	.uleb128 0xb
	.ascii	"sy\000"
	.byte	0x10
	.byte	0x52
	.4byte	0x3e4
	.byte	0xc
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x24c7
	.uleb128 0x3
	.4byte	.LASF1484
	.byte	0x10
	.byte	0x53
	.4byte	0x2a34
	.uleb128 0x17
	.4byte	0x50
	.4byte	0x2a8c
	.uleb128 0x18
	.4byte	0xd8
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.byte	0xa
	.byte	0x11
	.byte	0xc0
	.4byte	0x2acd
	.uleb128 0xb
	.ascii	"x\000"
	.byte	0x11
	.byte	0xc1
	.4byte	0x3e
	.byte	0
	.uleb128 0xb
	.ascii	"y\000"
	.byte	0x11
	.byte	0xc2
	.4byte	0x3e
	.byte	0x2
	.uleb128 0x12
	.4byte	.LASF1485
	.byte	0x11
	.byte	0xc3
	.4byte	0x3e
	.byte	0x4
	.uleb128 0x12
	.4byte	.LASF1486
	.byte	0x11
	.byte	0xc4
	.4byte	0x3e
	.byte	0x6
	.uleb128 0x12
	.4byte	.LASF1487
	.byte	0x11
	.byte	0xc5
	.4byte	0x3e
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF1488
	.byte	0x11
	.byte	0xc6
	.4byte	0x2a8c
	.uleb128 0x11
	.4byte	.LASF1490
	.byte	0xd0
	.byte	0x12
	.byte	0xf8
	.4byte	0x2d4c
	.uleb128 0x12
	.4byte	.LASF1491
	.byte	0x12
	.byte	0xfb
	.4byte	0x478
	.byte	0
	.uleb128 0xb
	.ascii	"x\000"
	.byte	0x12
	.byte	0xfe
	.4byte	0x3e4
	.byte	0x18
	.uleb128 0xb
	.ascii	"y\000"
	.byte	0x12
	.byte	0xff
	.4byte	0x3e4
	.byte	0x1c
	.uleb128 0x19
	.ascii	"z\000"
	.byte	0x12
	.2byte	0x100
	.4byte	0x3e4
	.byte	0x20
	.uleb128 0x15
	.4byte	.LASF1492
	.byte	0x12
	.2byte	0x103
	.4byte	0x2d4c
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF1493
	.byte	0x12
	.2byte	0x104
	.4byte	0x2d52
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF1485
	.byte	0x12
	.2byte	0x107
	.4byte	0x3ef
	.byte	0x2c
	.uleb128 0x15
	.4byte	.LASF1294
	.byte	0x12
	.2byte	0x108
	.4byte	0x827
	.byte	0x30
	.uleb128 0x15
	.4byte	.LASF1295
	.byte	0x12
	.2byte	0x109
	.4byte	0x7e
	.byte	0x34
	.uleb128 0x15
	.4byte	.LASF1494
	.byte	0x12
	.2byte	0x10d
	.4byte	0x2d4c
	.byte	0x38
	.uleb128 0x15
	.4byte	.LASF1495
	.byte	0x12
	.2byte	0x10e
	.4byte	0x2d52
	.byte	0x3c
	.uleb128 0x15
	.4byte	.LASF1496
	.byte	0x12
	.2byte	0x110
	.4byte	0x2d8d
	.byte	0x40
	.uleb128 0x15
	.4byte	.LASF1497
	.byte	0x12
	.2byte	0x113
	.4byte	0x3e4
	.byte	0x44
	.uleb128 0x15
	.4byte	.LASF1498
	.byte	0x12
	.2byte	0x114
	.4byte	0x3e4
	.byte	0x48
	.uleb128 0x15
	.4byte	.LASF1499
	.byte	0x12
	.2byte	0x117
	.4byte	0x3e4
	.byte	0x4c
	.uleb128 0x15
	.4byte	.LASF1472
	.byte	0x12
	.2byte	0x11a
	.4byte	0x3e4
	.byte	0x50
	.uleb128 0x15
	.4byte	.LASF1473
	.byte	0x12
	.2byte	0x11b
	.4byte	0x3e4
	.byte	0x54
	.uleb128 0x15
	.4byte	.LASF1500
	.byte	0x12
	.2byte	0x11e
	.4byte	0x3e4
	.byte	0x58
	.uleb128 0x15
	.4byte	.LASF1501
	.byte	0x12
	.2byte	0x11f
	.4byte	0x3e4
	.byte	0x5c
	.uleb128 0x15
	.4byte	.LASF1502
	.byte	0x12
	.2byte	0x120
	.4byte	0x3e4
	.byte	0x60
	.uleb128 0x15
	.4byte	.LASF1503
	.byte	0x12
	.2byte	0x123
	.4byte	0x7e
	.byte	0x64
	.uleb128 0x15
	.4byte	.LASF1486
	.byte	0x12
	.2byte	0x125
	.4byte	0x28cc
	.byte	0x68
	.uleb128 0x15
	.4byte	.LASF1504
	.byte	0x12
	.2byte	0x126
	.4byte	0x2d93
	.byte	0x6c
	.uleb128 0x15
	.4byte	.LASF1296
	.byte	0x12
	.2byte	0x128
	.4byte	0x7e
	.byte	0x70
	.uleb128 0x15
	.4byte	.LASF1483
	.byte	0x12
	.2byte	0x129
	.4byte	0x2a6b
	.byte	0x74
	.uleb128 0x15
	.4byte	.LASF1477
	.byte	0x12
	.2byte	0x12a
	.4byte	0x278
	.byte	0x78
	.uleb128 0x15
	.4byte	.LASF1505
	.byte	0x12
	.2byte	0x12b
	.4byte	0x7e
	.byte	0x80
	.uleb128 0x15
	.4byte	.LASF1506
	.byte	0x12
	.2byte	0x12c
	.4byte	0x7e
	.byte	0x84
	.uleb128 0x15
	.4byte	.LASF1507
	.byte	0x12
	.2byte	0x12f
	.4byte	0x3e
	.byte	0x88
	.uleb128 0x15
	.4byte	.LASF1508
	.byte	0x12
	.2byte	0x130
	.4byte	0x3e
	.byte	0x8a
	.uleb128 0x15
	.4byte	.LASF1509
	.byte	0x12
	.2byte	0x131
	.4byte	0x3e
	.byte	0x8c
	.uleb128 0x15
	.4byte	.LASF1510
	.byte	0x12
	.2byte	0x135
	.4byte	0x2d4c
	.byte	0x90
	.uleb128 0x15
	.4byte	.LASF1461
	.byte	0x12
	.2byte	0x139
	.4byte	0x3e
	.byte	0x94
	.uleb128 0x15
	.4byte	.LASF1511
	.byte	0x12
	.2byte	0x13d
	.4byte	0x3e
	.byte	0x96
	.uleb128 0x15
	.4byte	.LASF1512
	.byte	0x12
	.2byte	0x140
	.4byte	0x3e
	.byte	0x98
	.uleb128 0x15
	.4byte	.LASF1513
	.byte	0x12
	.2byte	0x142
	.4byte	0x3e
	.byte	0x9a
	.uleb128 0x15
	.4byte	.LASF1514
	.byte	0x12
	.2byte	0x146
	.4byte	0x2f63
	.byte	0x9c
	.uleb128 0x15
	.4byte	.LASF1515
	.byte	0x12
	.2byte	0x149
	.4byte	0x3e
	.byte	0xa0
	.uleb128 0x15
	.4byte	.LASF1516
	.byte	0x12
	.2byte	0x14c
	.4byte	0x2acd
	.byte	0xa2
	.uleb128 0x15
	.4byte	.LASF1517
	.byte	0x12
	.2byte	0x14f
	.4byte	0x2d4c
	.byte	0xac
	.uleb128 0x15
	.4byte	.LASF1518
	.byte	0x12
	.2byte	0x152
	.4byte	0x2d4c
	.byte	0xb0
	.uleb128 0x15
	.4byte	.LASF1519
	.byte	0x12
	.2byte	0x158
	.4byte	0x7e
	.byte	0xb4
	.uleb128 0x15
	.4byte	.LASF1520
	.byte	0x12
	.2byte	0x159
	.4byte	0x7e
	.byte	0xb8
	.uleb128 0x15
	.4byte	.LASF1521
	.byte	0x12
	.2byte	0x15c
	.4byte	0x2fca
	.byte	0xbc
	.uleb128 0x15
	.4byte	.LASF1522
	.byte	0x12
	.2byte	0x15e
	.4byte	0x3e4
	.byte	0xc0
	.uleb128 0x15
	.4byte	.LASF1523
	.byte	0x12
	.2byte	0x15f
	.4byte	0x3e4
	.byte	0xc4
	.uleb128 0x15
	.4byte	.LASF1524
	.byte	0x12
	.2byte	0x160
	.4byte	0x3e4
	.byte	0xc8
	.uleb128 0x19
	.ascii	"pad\000"
	.byte	0x12
	.2byte	0x162
	.4byte	0x3e4
	.byte	0xcc
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x2ad8
	.uleb128 0x9
	.byte	0x4
	.4byte	0x2d4c
	.uleb128 0x1a
	.4byte	.LASF1525
	.byte	0xc
	.byte	0x13
	.2byte	0x123
	.4byte	0x2d8d
	.uleb128 0x15
	.4byte	.LASF1526
	.byte	0x13
	.2byte	0x125
	.4byte	0x3655
	.byte	0
	.uleb128 0x15
	.4byte	.LASF1527
	.byte	0x13
	.2byte	0x126
	.4byte	0x7e
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF1528
	.byte	0x13
	.2byte	0x126
	.4byte	0x7e
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x2d58
	.uleb128 0x9
	.byte	0x4
	.4byte	0x2a0d
	.uleb128 0x1b
	.4byte	.LASF1529
	.2byte	0x11c
	.byte	0x14
	.byte	0x5d
	.4byte	0x2f63
	.uleb128 0xb
	.ascii	"mo\000"
	.byte	0x14
	.byte	0x5f
	.4byte	0x305e
	.byte	0
	.uleb128 0x12
	.4byte	.LASF1530
	.byte	0x14
	.byte	0x60
	.4byte	0x3053
	.byte	0x4
	.uleb128 0xb
	.ascii	"cmd\000"
	.byte	0x14
	.byte	0x61
	.4byte	0x302d
	.byte	0x6
	.uleb128 0x12
	.4byte	.LASF1531
	.byte	0x14
	.byte	0x66
	.4byte	0x3e4
	.byte	0x10
	.uleb128 0x12
	.4byte	.LASF1532
	.byte	0x14
	.byte	0x68
	.4byte	0x3e4
	.byte	0x14
	.uleb128 0x12
	.4byte	.LASF1533
	.byte	0x14
	.byte	0x6a
	.4byte	0x3e4
	.byte	0x18
	.uleb128 0xb
	.ascii	"bob\000"
	.byte	0x14
	.byte	0x6c
	.4byte	0x3e4
	.byte	0x1c
	.uleb128 0x12
	.4byte	.LASF1500
	.byte	0x14
	.byte	0x73
	.4byte	0x3e4
	.byte	0x20
	.uleb128 0x12
	.4byte	.LASF1501
	.byte	0x14
	.byte	0x73
	.4byte	0x3e4
	.byte	0x24
	.uleb128 0x12
	.4byte	.LASF1506
	.byte	0x14
	.byte	0x77
	.4byte	0x7e
	.byte	0x28
	.uleb128 0x12
	.4byte	.LASF1534
	.byte	0x14
	.byte	0x78
	.4byte	0x7e
	.byte	0x2c
	.uleb128 0x12
	.4byte	.LASF1535
	.byte	0x14
	.byte	0x7a
	.4byte	0x7e
	.byte	0x30
	.uleb128 0x12
	.4byte	.LASF1536
	.byte	0x14
	.byte	0x7d
	.4byte	0x3064
	.byte	0x34
	.uleb128 0x12
	.4byte	.LASF1537
	.byte	0x14
	.byte	0x7e
	.4byte	0x3074
	.byte	0x4c
	.uleb128 0x12
	.4byte	.LASF1538
	.byte	0x14
	.byte	0x7f
	.4byte	0x262
	.byte	0x64
	.uleb128 0x12
	.4byte	.LASF1539
	.byte	0x14
	.byte	0x82
	.4byte	0x3084
	.byte	0x68
	.uleb128 0x12
	.4byte	.LASF1540
	.byte	0x14
	.byte	0x83
	.4byte	0x379
	.byte	0x78
	.uleb128 0x12
	.4byte	.LASF1541
	.byte	0x14
	.byte	0x86
	.4byte	0x379
	.byte	0x79
	.uleb128 0x12
	.4byte	.LASF1542
	.byte	0x14
	.byte	0x88
	.4byte	0x3094
	.byte	0x7c
	.uleb128 0x12
	.4byte	.LASF1543
	.byte	0x14
	.byte	0x89
	.4byte	0x3084
	.byte	0xa0
	.uleb128 0x12
	.4byte	.LASF1544
	.byte	0x14
	.byte	0x8a
	.4byte	0x3084
	.byte	0xb0
	.uleb128 0x12
	.4byte	.LASF1545
	.byte	0x14
	.byte	0x8d
	.4byte	0x7e
	.byte	0xc0
	.uleb128 0x12
	.4byte	.LASF1546
	.byte	0x14
	.byte	0x8e
	.4byte	0x7e
	.byte	0xc4
	.uleb128 0x12
	.4byte	.LASF1547
	.byte	0x14
	.byte	0x92
	.4byte	0x7e
	.byte	0xc8
	.uleb128 0x12
	.4byte	.LASF1548
	.byte	0x14
	.byte	0x95
	.4byte	0x7e
	.byte	0xcc
	.uleb128 0x12
	.4byte	.LASF1549
	.byte	0x14
	.byte	0x98
	.4byte	0x7e
	.byte	0xd0
	.uleb128 0x12
	.4byte	.LASF1550
	.byte	0x14
	.byte	0x99
	.4byte	0x7e
	.byte	0xd4
	.uleb128 0x12
	.4byte	.LASF1551
	.byte	0x14
	.byte	0x9a
	.4byte	0x7e
	.byte	0xd8
	.uleb128 0x12
	.4byte	.LASF1552
	.byte	0x14
	.byte	0x9d
	.4byte	0x257
	.byte	0xdc
	.uleb128 0x12
	.4byte	.LASF1553
	.byte	0x14
	.byte	0xa0
	.4byte	0x7e
	.byte	0xe0
	.uleb128 0x12
	.4byte	.LASF1554
	.byte	0x14
	.byte	0xa1
	.4byte	0x7e
	.byte	0xe4
	.uleb128 0x12
	.4byte	.LASF1555
	.byte	0x14
	.byte	0xa4
	.4byte	0x305e
	.byte	0xe8
	.uleb128 0x12
	.4byte	.LASF1556
	.byte	0x14
	.byte	0xa7
	.4byte	0x7e
	.byte	0xec
	.uleb128 0x12
	.4byte	.LASF1557
	.byte	0x14
	.byte	0xab
	.4byte	0x7e
	.byte	0xf0
	.uleb128 0x12
	.4byte	.LASF1558
	.byte	0x14
	.byte	0xaf
	.4byte	0x7e
	.byte	0xf4
	.uleb128 0x12
	.4byte	.LASF1559
	.byte	0x14
	.byte	0xb2
	.4byte	0x30a4
	.byte	0xf8
	.uleb128 0x1c
	.4byte	.LASF1560
	.byte	0x14
	.byte	0xb5
	.4byte	0x262
	.2byte	0x118
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x2d99
	.uleb128 0x11
	.4byte	.LASF1561
	.byte	0x1c
	.byte	0x13
	.byte	0xde
	.4byte	0x2fca
	.uleb128 0x12
	.4byte	.LASF1562
	.byte	0x13
	.byte	0xe0
	.4byte	0x3655
	.byte	0
	.uleb128 0x12
	.4byte	.LASF1563
	.byte	0x13
	.byte	0xe1
	.4byte	0x2d4c
	.byte	0x4
	.uleb128 0x12
	.4byte	.LASF1564
	.byte	0x13
	.byte	0xe2
	.4byte	0x2fca
	.byte	0x8
	.uleb128 0x12
	.4byte	.LASF1565
	.byte	0x13
	.byte	0xe3
	.4byte	0x2fca
	.byte	0xc
	.uleb128 0x12
	.4byte	.LASF1566
	.byte	0x13
	.byte	0xe4
	.4byte	0x2fca
	.byte	0x10
	.uleb128 0x12
	.4byte	.LASF1567
	.byte	0x13
	.byte	0xe5
	.4byte	0x2fca
	.byte	0x14
	.uleb128 0x12
	.4byte	.LASF1568
	.byte	0x13
	.byte	0xe6
	.4byte	0x262
	.byte	0x18
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x2f69
	.uleb128 0x13
	.4byte	.LASF1569
	.byte	0x12
	.2byte	0x165
	.4byte	0x2ad8
	.uleb128 0xa
	.byte	0x8
	.byte	0x15
	.byte	0x31
	.4byte	0x302d
	.uleb128 0x12
	.4byte	.LASF1570
	.byte	0x15
	.byte	0x33
	.4byte	0x25
	.byte	0
	.uleb128 0x12
	.4byte	.LASF1571
	.byte	0x15
	.byte	0x34
	.4byte	0x25
	.byte	0x1
	.uleb128 0x12
	.4byte	.LASF1572
	.byte	0x15
	.byte	0x35
	.4byte	0x3e
	.byte	0x2
	.uleb128 0x12
	.4byte	.LASF1573
	.byte	0x15
	.byte	0x36
	.4byte	0x3e
	.byte	0x4
	.uleb128 0x12
	.4byte	.LASF1574
	.byte	0x15
	.byte	0x37
	.4byte	0x26d
	.byte	0x6
	.uleb128 0x12
	.4byte	.LASF1575
	.byte	0x15
	.byte	0x38
	.4byte	0x26d
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.4byte	.LASF1576
	.byte	0x15
	.byte	0x39
	.4byte	0x2fdc
	.uleb128 0x6
	.byte	0x1
	.byte	0x14
	.byte	0x40
	.4byte	0x3053
	.uleb128 0x7
	.4byte	.LASF1577
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF1578
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF1579
	.sleb128 2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF1580
	.byte	0x14
	.byte	0x48
	.4byte	0x3038
	.uleb128 0x9
	.byte	0x4
	.4byte	0x2fd0
	.uleb128 0x17
	.4byte	0x7e
	.4byte	0x3074
	.uleb128 0x18
	.4byte	0xd8
	.byte	0x5
	.byte	0
	.uleb128 0x17
	.4byte	0x262
	.4byte	0x3084
	.uleb128 0x18
	.4byte	0xd8
	.byte	0x5
	.byte	0
	.uleb128 0x17
	.4byte	0x7e
	.4byte	0x3094
	.uleb128 0x18
	.4byte	0xd8
	.byte	0x3
	.byte	0
	.uleb128 0x17
	.4byte	0x262
	.4byte	0x30a4
	.uleb128 0x18
	.4byte	0xd8
	.byte	0x8
	.byte	0
	.uleb128 0x17
	.4byte	0x2a71
	.4byte	0x30b4
	.uleb128 0x18
	.4byte	0xd8
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF1581
	.byte	0x14
	.byte	0xb7
	.4byte	0x2d99
	.uleb128 0x6
	.byte	0x1
	.byte	0x16
	.byte	0x57
	.4byte	0x316a
	.uleb128 0x7
	.4byte	.LASF1582
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF1583
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF1584
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF1585
	.sleb128 3
	.uleb128 0x7
	.4byte	.LASF1586
	.sleb128 4
	.uleb128 0x7
	.4byte	.LASF1587
	.sleb128 5
	.uleb128 0x7
	.4byte	.LASF1588
	.sleb128 6
	.uleb128 0x7
	.4byte	.LASF1589
	.sleb128 7
	.uleb128 0x7
	.4byte	.LASF1590
	.sleb128 8
	.uleb128 0x7
	.4byte	.LASF1591
	.sleb128 9
	.uleb128 0x7
	.4byte	.LASF1592
	.sleb128 10
	.uleb128 0x7
	.4byte	.LASF1593
	.sleb128 11
	.uleb128 0x7
	.4byte	.LASF1594
	.sleb128 12
	.uleb128 0x7
	.4byte	.LASF1595
	.sleb128 13
	.uleb128 0x7
	.4byte	.LASF1596
	.sleb128 14
	.uleb128 0x7
	.4byte	.LASF1597
	.sleb128 15
	.uleb128 0x7
	.4byte	.LASF1598
	.sleb128 16
	.uleb128 0x7
	.4byte	.LASF1599
	.sleb128 17
	.uleb128 0x7
	.4byte	.LASF1600
	.sleb128 18
	.uleb128 0x7
	.4byte	.LASF1601
	.sleb128 19
	.uleb128 0x7
	.4byte	.LASF1602
	.sleb128 20
	.uleb128 0x7
	.4byte	.LASF1603
	.sleb128 21
	.uleb128 0x7
	.4byte	.LASF1604
	.sleb128 22
	.uleb128 0x7
	.4byte	.LASF1605
	.sleb128 23
	.uleb128 0x7
	.4byte	.LASF1606
	.sleb128 24
	.uleb128 0x7
	.4byte	.LASF1607
	.sleb128 25
	.uleb128 0x7
	.4byte	.LASF1608
	.sleb128 32
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF1802
	.byte	0x1
	.byte	0x16
	.byte	0xb3
	.4byte	0x3189
	.uleb128 0x7
	.4byte	.LASF1609
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF1610
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF1611
	.sleb128 2
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.byte	0x17
	.byte	0x28
	.4byte	0x31bd
	.uleb128 0x7
	.4byte	.LASF1612
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF1613
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF1614
	.sleb128 4
	.uleb128 0x7
	.4byte	.LASF1615
	.sleb128 8
	.uleb128 0x7
	.4byte	.LASF1616
	.sleb128 16
	.uleb128 0x7
	.4byte	.LASF1617
	.sleb128 32
	.uleb128 0x7
	.4byte	.LASF1618
	.sleb128 64
	.byte	0
	.uleb128 0x3
	.4byte	.LASF1619
	.byte	0x17
	.byte	0x30
	.4byte	0x3189
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF1620
	.uleb128 0x6
	.byte	0x1
	.byte	0x18
	.byte	0x30
	.4byte	0x31f0
	.uleb128 0x7
	.4byte	.LASF1621
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF1622
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF1623
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF1624
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF1625
	.byte	0x18
	.byte	0x35
	.4byte	0x31cf
	.uleb128 0xa
	.byte	0x10
	.byte	0x18
	.byte	0x38
	.4byte	0x3234
	.uleb128 0x12
	.4byte	.LASF1486
	.byte	0x18
	.byte	0x3a
	.4byte	0x31f0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF1626
	.byte	0x18
	.byte	0x3b
	.4byte	0x7e
	.byte	0x4
	.uleb128 0x12
	.4byte	.LASF1627
	.byte	0x18
	.byte	0x3c
	.4byte	0x7e
	.byte	0x8
	.uleb128 0x12
	.4byte	.LASF1628
	.byte	0x18
	.byte	0x3d
	.4byte	0x7e
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF1629
	.byte	0x18
	.byte	0x3e
	.4byte	0x31fb
	.uleb128 0xa
	.byte	0x8
	.byte	0x13
	.byte	0x4d
	.4byte	0x325c
	.uleb128 0xb
	.ascii	"x\000"
	.byte	0x13
	.byte	0x4e
	.4byte	0x3e4
	.byte	0
	.uleb128 0xb
	.ascii	"y\000"
	.byte	0x13
	.byte	0x4e
	.4byte	0x3e4
	.byte	0x4
	.byte	0
	.uleb128 0x1e
	.byte	0x8
	.byte	0x13
	.byte	0x4c
	.4byte	0x3273
	.uleb128 0x1f
	.4byte	0x323f
	.uleb128 0x20
	.ascii	"v\000"
	.byte	0x13
	.byte	0x50
	.4byte	0x3273
	.byte	0
	.uleb128 0x17
	.4byte	0x3e4
	.4byte	0x3283
	.uleb128 0x18
	.4byte	0xd8
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.byte	0x13
	.byte	0x4a
	.4byte	0x3292
	.uleb128 0x21
	.4byte	0x325c
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF1630
	.byte	0x13
	.byte	0x52
	.4byte	0x3283
	.uleb128 0xa
	.byte	0x24
	.byte	0x13
	.byte	0x55
	.4byte	0x32d0
	.uleb128 0x12
	.4byte	.LASF1491
	.byte	0x13
	.byte	0x57
	.4byte	0x478
	.byte	0
	.uleb128 0xb
	.ascii	"x\000"
	.byte	0x13
	.byte	0x58
	.4byte	0x3e4
	.byte	0x18
	.uleb128 0xb
	.ascii	"y\000"
	.byte	0x13
	.byte	0x58
	.4byte	0x3e4
	.byte	0x1c
	.uleb128 0xb
	.ascii	"z\000"
	.byte	0x13
	.byte	0x58
	.4byte	0x3e4
	.byte	0x20
	.byte	0
	.uleb128 0x3
	.4byte	.LASF1631
	.byte	0x13
	.byte	0x59
	.4byte	0x329d
	.uleb128 0xa
	.byte	0xc4
	.byte	0x13
	.byte	0x60
	.4byte	0x34d0
	.uleb128 0x12
	.4byte	.LASF1632
	.byte	0x13
	.byte	0x62
	.4byte	0x7e
	.byte	0
	.uleb128 0x12
	.4byte	.LASF1633
	.byte	0x13
	.byte	0x63
	.4byte	0x262
	.byte	0x4
	.uleb128 0x12
	.4byte	.LASF1634
	.byte	0x13
	.byte	0x64
	.4byte	0x262
	.byte	0x8
	.uleb128 0x12
	.4byte	.LASF1635
	.byte	0x13
	.byte	0x65
	.4byte	0x3e4
	.byte	0xc
	.uleb128 0x12
	.4byte	.LASF1636
	.byte	0x13
	.byte	0x66
	.4byte	0x3e4
	.byte	0x10
	.uleb128 0x12
	.4byte	.LASF1637
	.byte	0x13
	.byte	0x67
	.4byte	0x7e
	.byte	0x14
	.uleb128 0x12
	.4byte	.LASF1638
	.byte	0x13
	.byte	0x67
	.4byte	0x7e
	.byte	0x18
	.uleb128 0x12
	.4byte	.LASF1639
	.byte	0x13
	.byte	0x68
	.4byte	0x7e
	.byte	0x1c
	.uleb128 0x12
	.4byte	.LASF1640
	.byte	0x13
	.byte	0x69
	.4byte	0x305e
	.byte	0x20
	.uleb128 0x12
	.4byte	.LASF1641
	.byte	0x13
	.byte	0x6a
	.4byte	0x3084
	.byte	0x24
	.uleb128 0x12
	.4byte	.LASF1642
	.byte	0x13
	.byte	0x6b
	.4byte	0x32d0
	.byte	0x34
	.uleb128 0x12
	.4byte	.LASF1503
	.byte	0x13
	.byte	0x6c
	.4byte	0x7e
	.byte	0x58
	.uleb128 0x12
	.4byte	.LASF1643
	.byte	0x13
	.byte	0x6d
	.4byte	0x305e
	.byte	0x5c
	.uleb128 0x12
	.4byte	.LASF1519
	.byte	0x13
	.byte	0x73
	.4byte	0x7e
	.byte	0x60
	.uleb128 0x12
	.4byte	.LASF1520
	.byte	0x13
	.byte	0x73
	.4byte	0x7e
	.byte	0x64
	.uleb128 0x12
	.4byte	.LASF1644
	.byte	0x13
	.byte	0x76
	.4byte	0x126
	.byte	0x68
	.uleb128 0x12
	.4byte	.LASF1645
	.byte	0x13
	.byte	0x77
	.4byte	0x126
	.byte	0x6c
	.uleb128 0x12
	.4byte	.LASF1646
	.byte	0x13
	.byte	0x78
	.4byte	0x126
	.byte	0x70
	.uleb128 0x12
	.4byte	.LASF1647
	.byte	0x13
	.byte	0x7b
	.4byte	0x7e
	.byte	0x74
	.uleb128 0x12
	.4byte	.LASF1648
	.byte	0x13
	.byte	0x7c
	.4byte	0x7e
	.byte	0x78
	.uleb128 0x12
	.4byte	.LASF1649
	.byte	0x13
	.byte	0x7d
	.4byte	0x7e
	.byte	0x7c
	.uleb128 0x12
	.4byte	.LASF1650
	.byte	0x13
	.byte	0x80
	.4byte	0x7e
	.byte	0x80
	.uleb128 0x12
	.4byte	.LASF1651
	.byte	0x13
	.byte	0x82
	.4byte	0x7e
	.byte	0x84
	.uleb128 0x12
	.4byte	.LASF1652
	.byte	0x13
	.byte	0x82
	.4byte	0x7e
	.byte	0x88
	.uleb128 0x12
	.4byte	.LASF1653
	.byte	0x13
	.byte	0x82
	.4byte	0x7e
	.byte	0x8c
	.uleb128 0x12
	.4byte	.LASF1654
	.byte	0x13
	.byte	0x86
	.4byte	0x2fca
	.byte	0x90
	.uleb128 0x12
	.4byte	.LASF1655
	.byte	0x13
	.byte	0x88
	.4byte	0x7e
	.byte	0x94
	.uleb128 0x12
	.4byte	.LASF1656
	.byte	0x13
	.byte	0x89
	.4byte	0x35d5
	.byte	0x98
	.uleb128 0xb
	.ascii	"sky\000"
	.byte	0x13
	.byte	0x92
	.4byte	0x7e
	.byte	0x9c
	.uleb128 0x12
	.4byte	.LASF1657
	.byte	0x13
	.byte	0x95
	.4byte	0x3e4
	.byte	0xa0
	.uleb128 0x12
	.4byte	.LASF1658
	.byte	0x13
	.byte	0x95
	.4byte	0x3e4
	.byte	0xa4
	.uleb128 0x12
	.4byte	.LASF1659
	.byte	0x13
	.byte	0x96
	.4byte	0x3e4
	.byte	0xa8
	.uleb128 0x12
	.4byte	.LASF1660
	.byte	0x13
	.byte	0x96
	.4byte	0x3e4
	.byte	0xac
	.uleb128 0x12
	.4byte	.LASF1661
	.byte	0x13
	.byte	0x99
	.4byte	0x7e
	.byte	0xb0
	.uleb128 0x12
	.4byte	.LASF1662
	.byte	0x13
	.byte	0x99
	.4byte	0x7e
	.byte	0xb4
	.uleb128 0x12
	.4byte	.LASF1663
	.byte	0x13
	.byte	0x9b
	.4byte	0x3e
	.byte	0xb8
	.uleb128 0x12
	.4byte	.LASF1664
	.byte	0x13
	.byte	0x9c
	.4byte	0x3e
	.byte	0xba
	.uleb128 0x12
	.4byte	.LASF1665
	.byte	0x13
	.byte	0x9d
	.4byte	0x3e
	.byte	0xbc
	.uleb128 0x12
	.4byte	.LASF1666
	.byte	0x13
	.byte	0x9e
	.4byte	0x3e
	.byte	0xbe
	.uleb128 0x12
	.4byte	.LASF1667
	.byte	0x13
	.byte	0x9f
	.4byte	0x3e
	.byte	0xc0
	.uleb128 0xb
	.ascii	"tag\000"
	.byte	0x13
	.byte	0xa0
	.4byte	0x3e
	.byte	0xc2
	.byte	0
	.uleb128 0x11
	.4byte	.LASF1668
	.byte	0x7c
	.byte	0x13
	.byte	0xb1
	.4byte	0x35d5
	.uleb128 0x12
	.4byte	.LASF1669
	.byte	0x13
	.byte	0xb3
	.4byte	0x7e
	.byte	0
	.uleb128 0xb
	.ascii	"v1\000"
	.byte	0x13
	.byte	0xb4
	.4byte	0x363f
	.byte	0x4
	.uleb128 0xb
	.ascii	"v2\000"
	.byte	0x13
	.byte	0xb4
	.4byte	0x363f
	.byte	0x8
	.uleb128 0xb
	.ascii	"dx\000"
	.byte	0x13
	.byte	0xb5
	.4byte	0x3e4
	.byte	0xc
	.uleb128 0xb
	.ascii	"dy\000"
	.byte	0x13
	.byte	0xb5
	.4byte	0x3e4
	.byte	0x10
	.uleb128 0x12
	.4byte	.LASF1477
	.byte	0x13
	.byte	0xb6
	.4byte	0x50
	.byte	0x14
	.uleb128 0x12
	.4byte	.LASF1666
	.byte	0x13
	.byte	0xb7
	.4byte	0x3e
	.byte	0x16
	.uleb128 0xb
	.ascii	"tag\000"
	.byte	0x13
	.byte	0xb8
	.4byte	0x3e
	.byte	0x18
	.uleb128 0x12
	.4byte	.LASF1670
	.byte	0x13
	.byte	0xb9
	.4byte	0x2a7c
	.byte	0x1a
	.uleb128 0x12
	.4byte	.LASF1671
	.byte	0x13
	.byte	0xba
	.4byte	0x3645
	.byte	0x20
	.uleb128 0x12
	.4byte	.LASF1672
	.byte	0x13
	.byte	0xbb
	.4byte	0x360d
	.byte	0x30
	.uleb128 0x12
	.4byte	.LASF1673
	.byte	0x13
	.byte	0xbc
	.4byte	0x3655
	.byte	0x34
	.uleb128 0x12
	.4byte	.LASF1674
	.byte	0x13
	.byte	0xbd
	.4byte	0x3655
	.byte	0x38
	.uleb128 0x12
	.4byte	.LASF1503
	.byte	0x13
	.byte	0xbe
	.4byte	0x7e
	.byte	0x3c
	.uleb128 0x12
	.4byte	.LASF1675
	.byte	0x13
	.byte	0xbf
	.4byte	0x126
	.byte	0x40
	.uleb128 0x12
	.4byte	.LASF1676
	.byte	0x13
	.byte	0xc0
	.4byte	0x7e
	.byte	0x44
	.uleb128 0x12
	.4byte	.LASF1638
	.byte	0x13
	.byte	0xc1
	.4byte	0x7e
	.byte	0x48
	.uleb128 0x12
	.4byte	.LASF1637
	.byte	0x13
	.byte	0xc1
	.4byte	0x7e
	.byte	0x4c
	.uleb128 0x12
	.4byte	.LASF1677
	.byte	0x13
	.byte	0xc2
	.4byte	0x7e
	.byte	0x50
	.uleb128 0x12
	.4byte	.LASF1678
	.byte	0x13
	.byte	0xc9
	.4byte	0x3618
	.byte	0x54
	.uleb128 0x12
	.4byte	.LASF1642
	.byte	0x13
	.byte	0xca
	.4byte	0x32d0
	.byte	0x58
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x35db
	.uleb128 0x9
	.byte	0x4
	.4byte	0x34d0
	.uleb128 0x3
	.4byte	.LASF1679
	.byte	0x13
	.byte	0xa4
	.4byte	0x32db
	.uleb128 0x6
	.byte	0x1
	.byte	0x13
	.byte	0xaa
	.4byte	0x360d
	.uleb128 0x7
	.4byte	.LASF1680
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF1681
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF1682
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF1683
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF1684
	.byte	0x13
	.byte	0xaf
	.4byte	0x35ec
	.uleb128 0x6
	.byte	0x1
	.byte	0x13
	.byte	0xc3
	.4byte	0x363f
	.uleb128 0x7
	.4byte	.LASF1685
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF1686
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF1687
	.sleb128 4
	.uleb128 0x7
	.4byte	.LASF1688
	.sleb128 8
	.uleb128 0x7
	.4byte	.LASF1689
	.sleb128 16
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x3292
	.uleb128 0x17
	.4byte	0x3e4
	.4byte	0x3655
	.uleb128 0x18
	.4byte	0xd8
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x35e1
	.uleb128 0xa
	.byte	0x1c
	.byte	0x19
	.byte	0x4d
	.4byte	0x36b8
	.uleb128 0x12
	.4byte	.LASF1690
	.byte	0x19
	.byte	0x4e
	.4byte	0x36b8
	.byte	0
	.uleb128 0x12
	.4byte	.LASF1691
	.byte	0x19
	.byte	0x4f
	.4byte	0x262
	.byte	0x4
	.uleb128 0x12
	.4byte	.LASF1692
	.byte	0x19
	.byte	0x51
	.4byte	0x7e
	.byte	0x8
	.uleb128 0x12
	.4byte	.LASF1473
	.byte	0x19
	.byte	0x52
	.4byte	0x7e
	.byte	0xc
	.uleb128 0x12
	.4byte	.LASF1693
	.byte	0x19
	.byte	0x53
	.4byte	0x7e
	.byte	0x10
	.uleb128 0x12
	.4byte	.LASF1694
	.byte	0x19
	.byte	0x54
	.4byte	0x7e
	.byte	0x14
	.uleb128 0x12
	.4byte	.LASF1695
	.byte	0x19
	.byte	0x55
	.4byte	0x7e
	.byte	0x18
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x26d
	.uleb128 0x3
	.4byte	.LASF1696
	.byte	0x19
	.byte	0x56
	.4byte	0x365b
	.uleb128 0x6
	.byte	0x1
	.byte	0x19
	.byte	0x72
	.4byte	0x36f6
	.uleb128 0x7
	.4byte	.LASF1697
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF1698
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF1699
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF1700
	.sleb128 3
	.uleb128 0x7
	.4byte	.LASF1701
	.sleb128 4
	.uleb128 0x7
	.4byte	.LASF1702
	.sleb128 5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF1703
	.byte	0x19
	.byte	0x79
	.4byte	0x36c9
	.uleb128 0x9
	.byte	0x4
	.4byte	0x3707
	.uleb128 0xd
	.4byte	0x26d
	.uleb128 0x6
	.byte	0x1
	.byte	0x2
	.byte	0x6a
	.4byte	0x3739
	.uleb128 0x7
	.4byte	.LASF1704
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF1705
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF1706
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF1707
	.sleb128 3
	.uleb128 0x7
	.4byte	.LASF1708
	.sleb128 4
	.uleb128 0x7
	.4byte	.LASF1709
	.sleb128 5
	.byte	0
	.uleb128 0x17
	.4byte	0x128
	.4byte	0x3749
	.uleb128 0x18
	.4byte	0xd8
	.byte	0x8
	.byte	0
	.uleb128 0x14
	.byte	0x4
	.byte	0x1
	.2byte	0x1d5
	.4byte	0x3781
	.uleb128 0x19
	.ascii	"r\000"
	.byte	0x1
	.2byte	0x1d7
	.4byte	0xb8
	.byte	0
	.uleb128 0x19
	.ascii	"g\000"
	.byte	0x1
	.2byte	0x1d8
	.4byte	0xb8
	.byte	0x1
	.uleb128 0x19
	.ascii	"b\000"
	.byte	0x1
	.2byte	0x1d9
	.4byte	0xb8
	.byte	0x2
	.uleb128 0x15
	.4byte	.LASF1710
	.byte	0x1
	.2byte	0x1da
	.4byte	0xb8
	.byte	0x3
	.byte	0
	.uleb128 0x13
	.4byte	.LASF1711
	.byte	0x1
	.2byte	0x1db
	.4byte	0x3749
	.uleb128 0x22
	.4byte	.LASF1803
	.byte	0x2
	.byte	0x83
	.4byte	0x7e
	.byte	0x3
	.4byte	0x37b3
	.uleb128 0x23
	.4byte	.LASF1712
	.byte	0x2
	.byte	0x83
	.4byte	0x257
	.uleb128 0x24
	.ascii	"ns\000"
	.byte	0x2
	.byte	0x83
	.4byte	0x7e
	.byte	0
	.uleb128 0x25
	.4byte	.LASF1718
	.byte	0x1
	.2byte	0x189
	.byte	0x1
	.4byte	0x37d9
	.uleb128 0x26
	.4byte	.LASF1692
	.byte	0x1
	.2byte	0x189
	.4byte	0x85
	.uleb128 0x26
	.4byte	.LASF1473
	.byte	0x1
	.2byte	0x189
	.4byte	0x85
	.byte	0
	.uleb128 0x27
	.4byte	.LASF1737
	.byte	0x1
	.2byte	0x2ab
	.byte	0x1
	.4byte	0x37f3
	.uleb128 0x28
	.4byte	.LASF1713
	.byte	0x1
	.2byte	0x2ad
	.4byte	0x7e
	.byte	0
	.uleb128 0x29
	.4byte	.LASF1723
	.byte	0x1
	.2byte	0x2a7
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2a
	.4byte	.LASF1721
	.byte	0x1
	.byte	0x2a
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3ef2
	.uleb128 0x2b
	.4byte	.LASF1714
	.byte	0x1
	.byte	0x2b
	.4byte	0x23f
	.uleb128 0x2c
	.4byte	.LASF1715
	.byte	0x1
	.byte	0x2e
	.4byte	0xc2
	.4byte	.LLST0
	.uleb128 0x2c
	.4byte	.LASF1716
	.byte	0x1
	.byte	0x2f
	.4byte	0xc2
	.4byte	.LLST1
	.uleb128 0x2d
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.4byte	0x3880
	.uleb128 0x2e
	.4byte	.LASF1717
	.byte	0x1
	.byte	0x6f
	.4byte	0x3234
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.4byte	.LASF1719
	.byte	0x1
	.byte	0x43
	.4byte	0x7e
	.4byte	0x386f
	.uleb128 0x10
	.byte	0
	.uleb128 0x30
	.4byte	.LVL5
	.4byte	0x47d7
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.4byte	0x38bd
	.uleb128 0x2e
	.4byte	.LASF1717
	.byte	0x1
	.byte	0x78
	.4byte	0x3234
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.4byte	.LASF1719
	.byte	0x1
	.byte	0x43
	.4byte	0x7e
	.4byte	0x38ac
	.uleb128 0x10
	.byte	0
	.uleb128 0x30
	.4byte	.LVL6
	.4byte	0x47d7
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.4byte	0x391d
	.uleb128 0x2c
	.4byte	.LASF1720
	.byte	0x1
	.byte	0x89
	.4byte	0x11f
	.4byte	.LLST2
	.uleb128 0x2e
	.4byte	.LASF1717
	.byte	0x1
	.byte	0xa2
	.4byte	0x3234
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.4byte	.LASF1719
	.byte	0x1
	.byte	0x43
	.4byte	0x7e
	.4byte	0x38f8
	.uleb128 0x10
	.byte	0
	.uleb128 0x32
	.4byte	.LVL12
	.4byte	0x47d7
	.4byte	0x390c
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL13
	.4byte	0x47d7
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.4byte	0x398d
	.uleb128 0x33
	.ascii	"dx\000"
	.byte	0x1
	.2byte	0x12a
	.4byte	0x7e
	.4byte	.LLST3
	.uleb128 0x33
	.ascii	"dy\000"
	.byte	0x1
	.2byte	0x12a
	.4byte	0x7e
	.4byte	.LLST4
	.uleb128 0x34
	.4byte	.LASF1717
	.byte	0x1
	.2byte	0x12b
	.4byte	0x3234
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.4byte	.LASF1719
	.byte	0x1
	.byte	0x43
	.4byte	0x7e
	.4byte	0x3968
	.uleb128 0x10
	.byte	0
	.uleb128 0x32
	.4byte	.LVL22
	.4byte	0x47e8
	.4byte	0x397c
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 12
	.byte	0
	.uleb128 0x30
	.4byte	.LVL25
	.4byte	0x47d7
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.4byte	0x39ca
	.uleb128 0x2e
	.4byte	.LASF1717
	.byte	0x1
	.byte	0xb6
	.4byte	0x3234
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.4byte	.LASF1719
	.byte	0x1
	.byte	0x43
	.4byte	0x7e
	.4byte	0x39b9
	.uleb128 0x10
	.byte	0
	.uleb128 0x30
	.4byte	.LVL28
	.4byte	0x47d7
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB15
	.4byte	.LBE15-.LBB15
	.4byte	0x3a08
	.uleb128 0x34
	.4byte	.LASF1717
	.byte	0x1
	.2byte	0x113
	.4byte	0x3234
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.4byte	.LASF1719
	.byte	0x1
	.byte	0x43
	.4byte	0x7e
	.4byte	0x39f7
	.uleb128 0x10
	.byte	0
	.uleb128 0x30
	.4byte	.LVL29
	.4byte	0x47d7
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.4byte	0x3a46
	.uleb128 0x34
	.4byte	.LASF1717
	.byte	0x1
	.2byte	0x11b
	.4byte	0x3234
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.4byte	.LASF1719
	.byte	0x1
	.byte	0x43
	.4byte	0x7e
	.4byte	0x3a35
	.uleb128 0x10
	.byte	0
	.uleb128 0x30
	.4byte	.LVL30
	.4byte	0x47d7
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB17
	.4byte	.LBE17-.LBB17
	.4byte	0x3a98
	.uleb128 0x34
	.4byte	.LASF1717
	.byte	0x1
	.2byte	0x109
	.4byte	0x3234
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.4byte	.LASF1719
	.byte	0x1
	.byte	0x43
	.4byte	0x7e
	.4byte	0x3a73
	.uleb128 0x10
	.byte	0
	.uleb128 0x32
	.4byte	.LVL35
	.4byte	0x47d7
	.4byte	0x3a87
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL36
	.4byte	0x47d7
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.4byte	0x3ad6
	.uleb128 0x34
	.4byte	.LASF1717
	.byte	0x1
	.2byte	0x101
	.4byte	0x3234
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.4byte	.LASF1719
	.byte	0x1
	.byte	0x43
	.4byte	0x7e
	.4byte	0x3ac5
	.uleb128 0x10
	.byte	0
	.uleb128 0x30
	.4byte	.LVL37
	.4byte	0x47d7
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB19
	.4byte	.LBE19-.LBB19
	.4byte	0x3b13
	.uleb128 0x2e
	.4byte	.LASF1717
	.byte	0x1
	.byte	0xf9
	.4byte	0x3234
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.4byte	.LASF1719
	.byte	0x1
	.byte	0x43
	.4byte	0x7e
	.4byte	0x3b02
	.uleb128 0x10
	.byte	0
	.uleb128 0x30
	.4byte	.LVL38
	.4byte	0x47d7
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.4byte	0x3b50
	.uleb128 0x2e
	.4byte	.LASF1717
	.byte	0x1
	.byte	0x81
	.4byte	0x3234
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.4byte	.LASF1719
	.byte	0x1
	.byte	0x43
	.4byte	0x7e
	.4byte	0x3b3f
	.uleb128 0x10
	.byte	0
	.uleb128 0x30
	.4byte	.LVL40
	.4byte	0x47d7
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB21
	.4byte	.LBE21-.LBB21
	.4byte	0x3b8d
	.uleb128 0x2e
	.4byte	.LASF1717
	.byte	0x1
	.byte	0xc1
	.4byte	0x3234
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.4byte	.LASF1719
	.byte	0x1
	.byte	0x43
	.4byte	0x7e
	.4byte	0x3b7c
	.uleb128 0x10
	.byte	0
	.uleb128 0x30
	.4byte	.LVL43
	.4byte	0x47d7
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB22
	.4byte	.LBE22-.LBB22
	.4byte	0x3bca
	.uleb128 0x2e
	.4byte	.LASF1717
	.byte	0x1
	.byte	0xc9
	.4byte	0x3234
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.4byte	.LASF1719
	.byte	0x1
	.byte	0x43
	.4byte	0x7e
	.4byte	0x3bb9
	.uleb128 0x10
	.byte	0
	.uleb128 0x30
	.4byte	.LVL44
	.4byte	0x47d7
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB23
	.4byte	.LBE23-.LBB23
	.4byte	0x3c07
	.uleb128 0x2e
	.4byte	.LASF1717
	.byte	0x1
	.byte	0xd1
	.4byte	0x3234
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.4byte	.LASF1719
	.byte	0x1
	.byte	0x43
	.4byte	0x7e
	.4byte	0x3bf6
	.uleb128 0x10
	.byte	0
	.uleb128 0x30
	.4byte	.LVL45
	.4byte	0x47d7
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB24
	.4byte	.LBE24-.LBB24
	.4byte	0x3c44
	.uleb128 0x2e
	.4byte	.LASF1717
	.byte	0x1
	.byte	0xd9
	.4byte	0x3234
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.4byte	.LASF1719
	.byte	0x1
	.byte	0x43
	.4byte	0x7e
	.4byte	0x3c33
	.uleb128 0x10
	.byte	0
	.uleb128 0x30
	.4byte	.LVL46
	.4byte	0x47d7
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB25
	.4byte	.LBE25-.LBB25
	.4byte	0x3c81
	.uleb128 0x2e
	.4byte	.LASF1717
	.byte	0x1
	.byte	0xe1
	.4byte	0x3234
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.4byte	.LASF1719
	.byte	0x1
	.byte	0x43
	.4byte	0x7e
	.4byte	0x3c70
	.uleb128 0x10
	.byte	0
	.uleb128 0x30
	.4byte	.LVL47
	.4byte	0x47d7
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB26
	.4byte	.LBE26-.LBB26
	.4byte	0x3cbe
	.uleb128 0x2e
	.4byte	.LASF1717
	.byte	0x1
	.byte	0xe9
	.4byte	0x3234
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.4byte	.LASF1719
	.byte	0x1
	.byte	0x43
	.4byte	0x7e
	.4byte	0x3cad
	.uleb128 0x10
	.byte	0
	.uleb128 0x30
	.4byte	.LVL48
	.4byte	0x47d7
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB27
	.4byte	.LBE27-.LBB27
	.4byte	0x3cfb
	.uleb128 0x2e
	.4byte	.LASF1717
	.byte	0x1
	.byte	0xf1
	.4byte	0x3234
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.4byte	.LASF1719
	.byte	0x1
	.byte	0x43
	.4byte	0x7e
	.4byte	0x3cea
	.uleb128 0x10
	.byte	0
	.uleb128 0x30
	.4byte	.LVL49
	.4byte	0x47d7
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB28
	.4byte	.LBE28-.LBB28
	.4byte	0x3d38
	.uleb128 0x2e
	.4byte	.LASF1717
	.byte	0x1
	.byte	0x67
	.4byte	0x3234
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.4byte	.LASF1719
	.byte	0x1
	.byte	0x43
	.4byte	0x7e
	.4byte	0x3d27
	.uleb128 0x10
	.byte	0
	.uleb128 0x30
	.4byte	.LVL51
	.4byte	0x47d7
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB29
	.4byte	.LBE29-.LBB29
	.4byte	0x3d75
	.uleb128 0x2e
	.4byte	.LASF1717
	.byte	0x1
	.byte	0x60
	.4byte	0x3234
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.4byte	.LASF1719
	.byte	0x1
	.byte	0x43
	.4byte	0x7e
	.4byte	0x3d64
	.uleb128 0x10
	.byte	0
	.uleb128 0x30
	.4byte	.LVL52
	.4byte	0x47d7
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB30
	.4byte	.LBE30-.LBB30
	.4byte	0x3db2
	.uleb128 0x2e
	.4byte	.LASF1717
	.byte	0x1
	.byte	0x58
	.4byte	0x3234
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.4byte	.LASF1719
	.byte	0x1
	.byte	0x43
	.4byte	0x7e
	.4byte	0x3da1
	.uleb128 0x10
	.byte	0
	.uleb128 0x30
	.4byte	.LVL53
	.4byte	0x47d7
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB31
	.4byte	.LBE31-.LBB31
	.4byte	0x3def
	.uleb128 0x2e
	.4byte	.LASF1717
	.byte	0x1
	.byte	0x50
	.4byte	0x3234
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.4byte	.LASF1719
	.byte	0x1
	.byte	0x43
	.4byte	0x7e
	.4byte	0x3dde
	.uleb128 0x10
	.byte	0
	.uleb128 0x30
	.4byte	.LVL54
	.4byte	0x47d7
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB32
	.4byte	.LBE32-.LBB32
	.4byte	0x3e2c
	.uleb128 0x2e
	.4byte	.LASF1717
	.byte	0x1
	.byte	0x48
	.4byte	0x3234
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.4byte	.LASF1719
	.byte	0x1
	.byte	0x43
	.4byte	0x7e
	.4byte	0x3e1b
	.uleb128 0x10
	.byte	0
	.uleb128 0x30
	.4byte	.LVL55
	.4byte	0x47d7
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB33
	.4byte	.LBE33-.LBB33
	.4byte	0x3e69
	.uleb128 0x2e
	.4byte	.LASF1717
	.byte	0x1
	.byte	0x40
	.4byte	0x3234
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.4byte	.LASF1719
	.byte	0x1
	.byte	0x43
	.4byte	0x7e
	.4byte	0x3e58
	.uleb128 0x10
	.byte	0
	.uleb128 0x30
	.4byte	.LVL58
	.4byte	0x47d7
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x35
	.4byte	.Ldebug_ranges0+0
	.4byte	0x3ea2
	.uleb128 0x2e
	.4byte	.LASF1717
	.byte	0x1
	.byte	0xac
	.4byte	0x3234
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.4byte	.LASF1719
	.byte	0x1
	.byte	0x43
	.4byte	0x7e
	.4byte	0x3e91
	.uleb128 0x10
	.byte	0
	.uleb128 0x30
	.4byte	.LVL60
	.4byte	0x47d7
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL0
	.4byte	0x47ff
	.uleb128 0x36
	.4byte	.LVL1
	.4byte	0x480c
	.uleb128 0x36
	.4byte	.LVL3
	.4byte	0x481d
	.uleb128 0x36
	.4byte	.LVL15
	.4byte	0x482e
	.uleb128 0x36
	.4byte	.LVL19
	.4byte	0x480c
	.uleb128 0x36
	.4byte	.LVL21
	.4byte	0x481d
	.uleb128 0x36
	.4byte	.LVL31
	.4byte	0x480c
	.uleb128 0x30
	.4byte	.LVL33
	.4byte	0x47e8
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 8
	.byte	0
	.byte	0
	.uleb128 0x37
	.4byte	.LASF1722
	.byte	0x1
	.2byte	0x149
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3f12
	.uleb128 0x38
	.4byte	.LVL61
	.4byte	0x3805
	.byte	0
	.uleb128 0x29
	.4byte	.LASF1724
	.byte	0x1
	.2byte	0x15f
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x39
	.4byte	.LASF1728
	.byte	0x1
	.2byte	0x17b
	.4byte	0x7e
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3f4f
	.uleb128 0x3a
	.4byte	.LASF1726
	.byte	0x1
	.2byte	0x17b
	.4byte	0x257
	.4byte	.LLST5
	.byte	0
	.uleb128 0x37
	.4byte	.LASF1725
	.byte	0x1
	.2byte	0x184
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3f74
	.uleb128 0x3b
	.ascii	"pal\000"
	.byte	0x1
	.2byte	0x184
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x3c
	.4byte	0x37b3
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3f96
	.uleb128 0x3d
	.4byte	0x37c0
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3d
	.4byte	0x37cc
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF1727
	.byte	0x1
	.2byte	0x193
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4046
	.uleb128 0x33
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x195
	.4byte	0x7e
	.4byte	.LLST6
	.uleb128 0x3f
	.4byte	0x37b3
	.4byte	.LBB36
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.2byte	0x197
	.4byte	0x3fe1
	.uleb128 0x40
	.4byte	0x37cc
	.4byte	.LLST7
	.uleb128 0x40
	.4byte	0x37c0
	.4byte	.LLST8
	.byte	0
	.uleb128 0x32
	.4byte	.LVL70
	.4byte	0x483f
	.4byte	0x3ff4
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x32
	.4byte	.LVL72
	.4byte	0x483f
	.4byte	0x4007
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x32
	.4byte	.LVL74
	.4byte	0x483f
	.4byte	0x401a
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x32
	.4byte	.LVL76
	.4byte	0x483f
	.4byte	0x402d
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x41
	.4byte	.LVL78
	.4byte	0x4854
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	.LASF1729
	.byte	0x1
	.2byte	0x1ac
	.4byte	0x7e
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4161
	.uleb128 0x3a
	.4byte	.LASF1730
	.byte	0x1
	.2byte	0x1ac
	.4byte	0x257
	.4byte	.LLST9
	.uleb128 0x28
	.4byte	.LASF1731
	.byte	0x1
	.2byte	0x1ae
	.4byte	0x36f6
	.uleb128 0x32
	.4byte	.LVL80
	.4byte	0x486f
	.4byte	0x4099
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.4byte	.LVL81
	.4byte	0x486f
	.4byte	0x40b6
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.4byte	.LVL82
	.4byte	0x486f
	.4byte	0x40d3
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.4byte	.LVL83
	.4byte	0x486f
	.4byte	0x40f0
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.4byte	.LVL84
	.4byte	0x486f
	.4byte	0x410d
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.4byte	.LVL85
	.4byte	0x486f
	.4byte	0x412a
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.4byte	.LVL86
	.4byte	0x486f
	.4byte	0x4147
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL87
	.4byte	0x486f
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x37
	.4byte	.LASF1732
	.byte	0x1
	.2byte	0x164
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4240
	.uleb128 0x42
	.4byte	.LASF1731
	.byte	0x1
	.2byte	0x166
	.4byte	0x36f6
	.4byte	.LLST10
	.uleb128 0x33
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x167
	.4byte	0x7e
	.4byte	.LLST11
	.uleb128 0x43
	.4byte	.LASF1729
	.byte	0x1
	.2byte	0x16b
	.4byte	0x7e
	.4byte	0x41a7
	.uleb128 0x10
	.byte	0
	.uleb128 0x43
	.4byte	.LASF1727
	.byte	0x1
	.2byte	0x174
	.4byte	0x7e
	.4byte	0x41b9
	.uleb128 0x10
	.byte	0
	.uleb128 0x32
	.4byte	.LVL88
	.4byte	0x4854
	.4byte	0x41d5
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x36
	.4byte	.LVL89
	.4byte	0x4046
	.uleb128 0x32
	.4byte	.LVL91
	.4byte	0x4889
	.4byte	0x41f5
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0
	.uleb128 0x36
	.4byte	.LVL93
	.4byte	0x4046
	.uleb128 0x32
	.4byte	.LVL95
	.4byte	0x489e
	.4byte	0x4212
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL96
	.4byte	0x48af
	.uleb128 0x36
	.4byte	.LVL97
	.4byte	0x48b6
	.uleb128 0x36
	.4byte	.LVL98
	.4byte	0x3f96
	.uleb128 0x36
	.4byte	.LVL99
	.4byte	0x48c3
	.uleb128 0x38
	.4byte	.LVL101
	.4byte	0x48d0
	.byte	0
	.uleb128 0x29
	.4byte	.LASF1733
	.byte	0x1
	.2byte	0x1d1
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x37
	.4byte	.LASF1734
	.byte	0x1
	.2byte	0x26b
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x42f8
	.uleb128 0x3a
	.4byte	.LASF1735
	.byte	0x1
	.2byte	0x26b
	.4byte	0x7e
	.4byte	.LLST12
	.uleb128 0x42
	.4byte	.LASF1736
	.byte	0x1
	.2byte	0x26c
	.4byte	0x12f
	.4byte	.LLST13
	.uleb128 0x33
	.ascii	"src\000"
	.byte	0x1
	.2byte	0x26d
	.4byte	0x36b8
	.4byte	.LLST14
	.uleb128 0x33
	.ascii	"w\000"
	.byte	0x1
	.2byte	0x26e
	.4byte	0x7e
	.4byte	.LLST15
	.uleb128 0x33
	.ascii	"h\000"
	.byte	0x1
	.2byte	0x26e
	.4byte	0x7e
	.4byte	.LLST16
	.uleb128 0x35
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0x42d7
	.uleb128 0x33
	.ascii	"v\000"
	.byte	0x1
	.2byte	0x275
	.4byte	0xcd
	.4byte	.LLST17
	.uleb128 0x44
	.ascii	"v1\000"
	.byte	0x1
	.2byte	0x276
	.4byte	0xcd
	.byte	0
	.uleb128 0x30
	.4byte	.LVL104
	.4byte	0x48e6
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LASF1738
	.byte	0x1
	.2byte	0x214
	.byte	0x1
	.4byte	0x43aa
	.uleb128 0x45
	.ascii	"pal\000"
	.byte	0x1
	.2byte	0x214
	.4byte	0x7e
	.uleb128 0x28
	.4byte	.LASF1739
	.byte	0x1
	.2byte	0x216
	.4byte	0x43aa
	.uleb128 0x28
	.4byte	.LASF1740
	.byte	0x1
	.2byte	0x217
	.4byte	0x7e
	.uleb128 0x28
	.4byte	.LASF1741
	.byte	0x1
	.2byte	0x218
	.4byte	0xad
	.uleb128 0x44
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x241
	.4byte	0xcd
	.uleb128 0x44
	.ascii	"c\000"
	.byte	0x1
	.2byte	0x242
	.4byte	0xc2
	.uleb128 0x46
	.4byte	0x4389
	.uleb128 0x28
	.4byte	.LASF1742
	.byte	0x1
	.2byte	0x21e
	.4byte	0x7e
	.uleb128 0x28
	.4byte	.LASF1743
	.byte	0x1
	.2byte	0x21f
	.4byte	0x7e
	.uleb128 0x28
	.4byte	.LASF1744
	.byte	0x1
	.2byte	0x220
	.4byte	0x3701
	.uleb128 0x28
	.4byte	.LASF1745
	.byte	0x1
	.2byte	0x221
	.4byte	0x43b0
	.uleb128 0x44
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x222
	.4byte	0x7e
	.byte	0
	.uleb128 0x47
	.uleb128 0x44
	.ascii	"r\000"
	.byte	0x1
	.2byte	0x246
	.4byte	0xb8
	.uleb128 0x44
	.ascii	"g\000"
	.byte	0x1
	.2byte	0x246
	.4byte	0xb8
	.uleb128 0x44
	.ascii	"b\000"
	.byte	0x1
	.2byte	0x246
	.4byte	0xb8
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x3781
	.uleb128 0xd
	.4byte	0x3701
	.uleb128 0x37
	.4byte	.LASF1746
	.byte	0x1
	.2byte	0x280
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4563
	.uleb128 0x3f
	.4byte	0x42f8
	.4byte	.LBB48
	.4byte	.Ldebug_ranges0+0x48
	.byte	0x1
	.2byte	0x2a2
	.4byte	0x4550
	.uleb128 0x3d
	.4byte	0x4305
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x48
	.4byte	.Ldebug_ranges0+0x48
	.uleb128 0x49
	.4byte	0x4335
	.4byte	.LLST18
	.uleb128 0x4a
	.4byte	0x433f
	.uleb128 0x4b
	.4byte	0x4311
	.uleb128 0x5
	.byte	0x3
	.4byte	colours.10683
	.uleb128 0x4b
	.4byte	0x431d
	.uleb128 0x5
	.byte	0x3
	.4byte	cachedgamma.10684
	.uleb128 0x4b
	.4byte	0x4329
	.uleb128 0x5
	.byte	0x3
	.4byte	num_pals.10685
	.uleb128 0x35
	.4byte	.Ldebug_ranges0+0x60
	.4byte	0x451c
	.uleb128 0x49
	.4byte	0x434e
	.4byte	.LLST19
	.uleb128 0x4a
	.4byte	0x435a
	.uleb128 0x49
	.4byte	0x4366
	.4byte	.LLST20
	.uleb128 0x49
	.4byte	0x4372
	.4byte	.LLST21
	.uleb128 0x49
	.4byte	0x437e
	.4byte	.LLST22
	.uleb128 0x3f
	.4byte	0x378d
	.4byte	.LBB51
	.4byte	.Ldebug_ranges0+0x78
	.byte	0x1
	.2byte	0x21f
	.4byte	0x4491
	.uleb128 0x40
	.4byte	0x37a8
	.4byte	.LLST23
	.uleb128 0x40
	.4byte	0x379d
	.4byte	.LLST24
	.uleb128 0x30
	.4byte	.LVL117
	.4byte	0x490a
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC12
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	.LVL114
	.4byte	0x4929
	.4byte	0x44a8
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.byte	0
	.uleb128 0x32
	.4byte	.LVL118
	.4byte	0x493e
	.4byte	0x44bc
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.4byte	.LVL121
	.4byte	0x493e
	.4byte	0x44d0
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.4byte	.LVL123
	.4byte	0x4953
	.4byte	0x44e4
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.4byte	.LVL128
	.4byte	0x4968
	.4byte	0x44f8
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.4byte	.LVL129
	.4byte	0x4968
	.4byte	0x450c
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL137
	.4byte	0x4979
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB55
	.4byte	.LBE55-.LBB55
	.4byte	0x4545
	.uleb128 0x49
	.4byte	0x438a
	.4byte	.LLST25
	.uleb128 0x49
	.4byte	0x4394
	.4byte	.LLST26
	.uleb128 0x49
	.4byte	0x439e
	.4byte	.LLST27
	.byte	0
	.uleb128 0x36
	.4byte	.LVL113
	.4byte	0x499e
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL110
	.4byte	0x49a9
	.uleb128 0x36
	.4byte	.LVL111
	.4byte	0x49b6
	.byte	0
	.uleb128 0x37
	.4byte	.LASF1747
	.byte	0x1
	.2byte	0x2e1
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x460b
	.uleb128 0x28
	.4byte	.LASF1748
	.byte	0x1
	.2byte	0x2e3
	.4byte	0x460b
	.uleb128 0x34
	.4byte	.LASF1749
	.byte	0x1
	.2byte	0x2e4
	.4byte	0x7e
	.uleb128 0x5
	.byte	0x3
	.4byte	firsttime.10732
	.uleb128 0x4c
	.4byte	0x37d9
	.4byte	.LBB59
	.4byte	.LBE59-.LBB59
	.byte	0x1
	.2byte	0x2f1
	.4byte	0x45ce
	.uleb128 0x4d
	.4byte	.LBB60
	.4byte	.LBE60-.LBB60
	.uleb128 0x4a
	.4byte	0x37e6
	.uleb128 0x41
	.4byte	.LVL141
	.4byte	0x4889
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	.LVL138
	.4byte	0x49c3
	.4byte	0x45e5
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	I_ShutdownGraphics
	.byte	0
	.uleb128 0x32
	.4byte	.LVL139
	.4byte	0x4854
	.4byte	0x4601
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x36
	.4byte	.LVL140
	.4byte	0x4161
	.byte	0
	.uleb128 0x17
	.4byte	0x128
	.4byte	0x461c
	.uleb128 0x4e
	.4byte	0xd8
	.2byte	0x7ff
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF1750
	.byte	0xd
	.byte	0x50
	.4byte	0x4627
	.uleb128 0xd
	.4byte	0x462c
	.uleb128 0x9
	.byte	0x4
	.4byte	0x3e4
	.uleb128 0x34
	.4byte	.LASF1751
	.byte	0x1
	.2byte	0x17e
	.4byte	0x7e
	.uleb128 0x5
	.byte	0x3
	.4byte	newpal
	.uleb128 0x4f
	.4byte	.LASF1752
	.byte	0xb
	.byte	0x7c
	.4byte	0x7e
	.uleb128 0x4f
	.4byte	.LASF1753
	.byte	0xb
	.byte	0x7d
	.4byte	0x7e
	.uleb128 0x4f
	.4byte	.LASF1754
	.byte	0xb
	.byte	0x82
	.4byte	0x7e
	.uleb128 0x17
	.4byte	0x3e4
	.4byte	0x4676
	.uleb128 0x4e
	.4byte	0xd8
	.2byte	0x27ff
	.byte	0
	.uleb128 0x4f
	.4byte	.LASF1755
	.byte	0xd
	.byte	0x4d
	.4byte	0x4665
	.uleb128 0x4f
	.4byte	.LASF1756
	.byte	0x16
	.byte	0x3f
	.4byte	0x2f0
	.uleb128 0x4f
	.4byte	.LASF1757
	.byte	0x16
	.byte	0xb8
	.4byte	0x316a
	.uleb128 0x4f
	.4byte	.LASF1758
	.byte	0x16
	.byte	0xc4
	.4byte	0x7e
	.uleb128 0x17
	.4byte	0x30b4
	.4byte	0x46b2
	.uleb128 0x18
	.4byte	0xd8
	.byte	0x3
	.byte	0
	.uleb128 0x4f
	.4byte	.LASF1759
	.byte	0x16
	.byte	0xed
	.4byte	0x46a2
	.uleb128 0x17
	.4byte	0x36be
	.4byte	0x46cd
	.uleb128 0x18
	.4byte	0xd8
	.byte	0x5
	.byte	0
	.uleb128 0x4f
	.4byte	.LASF1760
	.byte	0x19
	.byte	0x59
	.4byte	0x46bd
	.uleb128 0x4f
	.4byte	.LASF1761
	.byte	0x19
	.byte	0x5a
	.4byte	0x7e
	.uleb128 0x4f
	.4byte	.LASF1762
	.byte	0x19
	.byte	0x7b
	.4byte	0x257
	.uleb128 0x4f
	.4byte	.LASF1763
	.byte	0x1a
	.byte	0x29
	.4byte	0x7e
	.uleb128 0x4f
	.4byte	.LASF1764
	.byte	0x1a
	.byte	0x2a
	.4byte	0x4704
	.uleb128 0x9
	.byte	0x4
	.4byte	0x470a
	.uleb128 0xd
	.4byte	0x257
	.uleb128 0x50
	.4byte	.LASF1765
	.byte	0x1
	.byte	0x18
	.4byte	0x7e
	.uleb128 0x5
	.byte	0x3
	.4byte	use_doublebuffer
	.uleb128 0x50
	.4byte	.LASF1766
	.byte	0x1
	.byte	0x1a
	.4byte	0x7e
	.uleb128 0x5
	.byte	0x3
	.4byte	use_fullscreen
	.uleb128 0x50
	.4byte	.LASF1767
	.byte	0x1
	.byte	0x1b
	.4byte	0x7e
	.uleb128 0x5
	.byte	0x3
	.4byte	desired_fullscreen
	.uleb128 0x50
	.4byte	.LASF1768
	.byte	0x1
	.byte	0x1e
	.4byte	0x251
	.uleb128 0x5
	.byte	0x3
	.4byte	out_buffer
	.uleb128 0x50
	.4byte	.LASF1769
	.byte	0x1
	.byte	0x20
	.4byte	0x3739
	.uleb128 0x5
	.byte	0x3
	.4byte	weapons
	.uleb128 0x50
	.4byte	.LASF1770
	.byte	0x1
	.byte	0x21
	.4byte	0x7e
	.uleb128 0x5
	.byte	0x3
	.4byte	weapon_index
	.uleb128 0x50
	.4byte	.LASF1771
	.byte	0x1
	.byte	0x22
	.4byte	0x11f
	.uleb128 0x5
	.byte	0x3
	.4byte	weapon_shotgun_cycled
	.uleb128 0x50
	.4byte	.LASF1772
	.byte	0x1
	.byte	0x27
	.4byte	0x23f
	.uleb128 0x5
	.byte	0x3
	.4byte	g_lastTouch
	.uleb128 0x50
	.4byte	.LASF1773
	.byte	0x1
	.byte	0x28
	.4byte	0x23f
	.uleb128 0x5
	.byte	0x3
	.4byte	g_currentTouch
	.uleb128 0x51
	.4byte	.LASF1774
	.byte	0x1
	.2byte	0x147
	.4byte	0x7e
	.uleb128 0x17
	.4byte	0x26d
	.4byte	0x47c5
	.uleb128 0x4e
	.4byte	0xd8
	.2byte	0x2ff
	.byte	0
	.uleb128 0x52
	.4byte	.LASF1775
	.byte	0x1
	.2byte	0x212
	.4byte	0x47b4
	.uleb128 0x5
	.byte	0x3
	.4byte	pal3ds
	.uleb128 0x2f
	.4byte	.LASF1719
	.byte	0x1
	.byte	0x43
	.4byte	0x7e
	.4byte	0x47e8
	.uleb128 0x10
	.byte	0
	.uleb128 0x53
	.4byte	.LASF1776
	.byte	0x8
	.byte	0x55
	.4byte	0x47f9
	.uleb128 0x54
	.4byte	0x47f9
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x23f
	.uleb128 0x55
	.4byte	.LASF1785
	.byte	0x8
	.byte	0x51
	.4byte	0x480c
	.uleb128 0x10
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF1777
	.byte	0x8
	.byte	0x53
	.4byte	0xcd
	.4byte	0x481d
	.uleb128 0x10
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF1778
	.byte	0x8
	.byte	0x52
	.4byte	0xcd
	.4byte	0x482e
	.uleb128 0x10
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF1779
	.byte	0x8
	.byte	0x54
	.4byte	0xcd
	.4byte	0x483f
	.uleb128 0x10
	.byte	0
	.uleb128 0x56
	.4byte	.LASF1780
	.byte	0x19
	.byte	0x81
	.4byte	0x7e
	.4byte	0x4854
	.uleb128 0x54
	.4byte	0x36f6
	.byte	0
	.uleb128 0x56
	.4byte	.LASF1781
	.byte	0x17
	.byte	0x36
	.4byte	0x7e
	.4byte	0x486f
	.uleb128 0x54
	.4byte	0x31bd
	.uleb128 0x54
	.4byte	0x257
	.uleb128 0x10
	.byte	0
	.uleb128 0x56
	.4byte	.LASF1782
	.byte	0x1b
	.byte	0x40
	.4byte	0x7e
	.4byte	0x4889
	.uleb128 0x54
	.4byte	0x257
	.uleb128 0x54
	.4byte	0x257
	.byte	0
	.uleb128 0x56
	.4byte	.LASF1783
	.byte	0x1a
	.byte	0x2d
	.4byte	0x7e
	.4byte	0x489e
	.uleb128 0x54
	.4byte	0x257
	.byte	0
	.uleb128 0x53
	.4byte	.LASF1784
	.byte	0x19
	.byte	0x7d
	.4byte	0x48af
	.uleb128 0x54
	.4byte	0x36f6
	.byte	0
	.uleb128 0x57
	.4byte	.LASF1804
	.byte	0x19
	.byte	0xaf
	.uleb128 0x55
	.4byte	.LASF1786
	.byte	0x19
	.byte	0xca
	.4byte	0x48c3
	.uleb128 0x10
	.byte	0
	.uleb128 0x55
	.4byte	.LASF1787
	.byte	0x19
	.byte	0xc8
	.4byte	0x48d0
	.uleb128 0x10
	.byte	0
	.uleb128 0x53
	.4byte	.LASF1788
	.byte	0x1c
	.byte	0x96
	.4byte	0x48e6
	.uleb128 0x54
	.4byte	0x7e
	.uleb128 0x54
	.4byte	0x7e
	.byte	0
	.uleb128 0x56
	.4byte	.LASF1789
	.byte	0x7
	.byte	0x23
	.4byte	0x12f
	.4byte	0x490a
	.uleb128 0x54
	.4byte	0xf4
	.uleb128 0x54
	.4byte	0x114
	.uleb128 0x54
	.4byte	0x135
	.uleb128 0x54
	.4byte	0x135
	.byte	0
	.uleb128 0x56
	.4byte	.LASF1790
	.byte	0x2
	.byte	0x7f
	.4byte	0x7e
	.4byte	0x4929
	.uleb128 0x54
	.4byte	0x257
	.uleb128 0x54
	.4byte	0x7e
	.uleb128 0x54
	.4byte	0x7e
	.byte	0
	.uleb128 0x56
	.4byte	.LASF1791
	.byte	0x2
	.byte	0x85
	.4byte	0x7e
	.4byte	0x493e
	.uleb128 0x54
	.4byte	0x257
	.byte	0
	.uleb128 0x56
	.4byte	.LASF1792
	.byte	0x2
	.byte	0x89
	.4byte	0x283
	.4byte	0x4953
	.uleb128 0x54
	.4byte	0x7e
	.byte	0
	.uleb128 0x56
	.4byte	.LASF1793
	.byte	0x2
	.byte	0x86
	.4byte	0x7e
	.4byte	0x4968
	.uleb128 0x54
	.4byte	0x7e
	.byte	0
	.uleb128 0x53
	.4byte	.LASF1794
	.byte	0x2
	.byte	0x8b
	.4byte	0x4979
	.uleb128 0x54
	.4byte	0x7e
	.byte	0
	.uleb128 0x56
	.4byte	.LASF1795
	.byte	0xa
	.byte	0x49
	.4byte	0x126
	.4byte	0x4998
	.uleb128 0x54
	.4byte	0xad
	.uleb128 0x54
	.4byte	0x7e
	.uleb128 0x54
	.4byte	0x4998
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x126
	.uleb128 0x58
	.4byte	.LASF1805
	.byte	0x19
	.byte	0x80
	.4byte	0x36f6
	.uleb128 0x55
	.4byte	.LASF1796
	.byte	0x7
	.byte	0x1e
	.4byte	0x49b6
	.uleb128 0x10
	.byte	0
	.uleb128 0x55
	.4byte	.LASF1797
	.byte	0x7
	.byte	0x1f
	.4byte	0x49c3
	.uleb128 0x10
	.byte	0
	.uleb128 0x59
	.4byte	.LASF1798
	.byte	0x1d
	.byte	0x44
	.4byte	0x7e
	.uleb128 0x54
	.4byte	0x24a
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0x19
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x40
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x41
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0x19
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x42
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x43
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x44
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x45
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x46
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x47
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x48
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x49
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x4a
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4b
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x4c
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x4e
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x4f
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x50
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x51
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x52
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x53
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x54
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x55
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x56
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x57
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x58
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x59
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL59-.Ltext0
	.4byte	.LFE7-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL57-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL25-1-.Ltext0
	.2byte	0x11
	.byte	0x72
	.sleb128 0
	.byte	0x3
	.4byte	g_lastTouch
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x1c
	.byte	0x36
	.byte	0x26
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL25-1-.Ltext0
	.2byte	0x1a
	.byte	0x3
	.4byte	g_currentTouch+2
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x3
	.4byte	g_lastTouch+2
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x1c
	.byte	0x36
	.byte	0x26
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL63-.Ltext0
	.4byte	.LFE11-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL67-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x2
	.byte	0x7b
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL79-.Ltext0
	.4byte	.LVL80-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL80-1-.Ltext0
	.4byte	.LFE15-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL90-.Ltext0
	.4byte	.LVL100-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL91-.Ltext0
	.4byte	.LVL92-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL92-.Ltext0
	.4byte	.LVL93-1-.Ltext0
	.2byte	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL102-.Ltext0
	.4byte	.LVL103-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL103-.Ltext0
	.4byte	.LFE18-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL104-.Ltext0
	.4byte	.LVL106-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL106-.Ltext0
	.4byte	.LFE18-.Ltext0
	.2byte	0x5
	.byte	0x77
	.sleb128 -288000
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL105-.Ltext0
	.4byte	.LVL106-.Ltext0
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL104-.Ltext0
	.4byte	.LVL106-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL106-.Ltext0
	.4byte	.LVL107-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL107-.Ltext0
	.4byte	.LVL108-.Ltext0
	.2byte	0xa
	.byte	0x70
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x46500
	.byte	0x9f
	.4byte	.LVL108-.Ltext0
	.4byte	.LVL109-.Ltext0
	.2byte	0xa
	.byte	0x70
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x464fd
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL130-.Ltext0
	.4byte	.LVL131-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL115-.Ltext0
	.4byte	.LVL116-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL116-.Ltext0
	.4byte	.LVL130-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL136-.Ltext0
	.4byte	.LFE19-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL119-.Ltext0
	.4byte	.LVL120-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL120-.Ltext0
	.4byte	.LVL125-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL125-.Ltext0
	.4byte	.LVL126-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 -3
	.byte	0x9f
	.4byte	.LVL126-.Ltext0
	.4byte	.LVL127-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 -6
	.byte	0x9f
	.4byte	.LVL136-.Ltext0
	.4byte	.LFE19-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL122-.Ltext0
	.4byte	.LVL130-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL136-.Ltext0
	.4byte	.LFE19-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL124-.Ltext0
	.4byte	.LVL125-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL115-.Ltext0
	.4byte	.LVL130-.Ltext0
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	.LVL136-.Ltext0
	.4byte	.LFE19-.Ltext0
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL115-.Ltext0
	.4byte	.LVL130-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	.LC12
	.byte	0x9f
	.4byte	.LVL136-.Ltext0
	.4byte	.LFE19-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	.LC12
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL132-.Ltext0
	.4byte	.LVL135-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL133-.Ltext0
	.4byte	.LVL135-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL134-.Ltext0
	.4byte	.LVL135-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LBB34-.Ltext0
	.4byte	.LBE34-.Ltext0
	.4byte	.LBB35-.Ltext0
	.4byte	.LBE35-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB36-.Ltext0
	.4byte	.LBE36-.Ltext0
	.4byte	.LBB39-.Ltext0
	.4byte	.LBE39-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB40-.Ltext0
	.4byte	.LBE40-.Ltext0
	.4byte	.LBB41-.Ltext0
	.4byte	.LBE41-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB48-.Ltext0
	.4byte	.LBE48-.Ltext0
	.4byte	.LBB58-.Ltext0
	.4byte	.LBE58-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB50-.Ltext0
	.4byte	.LBE50-.Ltext0
	.4byte	.LBB56-.Ltext0
	.4byte	.LBE56-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB51-.Ltext0
	.4byte	.LBE51-.Ltext0
	.4byte	.LBB54-.Ltext0
	.4byte	.LBE54-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF1685:
	.ascii	"RF_TOP_TILE\000"
.LASF1725:
	.ascii	"I_SetPalette\000"
.LASF891:
	.ascii	"S_BSPI_RUN1\000"
.LASF892:
	.ascii	"S_BSPI_RUN2\000"
.LASF893:
	.ascii	"S_BSPI_RUN3\000"
.LASF894:
	.ascii	"S_BSPI_RUN4\000"
.LASF895:
	.ascii	"S_BSPI_RUN5\000"
.LASF896:
	.ascii	"S_BSPI_RUN6\000"
.LASF897:
	.ascii	"S_BSPI_RUN7\000"
.LASF898:
	.ascii	"S_BSPI_RUN8\000"
.LASF899:
	.ascii	"S_BSPI_RUN9\000"
.LASF181:
	.ascii	"SPR_YSKU\000"
.LASF1555:
	.ascii	"attacker\000"
.LASF546:
	.ascii	"S_FIRE10\000"
.LASF547:
	.ascii	"S_FIRE11\000"
.LASF548:
	.ascii	"S_FIRE12\000"
.LASF549:
	.ascii	"S_FIRE13\000"
.LASF550:
	.ascii	"S_FIRE14\000"
.LASF551:
	.ascii	"S_FIRE15\000"
.LASF552:
	.ascii	"S_FIRE16\000"
.LASF553:
	.ascii	"S_FIRE17\000"
.LASF554:
	.ascii	"S_FIRE18\000"
.LASF555:
	.ascii	"S_FIRE19\000"
.LASF1436:
	.ascii	"MT_MISC84\000"
.LASF1369:
	.ascii	"MT_MISC20\000"
.LASF1114:
	.ascii	"S_MEGA2\000"
.LASF1115:
	.ascii	"S_MEGA3\000"
.LASF1116:
	.ascii	"S_MEGA4\000"
.LASF1373:
	.ascii	"MT_MISC24\000"
.LASF1374:
	.ascii	"MT_MISC25\000"
.LASF1376:
	.ascii	"MT_MISC26\000"
.LASF1377:
	.ascii	"MT_MISC27\000"
.LASF1378:
	.ascii	"MT_MISC28\000"
.LASF1381:
	.ascii	"MT_MISC29\000"
.LASF745:
	.ascii	"S_SARG_PAIN2\000"
.LASF1633:
	.ascii	"no_toptextures\000"
.LASF1511:
	.ascii	"threshold\000"
.LASF79:
	.ascii	"wp_pistol\000"
.LASF29:
	.ascii	"KEY_DRIGHT\000"
.LASF222:
	.ascii	"SPR_COL1\000"
.LASF223:
	.ascii	"SPR_COL2\000"
.LASF224:
	.ascii	"SPR_COL3\000"
.LASF225:
	.ascii	"SPR_COL4\000"
.LASF234:
	.ascii	"SPR_COL5\000"
.LASF228:
	.ascii	"SPR_COL6\000"
.LASF1797:
	.ascii	"gfxSwapBuffers\000"
.LASF68:
	.ascii	"pack_plut\000"
.LASF556:
	.ascii	"S_FIRE20\000"
.LASF557:
	.ascii	"S_FIRE21\000"
.LASF558:
	.ascii	"S_FIRE22\000"
.LASF559:
	.ascii	"S_FIRE23\000"
.LASF560:
	.ascii	"S_FIRE24\000"
.LASF208:
	.ascii	"SPR_COLU\000"
.LASF562:
	.ascii	"S_FIRE26\000"
.LASF563:
	.ascii	"S_FIRE27\000"
.LASF564:
	.ascii	"S_FIRE28\000"
.LASF565:
	.ascii	"S_FIRE29\000"
.LASF1382:
	.ascii	"MT_MISC30\000"
.LASF1297:
	.ascii	"action\000"
.LASF1384:
	.ascii	"MT_MISC32\000"
.LASF1385:
	.ascii	"MT_MISC33\000"
.LASF907:
	.ascii	"S_BSPI_PAIN\000"
.LASF3:
	.ascii	"__uint8_t\000"
.LASF379:
	.ascii	"S_BFGEXP\000"
.LASF93:
	.ascii	"am_misl\000"
.LASF1390:
	.ascii	"MT_MISC38\000"
.LASF1391:
	.ascii	"MT_MISC39\000"
.LASF1663:
	.ascii	"floorpic\000"
.LASF23:
	.ascii	"_Bool\000"
.LASF909:
	.ascii	"S_BSPI_DIE1\000"
.LASF910:
	.ascii	"S_BSPI_DIE2\000"
.LASF1452:
	.ascii	"MT_STEALTHSHOTGUY\000"
.LASF1482:
	.ascii	"NUMPSPRITES\000"
.LASF914:
	.ascii	"S_BSPI_DIE6\000"
.LASF1708:
	.ascii	"ns_hires\000"
.LASF1682:
	.ascii	"ST_POSITIVE\000"
.LASF1531:
	.ascii	"viewz\000"
.LASF805:
	.ascii	"S_BOSS_RAISE1\000"
.LASF806:
	.ascii	"S_BOSS_RAISE2\000"
.LASF1316:
	.ascii	"MT_HEAD\000"
.LASF807:
	.ascii	"S_BOSS_RAISE3\000"
.LASF1698:
	.ascii	"VID_MODE15\000"
.LASF566:
	.ascii	"S_FIRE30\000"
.LASF711:
	.ascii	"S_TROO_PAIN\000"
.LASF1000:
	.ascii	"S_SSWV_DIE1\000"
.LASF810:
	.ascii	"S_BOSS_RAISE6\000"
.LASF1002:
	.ascii	"S_SSWV_DIE3\000"
.LASF1003:
	.ascii	"S_SSWV_DIE4\000"
.LASF1004:
	.ascii	"S_SSWV_DIE5\000"
.LASF176:
	.ascii	"SPR_BKEY\000"
.LASF822:
	.ascii	"S_BOS2_ATK1\000"
.LASF823:
	.ascii	"S_BOS2_ATK2\000"
.LASF824:
	.ascii	"S_BOS2_ATK3\000"
.LASF210:
	.ascii	"SPR_GOR1\000"
.LASF217:
	.ascii	"SPR_GOR2\000"
.LASF218:
	.ascii	"SPR_GOR3\000"
.LASF219:
	.ascii	"SPR_GOR4\000"
.LASF220:
	.ascii	"SPR_GOR5\000"
.LASF1394:
	.ascii	"MT_MISC42\000"
.LASF1395:
	.ascii	"MT_MISC43\000"
.LASF579:
	.ascii	"S_SKEL_RUN1\000"
.LASF580:
	.ascii	"S_SKEL_RUN2\000"
.LASF581:
	.ascii	"S_SKEL_RUN3\000"
.LASF582:
	.ascii	"S_SKEL_RUN4\000"
.LASF583:
	.ascii	"S_SKEL_RUN5\000"
.LASF584:
	.ascii	"S_SKEL_RUN6\000"
.LASF585:
	.ascii	"S_SKEL_RUN7\000"
.LASF586:
	.ascii	"S_SKEL_RUN8\000"
.LASF587:
	.ascii	"S_SKEL_RUN9\000"
.LASF82:
	.ascii	"wp_missile\000"
.LASF1065:
	.ascii	"S_BEXP2\000"
.LASF1459:
	.ascii	"seestate\000"
.LASF1067:
	.ascii	"S_BEXP4\000"
.LASF760:
	.ascii	"S_HEAD_ATK1\000"
.LASF761:
	.ascii	"S_HEAD_ATK2\000"
.LASF762:
	.ascii	"S_HEAD_ATK3\000"
.LASF1672:
	.ascii	"slopetype\000"
.LASF1767:
	.ascii	"desired_fullscreen\000"
.LASF1014:
	.ascii	"S_SSWV_RAISE1\000"
.LASF1015:
	.ascii	"S_SSWV_RAISE2\000"
.LASF1017:
	.ascii	"S_SSWV_RAISE4\000"
.LASF1018:
	.ascii	"S_SSWV_RAISE5\000"
.LASF1485:
	.ascii	"angle\000"
.LASF1311:
	.ascii	"MT_FATSHOT\000"
.LASF1591:
	.ascii	"comp_falloff\000"
.LASF196:
	.ascii	"SPR_CELL\000"
.LASF1726:
	.ascii	"fname\000"
.LASF197:
	.ascii	"SPR_CELP\000"
.LASF1180:
	.ascii	"S_HEARTCOL\000"
.LASF57:
	.ascii	"PU_STATIC\000"
.LASF1547:
	.ascii	"cheats\000"
.LASF1527:
	.ascii	"numlines\000"
.LASF1097:
	.ascii	"S_MEDI\000"
.LASF1104:
	.ascii	"S_PINV\000"
.LASF1715:
	.ascii	"keys\000"
.LASF1360:
	.ascii	"MT_INS\000"
.LASF1403:
	.ascii	"MT_MISC51\000"
.LASF1404:
	.ascii	"MT_MISC52\000"
.LASF1358:
	.ascii	"MT_INV\000"
.LASF1406:
	.ascii	"MT_MISC54\000"
.LASF1799:
	.ascii	"GNU C 4.9.2 -fpreprocessed -mword-relocations -marc"
	.ascii	"h=armv6k -mtune=mpcore -g -O2 -fomit-frame-pointer "
	.ascii	"-ffast-math\000"
.LASF315:
	.ascii	"S_MISSILEUP\000"
.LASF1409:
	.ascii	"MT_MISC57\000"
.LASF1410:
	.ascii	"MT_MISC58\000"
.LASF1411:
	.ascii	"MT_MISC59\000"
.LASF46:
	.ascii	"KEY_CPAD_UP\000"
.LASF13:
	.ascii	"uint16_t\000"
.LASF65:
	.ascii	"doom\000"
.LASF286:
	.ascii	"S_SGUNFLASH1\000"
.LASF287:
	.ascii	"S_SGUNFLASH2\000"
.LASF834:
	.ascii	"S_BOS2_RAISE1\000"
.LASF835:
	.ascii	"S_BOS2_RAISE2\000"
.LASF836:
	.ascii	"S_BOS2_RAISE3\000"
.LASF837:
	.ascii	"S_BOS2_RAISE4\000"
.LASF838:
	.ascii	"S_BOS2_RAISE5\000"
.LASF839:
	.ascii	"S_BOS2_RAISE6\000"
.LASF840:
	.ascii	"S_BOS2_RAISE7\000"
.LASF599:
	.ascii	"S_SKEL_PAIN\000"
.LASF1086:
	.ascii	"S_RKEY\000"
.LASF108:
	.ascii	"next\000"
.LASF268:
	.ascii	"S_PISTOLUP\000"
.LASF954:
	.ascii	"S_CYBER_DIE8\000"
.LASF1695:
	.ascii	"int_pitch\000"
.LASF1654:
	.ascii	"touching_thinglist\000"
.LASF1412:
	.ascii	"MT_MISC60\000"
.LASF1413:
	.ascii	"MT_MISC61\000"
.LASF1414:
	.ascii	"MT_MISC62\000"
.LASF1415:
	.ascii	"MT_MISC63\000"
.LASF1416:
	.ascii	"MT_MISC64\000"
.LASF1417:
	.ascii	"MT_MISC65\000"
.LASF1418:
	.ascii	"MT_MISC66\000"
.LASF1419:
	.ascii	"MT_MISC67\000"
.LASF383:
	.ascii	"S_EXPLODE1\000"
.LASF384:
	.ascii	"S_EXPLODE2\000"
.LASF385:
	.ascii	"S_EXPLODE3\000"
.LASF1523:
	.ascii	"PrevY\000"
.LASF574:
	.ascii	"S_TRACEEXP1\000"
.LASF575:
	.ascii	"S_TRACEEXP2\000"
.LASF576:
	.ascii	"S_TRACEEXP3\000"
.LASF962:
	.ascii	"S_PAIN_RUN5\000"
.LASF1064:
	.ascii	"S_BEXP\000"
.LASF963:
	.ascii	"S_PAIN_RUN6\000"
.LASF1556:
	.ascii	"extralight\000"
.LASF1745:
	.ascii	"gtable\000"
.LASF1181:
	.ascii	"S_HEARTCOL2\000"
.LASF360:
	.ascii	"S_RBALLX1\000"
.LASF1280:
	.ascii	"S_BSKUL_PAIN1\000"
.LASF1260:
	.ascii	"S_PLS1EXP\000"
.LASF1473:
	.ascii	"height\000"
.LASF1343:
	.ascii	"MT_TELEPORTMAN\000"
.LASF31:
	.ascii	"KEY_DUP\000"
.LASF1422:
	.ascii	"MT_MISC70\000"
.LASF141:
	.ascii	"SPR_IFOG\000"
.LASF1424:
	.ascii	"MT_MISC72\000"
.LASF1425:
	.ascii	"MT_MISC73\000"
.LASF1426:
	.ascii	"MT_MISC74\000"
.LASF1427:
	.ascii	"MT_MISC75\000"
.LASF1428:
	.ascii	"MT_MISC76\000"
.LASF1187:
	.ascii	"S_GREENTORCH2\000"
.LASF1188:
	.ascii	"S_GREENTORCH3\000"
.LASF1189:
	.ascii	"S_GREENTORCH4\000"
.LASF1790:
	.ascii	"W_FindNumFromName\000"
.LASF1028:
	.ascii	"S_COMMKEEN9\000"
.LASF677:
	.ascii	"S_CPOS_PAIN2\000"
.LASF1686:
	.ascii	"RF_MID_TILE\000"
.LASF900:
	.ascii	"S_BSPI_RUN10\000"
.LASF901:
	.ascii	"S_BSPI_RUN11\000"
.LASF902:
	.ascii	"S_BSPI_RUN12\000"
.LASF984:
	.ascii	"S_SSWV_RUN1\000"
.LASF985:
	.ascii	"S_SSWV_RUN2\000"
.LASF42:
	.ascii	"KEY_CSTICK_UP\000"
.LASF987:
	.ascii	"S_SSWV_RUN4\000"
.LASF988:
	.ascii	"S_SSWV_RUN5\000"
.LASF989:
	.ascii	"S_SSWV_RUN6\000"
.LASF990:
	.ascii	"S_SSWV_RUN7\000"
.LASF991:
	.ascii	"S_SSWV_RUN8\000"
.LASF1169:
	.ascii	"S_SKULLCOL\000"
.LASF1310:
	.ascii	"MT_FATSO\000"
.LASF41:
	.ascii	"KEY_CSTICK_LEFT\000"
.LASF714:
	.ascii	"S_TROO_DIE2\000"
.LASF715:
	.ascii	"S_TROO_DIE3\000"
.LASF716:
	.ascii	"S_TROO_DIE4\000"
.LASF717:
	.ascii	"S_TROO_DIE5\000"
.LASF1690:
	.ascii	"data\000"
.LASF1094:
	.ascii	"S_YSKULL\000"
.LASF1095:
	.ascii	"S_YSKULL2\000"
.LASF194:
	.ascii	"SPR_ROCK\000"
.LASF681:
	.ascii	"S_CPOS_DIE4\000"
.LASF1433:
	.ascii	"MT_MISC81\000"
.LASF1434:
	.ascii	"MT_MISC82\000"
.LASF1435:
	.ascii	"MT_MISC83\000"
.LASF672:
	.ascii	"S_CPOS_ATK1\000"
.LASF673:
	.ascii	"S_CPOS_ATK2\000"
.LASF674:
	.ascii	"S_CPOS_ATK3\000"
.LASF675:
	.ascii	"S_CPOS_ATK4\000"
.LASF1302:
	.ascii	"MT_PLAYER\000"
.LASF50:
	.ascii	"KEY_LEFT\000"
.LASF1102:
	.ascii	"S_SOUL5\000"
.LASF206:
	.ascii	"SPR_SHOT\000"
.LASF401:
	.ascii	"S_IFOG2\000"
.LASF402:
	.ascii	"S_IFOG3\000"
.LASF403:
	.ascii	"S_IFOG4\000"
.LASF404:
	.ascii	"S_IFOG5\000"
.LASF135:
	.ascii	"SPR_PLSE\000"
.LASF127:
	.ascii	"SPR_PLSF\000"
.LASF126:
	.ascii	"SPR_PLSG\000"
.LASF797:
	.ascii	"S_BOSS_PAIN2\000"
.LASF497:
	.ascii	"S_VILE_STND\000"
.LASF1025:
	.ascii	"S_COMMKEEN6\000"
.LASF1026:
	.ascii	"S_COMMKEEN7\000"
.LASF1027:
	.ascii	"S_COMMKEEN8\000"
.LASF134:
	.ascii	"SPR_PLSS\000"
.LASF876:
	.ascii	"S_SPID_PAIN2\000"
.LASF1499:
	.ascii	"dropoffz\000"
.LASF1474:
	.ascii	"mass\000"
.LASF1228:
	.ascii	"S_DOGS_STND\000"
.LASF247:
	.ascii	"SPR_POB1\000"
.LASF248:
	.ascii	"SPR_POB2\000"
.LASF1736:
	.ascii	"bufAdr\000"
.LASF1098:
	.ascii	"S_SOUL\000"
.LASF1730:
	.ascii	"modestr\000"
.LASF1108:
	.ascii	"S_PSTR\000"
.LASF1608:
	.ascii	"COMP_TOTAL\000"
.LASF940:
	.ascii	"S_CYBER_ATK1\000"
.LASF941:
	.ascii	"S_CYBER_ATK2\000"
.LASF942:
	.ascii	"S_CYBER_ATK3\000"
.LASF943:
	.ascii	"S_CYBER_ATK4\000"
.LASF944:
	.ascii	"S_CYBER_ATK5\000"
.LASF945:
	.ascii	"S_CYBER_ATK6\000"
.LASF1135:
	.ascii	"S_BFUG\000"
.LASF173:
	.ascii	"SPR_FCAN\000"
.LASF618:
	.ascii	"S_FATT_STND\000"
.LASF1055:
	.ascii	"S_BRAINEXPLODE1\000"
.LASF1056:
	.ascii	"S_BRAINEXPLODE2\000"
.LASF1057:
	.ascii	"S_BRAINEXPLODE3\000"
.LASF1714:
	.ascii	"touch\000"
.LASF339:
	.ascii	"S_BFGUP\000"
.LASF1505:
	.ascii	"intflags\000"
.LASF178:
	.ascii	"SPR_YKEY\000"
.LASF1563:
	.ascii	"m_thing\000"
.LASF726:
	.ascii	"S_TROO_RAISE1\000"
.LASF727:
	.ascii	"S_TROO_RAISE2\000"
.LASF728:
	.ascii	"S_TROO_RAISE3\000"
.LASF729:
	.ascii	"S_TROO_RAISE4\000"
.LASF730:
	.ascii	"S_TROO_RAISE5\000"
.LASF1139:
	.ascii	"S_PLAS\000"
.LASF1021:
	.ascii	"S_COMMKEEN2\000"
.LASF1022:
	.ascii	"S_COMMKEEN3\000"
.LASF1023:
	.ascii	"S_COMMKEEN4\000"
.LASF1024:
	.ascii	"S_COMMKEEN5\000"
.LASF405:
	.ascii	"S_PLAY\000"
.LASF971:
	.ascii	"S_PAIN_DIE2\000"
.LASF972:
	.ascii	"S_PAIN_DIE3\000"
.LASF973:
	.ascii	"S_PAIN_DIE4\000"
.LASF974:
	.ascii	"S_PAIN_DIE5\000"
.LASF975:
	.ascii	"S_PAIN_DIE6\000"
.LASF1313:
	.ascii	"MT_TROOP\000"
.LASF526:
	.ascii	"S_VILE_PAIN2\000"
.LASF1776:
	.ascii	"hidTouchRead\000"
.LASF654:
	.ascii	"S_FATT_RAISE1\000"
.LASF83:
	.ascii	"wp_plasma\000"
.LASF656:
	.ascii	"S_FATT_RAISE3\000"
.LASF657:
	.ascii	"S_FATT_RAISE4\000"
.LASF658:
	.ascii	"S_FATT_RAISE5\000"
.LASF659:
	.ascii	"S_FATT_RAISE6\000"
.LASF660:
	.ascii	"S_FATT_RAISE7\000"
.LASF661:
	.ascii	"S_FATT_RAISE8\000"
.LASF1518:
	.ascii	"lastenemy\000"
.LASF370:
	.ascii	"S_ROCKET\000"
.LASF1334:
	.ascii	"MT_HEADSHOT\000"
.LASF1564:
	.ascii	"m_tprev\000"
.LASF1655:
	.ascii	"linecount\000"
.LASF1650:
	.ascii	"heightsec\000"
.LASF1670:
	.ascii	"sidenum\000"
.LASF923:
	.ascii	"S_ARACH_PLAZ\000"
.LASF1162:
	.ascii	"S_STALAGTITE\000"
.LASF764:
	.ascii	"S_HEAD_PAIN2\000"
.LASF765:
	.ascii	"S_HEAD_PAIN3\000"
.LASF1335:
	.ascii	"MT_ROCKET\000"
.LASF1278:
	.ascii	"S_BSKUL_ATK2\000"
.LASF54:
	.ascii	"byte\000"
.LASF1722:
	.ascii	"I_StartTic\000"
.LASF1768:
	.ascii	"out_buffer\000"
.LASF1614:
	.ascii	"LO_WARN\000"
.LASF76:
	.ascii	"it_redskull\000"
.LASF1341:
	.ascii	"MT_TFOG\000"
.LASF473:
	.ascii	"S_SPOS_ATK1\000"
.LASF474:
	.ascii	"S_SPOS_ATK2\000"
.LASF475:
	.ascii	"S_SPOS_ATK3\000"
.LASF410:
	.ascii	"S_PLAY_ATK1\000"
.LASF411:
	.ascii	"S_PLAY_ATK2\000"
.LASF519:
	.ascii	"S_VILE_ATK9\000"
.LASF161:
	.ascii	"SPR_APLS\000"
.LASF60:
	.ascii	"PU_LEVEL\000"
.LASF440:
	.ascii	"S_POSS_ATK1\000"
.LASF1662:
	.ascii	"ceilinglightsec\000"
.LASF1755:
	.ascii	"finesine\000"
.LASF1548:
	.ascii	"refire\000"
.LASF1588:
	.ascii	"comp_doorlight\000"
.LASF1629:
	.ascii	"event_t\000"
.LASF1191:
	.ascii	"S_REDTORCH2\000"
.LASF1192:
	.ascii	"S_REDTORCH3\000"
.LASF1193:
	.ascii	"S_REDTORCH4\000"
.LASF700:
	.ascii	"S_TROO_RUN1\000"
.LASF701:
	.ascii	"S_TROO_RUN2\000"
.LASF702:
	.ascii	"S_TROO_RUN3\000"
.LASF703:
	.ascii	"S_TROO_RUN4\000"
.LASF704:
	.ascii	"S_TROO_RUN5\000"
.LASF705:
	.ascii	"S_TROO_RUN6\000"
.LASF706:
	.ascii	"S_TROO_RUN7\000"
.LASF707:
	.ascii	"S_TROO_RUN8\000"
.LASF1622:
	.ascii	"ev_keyup\000"
.LASF152:
	.ascii	"SPR_CPOS\000"
.LASF615:
	.ascii	"S_FATSHOTX1\000"
.LASF616:
	.ascii	"S_FATSHOTX2\000"
.LASF617:
	.ascii	"S_FATSHOTX3\000"
.LASF695:
	.ascii	"S_CPOS_RAISE5\000"
.LASF696:
	.ascii	"S_CPOS_RAISE6\000"
.LASF697:
	.ascii	"S_CPOS_RAISE7\000"
.LASF1617:
	.ascii	"LO_DEBUG\000"
.LASF78:
	.ascii	"wp_fist\000"
.LASF1467:
	.ascii	"missilestate\000"
.LASF182:
	.ascii	"SPR_STIM\000"
.LASF1742:
	.ascii	"pplump\000"
.LASF284:
	.ascii	"S_SGUN8\000"
.LASF731:
	.ascii	"S_SARG_STND\000"
.LASF956:
	.ascii	"S_CYBER_DIE10\000"
.LASF132:
	.ascii	"SPR_BAL1\000"
.LASF133:
	.ascii	"SPR_BAL2\000"
.LASF155:
	.ascii	"SPR_BAL7\000"
.LASF1504:
	.ascii	"info\000"
.LASF1150:
	.ascii	"S_HEADSONSTICK\000"
.LASF1445:
	.ascii	"MT_STEALTHHEAD\000"
.LASF1498:
	.ascii	"ceilingz\000"
.LASF1724:
	.ascii	"I_StartFrame\000"
.LASF607:
	.ascii	"S_SKEL_RAISE1\000"
.LASF120:
	.ascii	"SPR_SHT2\000"
.LASF1448:
	.ascii	"MT_STEALTHKNIGHT\000"
.LASF261:
	.ascii	"S_PUNCH1\000"
.LASF262:
	.ascii	"S_PUNCH2\000"
.LASF263:
	.ascii	"S_PUNCH3\000"
.LASF264:
	.ascii	"S_PUNCH4\000"
.LASF265:
	.ascii	"S_PUNCH5\000"
.LASF624:
	.ascii	"S_FATT_RUN5\000"
.LASF260:
	.ascii	"S_PUNCHUP\000"
.LASF877:
	.ascii	"S_SPID_DIE1\000"
.LASF628:
	.ascii	"S_FATT_RUN9\000"
.LASF879:
	.ascii	"S_SPID_DIE3\000"
.LASF880:
	.ascii	"S_SPID_DIE4\000"
.LASF119:
	.ascii	"SPR_SHTF\000"
.LASF115:
	.ascii	"SPR_SHTG\000"
.LASF399:
	.ascii	"S_IFOG01\000"
.LASF400:
	.ascii	"S_IFOG02\000"
.LASF885:
	.ascii	"S_SPID_DIE9\000"
.LASF1279:
	.ascii	"S_BSKUL_ATK3\000"
.LASF1805:
	.ascii	"V_GetMode\000"
.LASF1127:
	.ascii	"S_AMMO\000"
.LASF1709:
	.ascii	"ns_prboom\000"
.LASF1623:
	.ascii	"ev_mouse\000"
.LASF94:
	.ascii	"NUMAMMO\000"
.LASF1762:
	.ascii	"default_videomode\000"
.LASF958:
	.ascii	"S_PAIN_RUN1\000"
.LASF959:
	.ascii	"S_PAIN_RUN2\000"
.LASF960:
	.ascii	"S_PAIN_RUN3\000"
.LASF961:
	.ascii	"S_PAIN_RUN4\000"
.LASF241:
	.ascii	"SPR_HDB1\000"
.LASF242:
	.ascii	"SPR_HDB2\000"
.LASF243:
	.ascii	"SPR_HDB3\000"
.LASF244:
	.ascii	"SPR_HDB4\000"
.LASF245:
	.ascii	"SPR_HDB5\000"
.LASF246:
	.ascii	"SPR_HDB6\000"
.LASF1303:
	.ascii	"MT_POSSESSED\000"
.LASF293:
	.ascii	"S_DSGUN3\000"
.LASF294:
	.ascii	"S_DSGUN4\000"
.LASF1486:
	.ascii	"type\000"
.LASF313:
	.ascii	"S_MISSILE\000"
.LASF1141:
	.ascii	"S_SHOT2\000"
.LASF1208:
	.ascii	"S_HANGTLOOKDN\000"
.LASF1615:
	.ascii	"LO_ERROR\000"
.LASF1507:
	.ascii	"movedir\000"
.LASF685:
	.ascii	"S_CPOS_XDIE1\000"
.LASF4:
	.ascii	"__uint16_t\000"
.LASF1587:
	.ascii	"comp_blazing\000"
.LASF1784:
	.ascii	"V_InitMode\000"
.LASF1718:
	.ascii	"I_CalculateRes\000"
.LASF105:
	.ascii	"actionf_t\000"
.LASF202:
	.ascii	"SPR_MGUN\000"
.LASF1315:
	.ascii	"MT_SHADOWS\000"
.LASF588:
	.ascii	"S_SKEL_RUN10\000"
.LASF589:
	.ascii	"S_SKEL_RUN11\000"
.LASF590:
	.ascii	"S_SKEL_RUN12\000"
.LASF256:
	.ascii	"S_NULL\000"
.LASF58:
	.ascii	"PU_SOUND\000"
.LASF1798:
	.ascii	"atexit\000"
.LASF798:
	.ascii	"S_BOSS_DIE1\000"
.LASF799:
	.ascii	"S_BOSS_DIE2\000"
.LASF800:
	.ascii	"S_BOSS_DIE3\000"
.LASF801:
	.ascii	"S_BOSS_DIE4\000"
.LASF802:
	.ascii	"S_BOSS_DIE5\000"
.LASF803:
	.ascii	"S_BOSS_DIE6\000"
.LASF804:
	.ascii	"S_BOSS_DIE7\000"
.LASF968:
	.ascii	"S_PAIN_PAIN\000"
.LASF337:
	.ascii	"S_BFG\000"
.LASF1731:
	.ascii	"mode\000"
.LASF1465:
	.ascii	"painsound\000"
.LASF1612:
	.ascii	"LO_INFO\000"
.LASF1581:
	.ascii	"player_t\000"
.LASF1666:
	.ascii	"special\000"
.LASF983:
	.ascii	"S_SSWV_STND2\000"
.LASF203:
	.ascii	"SPR_CSAW\000"
.LASF1118:
	.ascii	"S_PMAP\000"
.LASF1565:
	.ascii	"m_tnext\000"
.LASF1124:
	.ascii	"S_PVIS\000"
.LASF338:
	.ascii	"S_BFGDOWN\000"
.LASF1327:
	.ascii	"MT_BOSSBRAIN\000"
.LASF149:
	.ascii	"SPR_SKEL\000"
.LASF333:
	.ascii	"S_PLASMA1\000"
.LASF334:
	.ascii	"S_PLASMA2\000"
.LASF1751:
	.ascii	"newpal\000"
.LASF45:
	.ascii	"KEY_CPAD_LEFT\000"
.LASF1198:
	.ascii	"S_GTORCHSHRT\000"
.LASF1456:
	.ascii	"doomednum\000"
.LASF1528:
	.ascii	"firstline\000"
.LASF1132:
	.ascii	"S_SHEL\000"
.LASF889:
	.ascii	"S_BSPI_STND2\000"
.LASF1603:
	.ascii	"comp_sound\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF147:
	.ascii	"SPR_FATB\000"
.LASF1621:
	.ascii	"ev_keydown\000"
.LASF254:
	.ascii	"NUMSPRITES\000"
.LASF1229:
	.ascii	"S_DOGS_STND2\000"
.LASF1743:
	.ascii	"gtlump\000"
.LASF372:
	.ascii	"S_BFGSHOT2\000"
.LASF151:
	.ascii	"SPR_FATT\000"
.LASF1099:
	.ascii	"S_SOUL2\000"
.LASF1100:
	.ascii	"S_SOUL3\000"
.LASF1101:
	.ascii	"S_SOUL4\000"
.LASF252:
	.ascii	"SPR_TNT1\000"
.LASF1103:
	.ascii	"S_SOUL6\000"
.LASF859:
	.ascii	"S_SPID_RUN1\000"
.LASF860:
	.ascii	"S_SPID_RUN2\000"
.LASF861:
	.ascii	"S_SPID_RUN3\000"
.LASF862:
	.ascii	"S_SPID_RUN4\000"
.LASF863:
	.ascii	"S_SPID_RUN5\000"
.LASF864:
	.ascii	"S_SPID_RUN6\000"
.LASF865:
	.ascii	"S_SPID_RUN7\000"
.LASF866:
	.ascii	"S_SPID_RUN8\000"
.LASF867:
	.ascii	"S_SPID_RUN9\000"
.LASF1066:
	.ascii	"S_BEXP3\000"
.LASF66:
	.ascii	"doom2\000"
.LASF1727:
	.ascii	"I_SetRes\000"
.LASF1248:
	.ascii	"S_DOGS_DIE6\000"
.LASF1706:
	.ascii	"ns_flats\000"
.LASF1155:
	.ascii	"S_DEADSTICK\000"
.LASF1557:
	.ascii	"fixedcolormap\000"
.LASF1658:
	.ascii	"floor_yoffs\000"
.LASF1542:
	.ascii	"weaponowned\000"
.LASF1329:
	.ascii	"MT_BOSSTARGET\000"
.LASF1344:
	.ascii	"MT_EXTRABFG\000"
.LASF445:
	.ascii	"S_POSS_DIE1\000"
.LASF446:
	.ascii	"S_POSS_DIE2\000"
.LASF447:
	.ascii	"S_POSS_DIE3\000"
.LASF448:
	.ascii	"S_POSS_DIE4\000"
.LASF449:
	.ascii	"S_POSS_DIE5\000"
.LASF275:
	.ascii	"S_SGUNDOWN\000"
.LASF122:
	.ascii	"SPR_CHGF\000"
.LASF121:
	.ascii	"SPR_CHGG\000"
.LASF926:
	.ascii	"S_ARACH_PLEX2\000"
.LASF927:
	.ascii	"S_ARACH_PLEX3\000"
.LASF928:
	.ascii	"S_ARACH_PLEX4\000"
.LASF929:
	.ascii	"S_ARACH_PLEX5\000"
.LASF670:
	.ascii	"S_CPOS_RUN7\000"
.LASF1272:
	.ascii	"S_BSKUL_STND\000"
.LASF1510:
	.ascii	"target\000"
.LASF232:
	.ascii	"SPR_CEYE\000"
.LASF1258:
	.ascii	"S_PLS1BALL\000"
.LASF976:
	.ascii	"S_PAIN_RAISE1\000"
.LASF977:
	.ascii	"S_PAIN_RAISE2\000"
.LASF978:
	.ascii	"S_PAIN_RAISE3\000"
.LASF979:
	.ascii	"S_PAIN_RAISE4\000"
.LASF980:
	.ascii	"S_PAIN_RAISE5\000"
.LASF613:
	.ascii	"S_FATSHOT1\000"
.LASF614:
	.ascii	"S_FATSHOT2\000"
.LASF1712:
	.ascii	"name\000"
.LASF1681:
	.ascii	"ST_VERTICAL\000"
.LASF189:
	.ascii	"SPR_SUIT\000"
.LASF841:
	.ascii	"S_SKULL_STND\000"
.LASF1716:
	.ascii	"held\000"
.LASF875:
	.ascii	"S_SPID_PAIN\000"
.LASF1454:
	.ascii	"NUMMOBJTYPES\000"
.LASF1582:
	.ascii	"comp_telefrag\000"
.LASF171:
	.ascii	"SPR_BAR1\000"
.LASF288:
	.ascii	"S_DSGUN\000"
.LASF1167:
	.ascii	"S_CANDLESTIK\000"
.LASF100:
	.ascii	"pw_allmap\000"
.LASF1292:
	.ascii	"NUMSTATES\000"
.LASF353:
	.ascii	"S_TBALL1\000"
.LASF354:
	.ascii	"S_TBALL2\000"
.LASF567:
	.ascii	"S_SMOKE1\000"
.LASF568:
	.ascii	"S_SMOKE2\000"
.LASF569:
	.ascii	"S_SMOKE3\000"
.LASF570:
	.ascii	"S_SMOKE4\000"
.LASF571:
	.ascii	"S_SMOKE5\000"
.LASF790:
	.ascii	"S_BOSS_RUN6\000"
.LASF791:
	.ascii	"S_BOSS_RUN7\000"
.LASF792:
	.ascii	"S_BOSS_RUN8\000"
.LASF154:
	.ascii	"SPR_HEAD\000"
.LASF1616:
	.ascii	"LO_FATAL\000"
.LASF1495:
	.ascii	"bprev\000"
.LASF215:
	.ascii	"SPR_POL1\000"
.LASF211:
	.ascii	"SPR_POL2\000"
.LASF214:
	.ascii	"SPR_POL3\000"
.LASF213:
	.ascii	"SPR_POL4\000"
.LASF212:
	.ascii	"SPR_POL5\000"
.LASF216:
	.ascii	"SPR_POL6\000"
.LASF1062:
	.ascii	"S_BAR1\000"
.LASF1779:
	.ascii	"hidKeysUp\000"
.LASF1345:
	.ascii	"MT_MISC0\000"
.LASF1148:
	.ascii	"S_DEADTORSO\000"
.LASF290:
	.ascii	"S_DSGUNUP\000"
.LASF1457:
	.ascii	"spawnstate\000"
.LASF1748:
	.ascii	"titlebuffer\000"
.LASF1676:
	.ascii	"tranlump\000"
.LASF1759:
	.ascii	"players\000"
.LASF1732:
	.ascii	"I_UpdateVideoMode\000"
.LASF699:
	.ascii	"S_TROO_STND2\000"
.LASF1219:
	.ascii	"S_TECH2LAMP\000"
.LASF48:
	.ascii	"KEY_UP\000"
.LASF1331:
	.ascii	"MT_SPAWNFIRE\000"
.LASF1306:
	.ascii	"MT_FIRE\000"
.LASF1298:
	.ascii	"nextstate\000"
.LASF1389:
	.ascii	"MT_MISC37\000"
.LASF201:
	.ascii	"SPR_BFUG\000"
.LASF1719:
	.ascii	"D_PostEvent\000"
.LASF1651:
	.ascii	"bottommap\000"
.LASF796:
	.ascii	"S_BOSS_PAIN\000"
.LASF165:
	.ascii	"SPR_SSWV\000"
.LASF358:
	.ascii	"S_RBALL1\000"
.LASF359:
	.ascii	"S_RBALL2\000"
.LASF1163:
	.ascii	"S_TALLGRNCOL\000"
.LASF1515:
	.ascii	"lastlook\000"
.LASF1740:
	.ascii	"cachedgamma\000"
.LASF1578:
	.ascii	"PST_DEAD\000"
.LASF1580:
	.ascii	"playerstate_t\000"
.LASF1152:
	.ascii	"S_HEADONASTICK\000"
.LASF1513:
	.ascii	"gear\000"
.LASF1694:
	.ascii	"short_pitch\000"
.LASF432:
	.ascii	"S_POSS_RUN1\000"
.LASF374:
	.ascii	"S_BFGLAND2\000"
.LASF375:
	.ascii	"S_BFGLAND3\000"
.LASF376:
	.ascii	"S_BFGLAND4\000"
.LASF377:
	.ascii	"S_BFGLAND5\000"
.LASF378:
	.ascii	"S_BFGLAND6\000"
.LASF438:
	.ascii	"S_POSS_RUN7\000"
.LASF439:
	.ascii	"S_POSS_RUN8\000"
.LASF421:
	.ascii	"S_PLAY_XDIE1\000"
.LASF422:
	.ascii	"S_PLAY_XDIE2\000"
.LASF423:
	.ascii	"S_PLAY_XDIE3\000"
.LASF424:
	.ascii	"S_PLAY_XDIE4\000"
.LASF425:
	.ascii	"S_PLAY_XDIE5\000"
.LASF426:
	.ascii	"S_PLAY_XDIE6\000"
.LASF427:
	.ascii	"S_PLAY_XDIE7\000"
.LASF428:
	.ascii	"S_PLAY_XDIE8\000"
.LASF429:
	.ascii	"S_PLAY_XDIE9\000"
.LASF827:
	.ascii	"S_BOS2_DIE1\000"
.LASF828:
	.ascii	"S_BOS2_DIE2\000"
.LASF829:
	.ascii	"S_BOS2_DIE3\000"
.LASF830:
	.ascii	"S_BOS2_DIE4\000"
.LASF831:
	.ascii	"S_BOS2_DIE5\000"
.LASF832:
	.ascii	"S_BOS2_DIE6\000"
.LASF833:
	.ascii	"S_BOS2_DIE7\000"
.LASF1477:
	.ascii	"flags\000"
.LASF753:
	.ascii	"S_SARG_RAISE2\000"
.LASF397:
	.ascii	"S_TFOG10\000"
.LASF755:
	.ascii	"S_SARG_RAISE4\000"
.LASF450:
	.ascii	"S_POSS_XDIE1\000"
.LASF451:
	.ascii	"S_POSS_XDIE2\000"
.LASF452:
	.ascii	"S_POSS_XDIE3\000"
.LASF453:
	.ascii	"S_POSS_XDIE4\000"
.LASF454:
	.ascii	"S_POSS_XDIE5\000"
.LASF455:
	.ascii	"S_POSS_XDIE6\000"
.LASF456:
	.ascii	"S_POSS_XDIE7\000"
.LASF90:
	.ascii	"am_clip\000"
.LASF458:
	.ascii	"S_POSS_XDIE9\000"
.LASF1151:
	.ascii	"S_GIBS\000"
.LASF766:
	.ascii	"S_HEAD_DIE1\000"
.LASF767:
	.ascii	"S_HEAD_DIE2\000"
.LASF768:
	.ascii	"S_HEAD_DIE3\000"
.LASF769:
	.ascii	"S_HEAD_DIE4\000"
.LASF770:
	.ascii	"S_HEAD_DIE5\000"
.LASF771:
	.ascii	"S_HEAD_DIE6\000"
.LASF619:
	.ascii	"S_FATT_STND2\000"
.LASF1142:
	.ascii	"S_COLU\000"
.LASF269:
	.ascii	"S_PISTOL1\000"
.LASF270:
	.ascii	"S_PISTOL2\000"
.LASF271:
	.ascii	"S_PISTOL3\000"
.LASF272:
	.ascii	"S_PISTOL4\000"
.LASF608:
	.ascii	"S_SKEL_RAISE2\000"
.LASF609:
	.ascii	"S_SKEL_RAISE3\000"
.LASF610:
	.ascii	"S_SKEL_RAISE4\000"
.LASF611:
	.ascii	"S_SKEL_RAISE5\000"
.LASF612:
	.ascii	"S_SKEL_RAISE6\000"
.LASF1171:
	.ascii	"S_BIGTREE\000"
.LASF1683:
	.ascii	"ST_NEGATIVE\000"
.LASF1081:
	.ascii	"S_BON2C\000"
.LASF1082:
	.ascii	"S_BON2D\000"
.LASF387:
	.ascii	"S_TFOG01\000"
.LASF388:
	.ascii	"S_TFOG02\000"
.LASF204:
	.ascii	"SPR_LAUN\000"
.LASF443:
	.ascii	"S_POSS_PAIN\000"
.LASF778:
	.ascii	"S_BRBALL1\000"
.LASF779:
	.ascii	"S_BRBALL2\000"
.LASF1733:
	.ascii	"I_UpdateNoBlit\000"
.LASF739:
	.ascii	"S_SARG_RUN7\000"
.LASF1323:
	.ascii	"MT_CYBORG\000"
.LASF1475:
	.ascii	"damage\000"
.LASF483:
	.ascii	"S_SPOS_XDIE1\000"
.LASF484:
	.ascii	"S_SPOS_XDIE2\000"
.LASF485:
	.ascii	"S_SPOS_XDIE3\000"
.LASF486:
	.ascii	"S_SPOS_XDIE4\000"
.LASF487:
	.ascii	"S_SPOS_XDIE5\000"
.LASF488:
	.ascii	"S_SPOS_XDIE6\000"
.LASF489:
	.ascii	"S_SPOS_XDIE7\000"
.LASF490:
	.ascii	"S_SPOS_XDIE8\000"
.LASF491:
	.ascii	"S_SPOS_XDIE9\000"
.LASF199:
	.ascii	"SPR_SBOX\000"
.LASF15:
	.ascii	"size_t\000"
.LASF1490:
	.ascii	"mobj_s\000"
.LASF1569:
	.ascii	"mobj_t\000"
.LASF1669:
	.ascii	"iLineID\000"
.LASF1667:
	.ascii	"oldspecial\000"
.LASF1084:
	.ascii	"S_BKEY\000"
.LASF12:
	.ascii	"uint8_t\000"
.LASF98:
	.ascii	"pw_invisibility\000"
.LASF1758:
	.ascii	"displayplayer\000"
.LASF1453:
	.ascii	"MT_STEALTHZOMBIE\000"
.LASF1675:
	.ascii	"specialdata\000"
.LASF170:
	.ascii	"SPR_ARM2\000"
.LASF1305:
	.ascii	"MT_VILE\000"
.LASF74:
	.ascii	"it_blueskull\000"
.LASF1642:
	.ascii	"soundorg\000"
.LASF1446:
	.ascii	"MT_STEALTHCHAINGUY\000"
.LASF17:
	.ascii	"GFX_TOP\000"
.LASF643:
	.ascii	"S_FATT_PAIN2\000"
.LASF169:
	.ascii	"SPR_ARM1\000"
.LASF1241:
	.ascii	"S_DOGS_PAIN\000"
.LASF578:
	.ascii	"S_SKEL_STND2\000"
.LASF772:
	.ascii	"S_HEAD_RAISE1\000"
.LASF931:
	.ascii	"S_CYBER_STND2\000"
.LASF1301:
	.ascii	"state_t\000"
.LASF775:
	.ascii	"S_HEAD_RAISE4\000"
.LASF1001:
	.ascii	"S_SSWV_DIE2\000"
.LASF1458:
	.ascii	"spawnhealth\000"
.LASF457:
	.ascii	"S_POSS_XDIE8\000"
.LASF1225:
	.ascii	"S_DETONATE\000"
.LASF1594:
	.ascii	"comp_pursuit\000"
.LASF1131:
	.ascii	"S_CELP\000"
.LASF1173:
	.ascii	"S_EVILEYE\000"
.LASF1199:
	.ascii	"S_GTORCHSHRT2\000"
.LASF1200:
	.ascii	"S_GTORCHSHRT3\000"
.LASF1201:
	.ascii	"S_GTORCHSHRT4\000"
.LASF1532:
	.ascii	"viewheight\000"
.LASF1494:
	.ascii	"bnext\000"
.LASF1611:
	.ascii	"mnact_full\000"
.LASF632:
	.ascii	"S_FATT_ATK1\000"
.LASF163:
	.ascii	"SPR_CYBR\000"
.LASF633:
	.ascii	"S_FATT_ATK2\000"
.LASF536:
	.ascii	"S_VILE_DIE10\000"
.LASF124:
	.ascii	"SPR_MISF\000"
.LASF123:
	.ascii	"SPR_MISG\000"
.LASF1744:
	.ascii	"palette\000"
.LASF136:
	.ascii	"SPR_MISL\000"
.LASF1090:
	.ascii	"S_BSKULL\000"
.LASF167:
	.ascii	"SPR_BBRN\000"
.LASF511:
	.ascii	"S_VILE_ATK1\000"
.LASF512:
	.ascii	"S_VILE_ATK2\000"
.LASF513:
	.ascii	"S_VILE_ATK3\000"
.LASF514:
	.ascii	"S_VILE_ATK4\000"
.LASF515:
	.ascii	"S_VILE_ATK5\000"
.LASF516:
	.ascii	"S_VILE_ATK6\000"
.LASF517:
	.ascii	"S_VILE_ATK7\000"
.LASF258:
	.ascii	"S_PUNCH\000"
.LASF37:
	.ascii	"KEY_ZL\000"
.LASF238:
	.ascii	"SPR_SMBT\000"
.LASF492:
	.ascii	"S_SPOS_RAISE1\000"
.LASF1396:
	.ascii	"MT_MISC44\000"
.LASF38:
	.ascii	"KEY_ZR\000"
.LASF1509:
	.ascii	"strafecount\000"
.LASF1238:
	.ascii	"S_DOGS_ATK1\000"
.LASF1239:
	.ascii	"S_DOGS_ATK2\000"
.LASF1240:
	.ascii	"S_DOGS_ATK3\000"
.LASF814:
	.ascii	"S_BOS2_RUN1\000"
.LASF815:
	.ascii	"S_BOS2_RUN2\000"
.LASF816:
	.ascii	"S_BOS2_RUN3\000"
.LASF817:
	.ascii	"S_BOS2_RUN4\000"
.LASF818:
	.ascii	"S_BOS2_RUN5\000"
.LASF819:
	.ascii	"S_BOS2_RUN6\000"
.LASF820:
	.ascii	"S_BOS2_RUN7\000"
.LASF821:
	.ascii	"S_BOS2_RUN8\000"
.LASF1665:
	.ascii	"lightlevel\000"
.LASF229:
	.ascii	"SPR_TRE1\000"
.LASF230:
	.ascii	"SPR_TRE2\000"
.LASF888:
	.ascii	"S_BSPI_STND\000"
.LASF1466:
	.ascii	"meleestate\000"
.LASF1543:
	.ascii	"ammo\000"
.LASF678:
	.ascii	"S_CPOS_DIE1\000"
.LASF237:
	.ascii	"SPR_TRED\000"
.LASF130:
	.ascii	"SPR_BLUD\000"
.LASF634:
	.ascii	"S_FATT_ATK3\000"
.LASF635:
	.ascii	"S_FATT_ATK4\000"
.LASF636:
	.ascii	"S_FATT_ATK5\000"
.LASF637:
	.ascii	"S_FATT_ATK6\000"
.LASF638:
	.ascii	"S_FATT_ATK7\000"
.LASF639:
	.ascii	"S_FATT_ATK8\000"
.LASF640:
	.ascii	"S_FATT_ATK9\000"
.LASF1702:
	.ascii	"VID_MODEMAX\000"
.LASF1449:
	.ascii	"MT_STEALTHIMP\000"
.LASF140:
	.ascii	"SPR_TFOG\000"
.LASF1281:
	.ascii	"S_BSKUL_PAIN2\000"
.LASF1282:
	.ascii	"S_BSKUL_PAIN3\000"
.LASF346:
	.ascii	"S_BLOOD1\000"
.LASF347:
	.ascii	"S_BLOOD2\000"
.LASF348:
	.ascii	"S_BLOOD3\000"
.LASF1754:
	.ascii	"SCREENPITCH\000"
.LASF1299:
	.ascii	"misc1\000"
.LASF1300:
	.ascii	"misc2\000"
.LASF1442:
	.ascii	"MT_STEALTHBABY\000"
.LASF1572:
	.ascii	"angleturn\000"
.LASF1737:
	.ascii	"I_InitInputs\000"
.LASF1138:
	.ascii	"S_LAUN\000"
.LASF1701:
	.ascii	"VID_MODEGL\000"
.LASF1224:
	.ascii	"S_GRENADE\000"
.LASF398:
	.ascii	"S_IFOG\000"
.LASF143:
	.ascii	"SPR_POSS\000"
.LASF148:
	.ascii	"SPR_FBXP\000"
.LASF1774:
	.ascii	"saveStringEnter\000"
.LASF947:
	.ascii	"S_CYBER_DIE1\000"
.LASF948:
	.ascii	"S_CYBER_DIE2\000"
.LASF949:
	.ascii	"S_CYBER_DIE3\000"
.LASF950:
	.ascii	"S_CYBER_DIE4\000"
.LASF951:
	.ascii	"S_CYBER_DIE5\000"
.LASF952:
	.ascii	"S_CYBER_DIE6\000"
.LASF953:
	.ascii	"S_CYBER_DIE7\000"
.LASF825:
	.ascii	"S_BOS2_PAIN\000"
.LASF955:
	.ascii	"S_CYBER_DIE9\000"
.LASF1516:
	.ascii	"spawnpoint\000"
.LASF1294:
	.ascii	"sprite\000"
.LASF1561:
	.ascii	"msecnode_s\000"
.LASF1370:
	.ascii	"MT_MISC21\000"
.LASF1372:
	.ascii	"MT_MISC23\000"
.LASF1649:
	.ascii	"nextsec\000"
.LASF1705:
	.ascii	"ns_sprites\000"
.LASF1648:
	.ascii	"prevsec\000"
.LASF1168:
	.ascii	"S_CANDELABRA\000"
.LASF508:
	.ascii	"S_VILE_RUN10\000"
.LASF39:
	.ascii	"KEY_TOUCH\000"
.LASF510:
	.ascii	"S_VILE_RUN12\000"
.LASF1128:
	.ascii	"S_ROCK\000"
.LASF277:
	.ascii	"S_SGUN1\000"
.LASF278:
	.ascii	"S_SGUN2\000"
.LASF279:
	.ascii	"S_SGUN3\000"
.LASF280:
	.ascii	"S_SGUN4\000"
.LASF281:
	.ascii	"S_SGUN5\000"
.LASF282:
	.ascii	"S_SGUN6\000"
.LASF283:
	.ascii	"S_SGUN7\000"
.LASF55:
	.ascii	"uint_64_t\000"
.LASF285:
	.ascii	"S_SGUN9\000"
.LASF253:
	.ascii	"SPR_DOGS\000"
.LASF274:
	.ascii	"S_SGUN\000"
.LASF1164:
	.ascii	"S_SHRTGRNCOL\000"
.LASF1792:
	.ascii	"W_CacheLumpNum\000"
.LASF1789:
	.ascii	"gfxGetFramebuffer\000"
.LASF849:
	.ascii	"S_SKULL_PAIN\000"
.LASF21:
	.ascii	"GFX_RIGHT\000"
.LASF1330:
	.ascii	"MT_SPAWNSHOT\000"
.LASF1778:
	.ascii	"hidKeysHeld\000"
.LASF1788:
	.ascii	"R_InitBuffer\000"
.LASF573:
	.ascii	"S_TRACER2\000"
.LASF1172:
	.ascii	"S_TECHPILLAR\000"
.LASF577:
	.ascii	"S_SKEL_STND\000"
.LASF1782:
	.ascii	"strcasecmp\000"
.LASF732:
	.ascii	"S_SARG_STND2\000"
.LASF1783:
	.ascii	"M_CheckParm\000"
.LASF1634:
	.ascii	"no_bottomtextures\000"
.LASF478:
	.ascii	"S_SPOS_DIE1\000"
.LASF479:
	.ascii	"S_SPOS_DIE2\000"
.LASF480:
	.ascii	"S_SPOS_DIE3\000"
.LASF481:
	.ascii	"S_SPOS_DIE4\000"
.LASF482:
	.ascii	"S_SPOS_DIE5\000"
.LASF1579:
	.ascii	"PST_REBORN\000"
.LASF63:
	.ascii	"PU_NEWBLOCK\000"
.LASF1763:
	.ascii	"myargc\000"
.LASF1207:
	.ascii	"S_HANGBNOBRAIN\000"
.LASF713:
	.ascii	"S_TROO_DIE1\000"
.LASF1291:
	.ascii	"S_MUSHROOM\000"
.LASF741:
	.ascii	"S_SARG_ATK1\000"
.LASF742:
	.ascii	"S_SARG_ATK2\000"
.LASF743:
	.ascii	"S_SARG_ATK3\000"
.LASF332:
	.ascii	"S_PLASMAUP\000"
.LASF1296:
	.ascii	"tics\000"
.LASF1512:
	.ascii	"pursuecount\000"
.LASF1088:
	.ascii	"S_YKEY\000"
.LASF1471:
	.ascii	"speed\000"
.LASF1671:
	.ascii	"bbox\000"
.LASF1764:
	.ascii	"myargv\000"
.LASF301:
	.ascii	"S_DSNR1\000"
.LASF970:
	.ascii	"S_PAIN_DIE1\000"
.LASF1637:
	.ascii	"nexttag\000"
.LASF500:
	.ascii	"S_VILE_RUN2\000"
.LASF1218:
	.ascii	"S_TECHLAMP4\000"
.LASF664:
	.ascii	"S_CPOS_RUN1\000"
.LASF665:
	.ascii	"S_CPOS_RUN2\000"
.LASF666:
	.ascii	"S_CPOS_RUN3\000"
.LASF667:
	.ascii	"S_CPOS_RUN4\000"
.LASF668:
	.ascii	"S_CPOS_RUN5\000"
.LASF669:
	.ascii	"S_CPOS_RUN6\000"
.LASF200:
	.ascii	"SPR_BPAK\000"
.LASF671:
	.ascii	"S_CPOS_RUN8\000"
.LASF1068:
	.ascii	"S_BEXP5\000"
.LASF1707:
	.ascii	"ns_colormaps\000"
.LASF1488:
	.ascii	"mapthing_t\000"
.LASF433:
	.ascii	"S_POSS_RUN2\000"
.LASF56:
	.ascii	"PU_FREE\000"
.LASF435:
	.ascii	"S_POSS_RUN4\000"
.LASF752:
	.ascii	"S_SARG_RAISE1\000"
.LASF436:
	.ascii	"S_POSS_RUN5\000"
.LASF754:
	.ascii	"S_SARG_RAISE3\000"
.LASF437:
	.ascii	"S_POSS_RUN6\000"
.LASF756:
	.ascii	"S_SARG_RAISE5\000"
.LASF757:
	.ascii	"S_SARG_RAISE6\000"
.LASF1780:
	.ascii	"V_GetModePixelDepth\000"
.LASF1405:
	.ascii	"MT_MISC53\000"
.LASF239:
	.ascii	"SPR_SMGT\000"
.LASF30:
	.ascii	"KEY_DLEFT\000"
.LASF380:
	.ascii	"S_BFGEXP2\000"
.LASF381:
	.ascii	"S_BFGEXP3\000"
.LASF382:
	.ascii	"S_BFGEXP4\000"
.LASF311:
	.ascii	"S_CHAINFLASH1\000"
.LASF312:
	.ascii	"S_CHAINFLASH2\000"
.LASF267:
	.ascii	"S_PISTOLDOWN\000"
.LASF1687:
	.ascii	"RF_BOT_TILE\000"
.LASF932:
	.ascii	"S_CYBER_RUN1\000"
.LASF933:
	.ascii	"S_CYBER_RUN2\000"
.LASF934:
	.ascii	"S_CYBER_RUN3\000"
.LASF935:
	.ascii	"S_CYBER_RUN4\000"
.LASF936:
	.ascii	"S_CYBER_RUN5\000"
.LASF937:
	.ascii	"S_CYBER_RUN6\000"
.LASF938:
	.ascii	"S_CYBER_RUN7\000"
.LASF939:
	.ascii	"S_CYBER_RUN8\000"
.LASF1738:
	.ascii	"I_UploadNewPalette\000"
.LASF1460:
	.ascii	"seesound\000"
.LASF1781:
	.ascii	"lprintf\000"
.LASF1119:
	.ascii	"S_PMAP2\000"
.LASF1120:
	.ascii	"S_PMAP3\000"
.LASF1121:
	.ascii	"S_PMAP4\000"
.LASF1122:
	.ascii	"S_PMAP5\000"
.LASF1123:
	.ascii	"S_PMAP6\000"
.LASF1554:
	.ascii	"bonuscount\000"
.LASF1765:
	.ascii	"use_doublebuffer\000"
.LASF850:
	.ascii	"S_SKULL_PAIN2\000"
.LASF1464:
	.ascii	"painchance\000"
.LASF676:
	.ascii	"S_CPOS_PAIN\000"
.LASF1636:
	.ascii	"ceilingheight\000"
.LASF153:
	.ascii	"SPR_SARG\000"
.LASF1387:
	.ascii	"MT_MISC35\000"
.LASF1521:
	.ascii	"touching_sectorlist\000"
.LASF981:
	.ascii	"S_PAIN_RAISE6\000"
.LASF1441:
	.ascii	"MT_DOGS\000"
.LASF1388:
	.ascii	"MT_MISC36\000"
.LASF785:
	.ascii	"S_BOSS_RUN1\000"
.LASF786:
	.ascii	"S_BOSS_RUN2\000"
.LASF787:
	.ascii	"S_BOSS_RUN3\000"
.LASF61:
	.ascii	"PU_LEVSPEC\000"
.LASF788:
	.ascii	"S_BOSS_RUN4\000"
.LASF789:
	.ascii	"S_BOSS_RUN5\000"
.LASF307:
	.ascii	"S_CHAINUP\000"
.LASF1770:
	.ascii	"weapon_index\000"
.LASF259:
	.ascii	"S_PUNCHDOWN\000"
.LASF1549:
	.ascii	"killcount\000"
.LASF1170:
	.ascii	"S_TORCHTREE\000"
.LASF982:
	.ascii	"S_SSWV_STND\000"
.LASF43:
	.ascii	"KEY_CSTICK_DOWN\000"
.LASF1029:
	.ascii	"S_COMMKEEN10\000"
.LASF1030:
	.ascii	"S_COMMKEEN11\000"
.LASF1031:
	.ascii	"S_COMMKEEN12\000"
.LASF946:
	.ascii	"S_CYBER_PAIN\000"
.LASF49:
	.ascii	"KEY_DOWN\000"
.LASF221:
	.ascii	"SPR_SMIT\000"
.LASF53:
	.ascii	"boolean\000"
.LASF468:
	.ascii	"S_SPOS_RUN4\000"
.LASF469:
	.ascii	"S_SPOS_RUN5\000"
.LASF158:
	.ascii	"SPR_SKUL\000"
.LASF471:
	.ascii	"S_SPOS_RUN7\000"
.LASF472:
	.ascii	"S_SPOS_RUN8\000"
.LASF1129:
	.ascii	"S_BROK\000"
.LASF1032:
	.ascii	"S_KEENPAIN\000"
.LASF1746:
	.ascii	"I_FinishUpdate\000"
.LASF1443:
	.ascii	"MT_STEALTHVILE\000"
.LASF1657:
	.ascii	"floor_xoffs\000"
.LASF925:
	.ascii	"S_ARACH_PLEX\000"
.LASF1186:
	.ascii	"S_GREENTORCH\000"
.LASF86:
	.ascii	"wp_supershotgun\000"
.LASF325:
	.ascii	"S_SAWDOWN\000"
.LASF1265:
	.ascii	"S_PLS2BALL\000"
.LASF1293:
	.ascii	"statenum_t\000"
.LASF1333:
	.ascii	"MT_TROOPSHOT\000"
.LASF1647:
	.ascii	"stairlock\000"
.LASF1318:
	.ascii	"MT_BRUISERSHOT\000"
.LASF1720:
	.ascii	"good\000"
.LASF1645:
	.ascii	"ceilingdata\000"
.LASF1576:
	.ascii	"ticcmd_t\000"
.LASF1438:
	.ascii	"MT_MISC86\000"
.LASF1480:
	.ascii	"ps_weapon\000"
.LASF413:
	.ascii	"S_PLAY_PAIN2\000"
.LASF1444:
	.ascii	"MT_STEALTHBRUISER\000"
.LASF808:
	.ascii	"S_BOSS_RAISE4\000"
.LASF809:
	.ascii	"S_BOSS_RAISE5\000"
.LASF1295:
	.ascii	"frame\000"
.LASF150:
	.ascii	"SPR_MANF\000"
.LASF663:
	.ascii	"S_CPOS_STND2\000"
.LASF476:
	.ascii	"S_SPOS_PAIN\000"
.LASF80:
	.ascii	"wp_shotgun\000"
.LASF1795:
	.ascii	"Z_Malloc\000"
.LASF444:
	.ascii	"S_POSS_PAIN2\000"
.LASF1339:
	.ascii	"MT_PUFF\000"
.LASF1723:
	.ascii	"I_ShutdownGraphics\000"
.LASF1589:
	.ascii	"comp_model\000"
.LASF16:
	.ascii	"sizetype\000"
.LASF316:
	.ascii	"S_MISSILE1\000"
.LASF317:
	.ascii	"S_MISSILE2\000"
.LASF318:
	.ascii	"S_MISSILE3\000"
.LASF692:
	.ascii	"S_CPOS_RAISE2\000"
.LASF693:
	.ascii	"S_CPOS_RAISE3\000"
.LASF694:
	.ascii	"S_CPOS_RAISE4\000"
.LASF1541:
	.ascii	"pendingweapon\000"
.LASF1136:
	.ascii	"S_MGUN\000"
.LASF1317:
	.ascii	"MT_BRUISER\000"
.LASF40:
	.ascii	"KEY_CSTICK_RIGHT\000"
.LASF1551:
	.ascii	"secretcount\000"
.LASF1455:
	.ascii	"mobjtype_t\000"
.LASF1469:
	.ascii	"xdeathstate\000"
.LASF1721:
	.ascii	"DS_Controls\000"
.LASF1536:
	.ascii	"powers\000"
.LASF845:
	.ascii	"S_SKULL_ATK1\000"
.LASF846:
	.ascii	"S_SKULL_ATK2\000"
.LASF847:
	.ascii	"S_SKULL_ATK3\000"
.LASF848:
	.ascii	"S_SKULL_ATK4\000"
.LASF826:
	.ascii	"S_BOS2_PAIN2\000"
.LASF5:
	.ascii	"short unsigned int\000"
.LASF1319:
	.ascii	"MT_KNIGHT\000"
.LASF1600:
	.ascii	"comp_zerotags\000"
.LASF0:
	.ascii	"signed char\000"
.LASF1571:
	.ascii	"sidemove\000"
.LASF1476:
	.ascii	"activesound\000"
.LASF477:
	.ascii	"S_SPOS_PAIN2\000"
.LASF1245:
	.ascii	"S_DOGS_DIE3\000"
.LASF641:
	.ascii	"S_FATT_ATK10\000"
.LASF1688:
	.ascii	"RF_IGNORE\000"
.LASF236:
	.ascii	"SPR_TGRN\000"
.LASF1786:
	.ascii	"V_FreeScreens\000"
.LASF1624:
	.ascii	"ev_joystick\000"
.LASF1364:
	.ascii	"MT_MEGA\000"
.LASF138:
	.ascii	"SPR_BFE1\000"
.LASF139:
	.ascii	"SPR_BFE2\000"
.LASF1643:
	.ascii	"thinglist\000"
.LASF1398:
	.ascii	"MT_MISC46\000"
.LASF1326:
	.ascii	"MT_KEEN\000"
.LASF1641:
	.ascii	"blockbox\000"
.LASF1042:
	.ascii	"S_BRAINEYE1\000"
.LASF698:
	.ascii	"S_TROO_STND\000"
.LASF645:
	.ascii	"S_FATT_DIE2\000"
.LASF336:
	.ascii	"S_PLASMAFLASH2\000"
.LASF89:
	.ascii	"weapontype_t\000"
.LASF1574:
	.ascii	"chatchar\000"
.LASF389:
	.ascii	"S_TFOG2\000"
.LASF390:
	.ascii	"S_TFOG3\000"
.LASF391:
	.ascii	"S_TFOG4\000"
.LASF392:
	.ascii	"S_TFOG5\000"
.LASF393:
	.ascii	"S_TFOG6\000"
.LASF394:
	.ascii	"S_TFOG7\000"
.LASF395:
	.ascii	"S_TFOG8\000"
.LASF396:
	.ascii	"S_TFOG9\000"
.LASF811:
	.ascii	"S_BOSS_RAISE7\000"
.LASF1545:
	.ascii	"attackdown\000"
.LASF114:
	.ascii	"SPR_TROO\000"
.LASF1703:
	.ascii	"video_mode_t\000"
.LASF1223:
	.ascii	"S_TNT1\000"
.LASF125:
	.ascii	"SPR_SAWG\000"
.LASF1729:
	.ascii	"I_GetModeFromString\000"
.LASF174:
	.ascii	"SPR_BON1\000"
.LASF175:
	.ascii	"SPR_BON2\000"
.LASF1684:
	.ascii	"slopetype_t\000"
.LASF73:
	.ascii	"it_redcard\000"
.LASF1165:
	.ascii	"S_TALLREDCOL\000"
.LASF1590:
	.ascii	"comp_god\000"
.LASF1483:
	.ascii	"state\000"
.LASF1140:
	.ascii	"S_SHOT\000"
.LASF996:
	.ascii	"S_SSWV_ATK5\000"
.LASF1145:
	.ascii	"S_BLOODYTWITCH2\000"
.LASF1146:
	.ascii	"S_BLOODYTWITCH3\000"
.LASF1147:
	.ascii	"S_BLOODYTWITCH4\000"
.LASF886:
	.ascii	"S_SPID_DIE10\000"
.LASF887:
	.ascii	"S_SPID_DIE11\000"
.LASF1537:
	.ascii	"cards\000"
.LASF231:
	.ascii	"SPR_ELEC\000"
.LASF1034:
	.ascii	"S_BRAIN\000"
.LASF1267:
	.ascii	"S_PLS2BALLX1\000"
.LASF1268:
	.ascii	"S_PLS2BALLX2\000"
.LASF1269:
	.ascii	"S_PLS2BALLX3\000"
.LASF1321:
	.ascii	"MT_SPIDER\000"
.LASF1117:
	.ascii	"S_SUIT\000"
.LASF129:
	.ascii	"SPR_BFGF\000"
.LASF128:
	.ascii	"SPR_BFGG\000"
.LASF1519:
	.ascii	"friction\000"
.LASF957:
	.ascii	"S_PAIN_STND\000"
.LASF373:
	.ascii	"S_BFGLAND\000"
.LASF1063:
	.ascii	"S_BAR2\000"
.LASF1230:
	.ascii	"S_DOGS_RUN1\000"
.LASF1231:
	.ascii	"S_DOGS_RUN2\000"
.LASF1232:
	.ascii	"S_DOGS_RUN3\000"
.LASF1233:
	.ascii	"S_DOGS_RUN4\000"
.LASF109:
	.ascii	"function\000"
.LASF1234:
	.ascii	"S_DOGS_RUN5\000"
.LASF1235:
	.ascii	"S_DOGS_RUN6\000"
.LASF91:
	.ascii	"am_shell\000"
.LASF1791:
	.ascii	"W_GetNumForName\000"
.LASF1503:
	.ascii	"validcount\000"
.LASF1757:
	.ascii	"menuactive\000"
.LASF1552:
	.ascii	"message\000"
.LASF111:
	.ascii	"cprev\000"
.LASF653:
	.ascii	"S_FATT_DIE10\000"
.LASF434:
	.ascii	"S_POSS_RUN3\000"
.LASF77:
	.ascii	"NUMCARDS\000"
.LASF1190:
	.ascii	"S_REDTORCH\000"
.LASF1804:
	.ascii	"V_DestroyUnusedTrueColorPalettes\000"
.LASF1337:
	.ascii	"MT_BFG\000"
.LASF1653:
	.ascii	"topmap\000"
.LASF18:
	.ascii	"GFX_BOTTOM\000"
.LASF145:
	.ascii	"SPR_VILE\000"
.LASF1717:
	.ascii	"event\000"
.LASF1340:
	.ascii	"MT_BLOOD\000"
.LASF266:
	.ascii	"S_PISTOL\000"
.LASF498:
	.ascii	"S_VILE_STND2\000"
.LASF1771:
	.ascii	"weapon_shotgun_cycled\000"
.LASF916:
	.ascii	"S_BSPI_RAISE1\000"
.LASF917:
	.ascii	"S_BSPI_RAISE2\000"
.LASF918:
	.ascii	"S_BSPI_RAISE3\000"
.LASF919:
	.ascii	"S_BSPI_RAISE4\000"
.LASF920:
	.ascii	"S_BSPI_RAISE5\000"
.LASF921:
	.ascii	"S_BSPI_RAISE6\000"
.LASF922:
	.ascii	"S_BSPI_RAISE7\000"
.LASF1500:
	.ascii	"momx\000"
.LASF1501:
	.ascii	"momy\000"
.LASF6:
	.ascii	"long int\000"
.LASF1005:
	.ascii	"S_SSWV_XDIE1\000"
.LASF1006:
	.ascii	"S_SSWV_XDIE2\000"
.LASF1007:
	.ascii	"S_SSWV_XDIE3\000"
.LASF1008:
	.ascii	"S_SSWV_XDIE4\000"
.LASF1009:
	.ascii	"S_SSWV_XDIE5\000"
.LASF1010:
	.ascii	"S_SSWV_XDIE6\000"
.LASF1011:
	.ascii	"S_SSWV_XDIE7\000"
.LASF1012:
	.ascii	"S_SSWV_XDIE8\000"
.LASF1013:
	.ascii	"S_SSWV_XDIE9\000"
.LASF303:
	.ascii	"S_DSGUNFLASH1\000"
.LASF304:
	.ascii	"S_DSGUNFLASH2\000"
.LASF1371:
	.ascii	"MT_MISC22\000"
.LASF1560:
	.ascii	"didsecret\000"
.LASF561:
	.ascii	"S_FIRE25\000"
.LASF655:
	.ascii	"S_FATT_RAISE2\000"
.LASF1407:
	.ascii	"MT_MISC55\000"
.LASF1533:
	.ascii	"deltaviewheight\000"
.LASF75:
	.ascii	"it_yellowskull\000"
.LASF1093:
	.ascii	"S_RSKULL2\000"
.LASF1517:
	.ascii	"tracer\000"
.LASF62:
	.ascii	"PU_CACHE\000"
.LASF868:
	.ascii	"S_SPID_RUN10\000"
.LASF869:
	.ascii	"S_SPID_RUN11\000"
.LASF870:
	.ascii	"S_SPID_RUN12\000"
.LASF1522:
	.ascii	"PrevX\000"
.LASF47:
	.ascii	"KEY_CPAD_DOWN\000"
.LASF1524:
	.ascii	"PrevZ\000"
.LASF1478:
	.ascii	"raisestate\000"
.LASF1440:
	.ascii	"MT_PULL\000"
.LASF1277:
	.ascii	"S_BSKUL_ATK1\000"
.LASF319:
	.ascii	"S_MISSILEFLASH1\000"
.LASF320:
	.ascii	"S_MISSILEFLASH2\000"
.LASF321:
	.ascii	"S_MISSILEFLASH3\000"
.LASF322:
	.ascii	"S_MISSILEFLASH4\000"
.LASF180:
	.ascii	"SPR_RSKU\000"
.LASF1607:
	.ascii	"COMP_NUM\000"
.LASF51:
	.ascii	"KEY_RIGHT\000"
.LASF106:
	.ascii	"think_t\000"
.LASF679:
	.ascii	"S_CPOS_DIE2\000"
.LASF680:
	.ascii	"S_CPOS_DIE3\000"
.LASF44:
	.ascii	"KEY_CPAD_RIGHT\000"
.LASF682:
	.ascii	"S_CPOS_DIE5\000"
.LASF683:
	.ascii	"S_CPOS_DIE6\000"
.LASF684:
	.ascii	"S_CPOS_DIE7\000"
.LASF1761:
	.ascii	"usegamma\000"
.LASF1125:
	.ascii	"S_PVIS2\000"
.LASF1785:
	.ascii	"hidScanInput\000"
.LASF1609:
	.ascii	"mnact_inactive\000"
.LASF1332:
	.ascii	"MT_BARREL\000"
.LASF1290:
	.ascii	"S_BSKUL_DIE8\000"
.LASF857:
	.ascii	"S_SPID_STND\000"
.LASF14:
	.ascii	"uint32_t\000"
.LASF629:
	.ascii	"S_FATT_RUN10\000"
.LASF630:
	.ascii	"S_FATT_RUN11\000"
.LASF631:
	.ascii	"S_FATT_RUN12\000"
.LASF1618:
	.ascii	"LO_ALWAYS\000"
.LASF1324:
	.ascii	"MT_PAIN\000"
.LASF1183:
	.ascii	"S_BLUETORCH2\000"
.LASF1479:
	.ascii	"mobjinfo_t\000"
.LASF1184:
	.ascii	"S_BLUETORCH3\000"
.LASF1185:
	.ascii	"S_BLUETORCH4\000"
.LASF240:
	.ascii	"SPR_SMRT\000"
.LASF344:
	.ascii	"S_BFGFLASH1\000"
.LASF345:
	.ascii	"S_BFGFLASH2\000"
.LASF878:
	.ascii	"S_SPID_DIE2\000"
.LASF27:
	.ascii	"KEY_SELECT\000"
.LASF157:
	.ascii	"SPR_BOS2\000"
.LASF881:
	.ascii	"S_SPID_DIE5\000"
.LASF882:
	.ascii	"S_SPID_DIE6\000"
.LASF883:
	.ascii	"S_SPID_DIE7\000"
.LASF884:
	.ascii	"S_SPID_DIE8\000"
.LASF1174:
	.ascii	"S_EVILEYE2\000"
.LASF1175:
	.ascii	"S_EVILEYE3\000"
.LASF1176:
	.ascii	"S_EVILEYE4\000"
.LASF349:
	.ascii	"S_PUFF1\000"
.LASF350:
	.ascii	"S_PUFF2\000"
.LASF351:
	.ascii	"S_PUFF3\000"
.LASF168:
	.ascii	"SPR_BOSF\000"
.LASF1656:
	.ascii	"lines\000"
.LASF1604:
	.ascii	"comp_666\000"
.LASF156:
	.ascii	"SPR_BOSS\000"
.LASF1336:
	.ascii	"MT_PLASMA\000"
.LASF903:
	.ascii	"S_BSPI_ATK1\000"
.LASF904:
	.ascii	"S_BSPI_ATK2\000"
.LASF905:
	.ascii	"S_BSPI_ATK3\000"
.LASF906:
	.ascii	"S_BSPI_ATK4\000"
.LASF1085:
	.ascii	"S_BKEY2\000"
.LASF87:
	.ascii	"NUMWEAPONS\000"
.LASF1242:
	.ascii	"S_DOGS_PAIN2\000"
.LASF890:
	.ascii	"S_BSPI_SIGHT\000"
.LASF8:
	.ascii	"long unsigned int\000"
.LASF1567:
	.ascii	"m_snext\000"
.LASF1036:
	.ascii	"S_BRAIN_DIE1\000"
.LASF1037:
	.ascii	"S_BRAIN_DIE2\000"
.LASF1038:
	.ascii	"S_BRAIN_DIE3\000"
.LASF1039:
	.ascii	"S_BRAIN_DIE4\000"
.LASF371:
	.ascii	"S_BFGSHOT\000"
.LASF1177:
	.ascii	"S_FLOATSKULL\000"
.LASF527:
	.ascii	"S_VILE_DIE1\000"
.LASF528:
	.ascii	"S_VILE_DIE2\000"
.LASF529:
	.ascii	"S_VILE_DIE3\000"
.LASF530:
	.ascii	"S_VILE_DIE4\000"
.LASF531:
	.ascii	"S_VILE_DIE5\000"
.LASF532:
	.ascii	"S_VILE_DIE6\000"
.LASF533:
	.ascii	"S_VILE_DIE7\000"
.LASF534:
	.ascii	"S_VILE_DIE8\000"
.LASF535:
	.ascii	"S_VILE_DIE9\000"
.LASF1553:
	.ascii	"damagecount\000"
.LASF1661:
	.ascii	"floorlightsec\000"
.LASF1596:
	.ascii	"comp_staylift\000"
.LASF209:
	.ascii	"SPR_SMT2\000"
.LASF1087:
	.ascii	"S_RKEY2\000"
.LASF1058:
	.ascii	"S_ARM1\000"
.LASF1060:
	.ascii	"S_ARM2\000"
.LASF1246:
	.ascii	"S_DOGS_DIE4\000"
.LASF1247:
	.ascii	"S_DOGS_DIE5\000"
.LASF1153:
	.ascii	"S_HEADCANDLES\000"
.LASF187:
	.ascii	"SPR_PINS\000"
.LASF783:
	.ascii	"S_BOSS_STND\000"
.LASF1803:
	.ascii	"W_CheckNumForName\000"
.LASF1796:
	.ascii	"gfxFlushBuffers\000"
.LASF763:
	.ascii	"S_HEAD_PAIN\000"
.LASF72:
	.ascii	"it_yellowcard\000"
.LASF1308:
	.ascii	"MT_TRACER\000"
.LASF644:
	.ascii	"S_FATT_DIE1\000"
.LASF24:
	.ascii	"char\000"
.LASF646:
	.ascii	"S_FATT_DIE3\000"
.LASF647:
	.ascii	"S_FATT_DIE4\000"
.LASF648:
	.ascii	"S_FATT_DIE5\000"
.LASF649:
	.ascii	"S_FATT_DIE6\000"
.LASF650:
	.ascii	"S_FATT_DIE7\000"
.LASF651:
	.ascii	"S_FATT_DIE8\000"
.LASF652:
	.ascii	"S_FATT_DIE9\000"
.LASF719:
	.ascii	"S_TROO_XDIE2\000"
.LASF720:
	.ascii	"S_TROO_XDIE3\000"
.LASF721:
	.ascii	"S_TROO_XDIE4\000"
.LASF722:
	.ascii	"S_TROO_XDIE5\000"
.LASF723:
	.ascii	"S_TROO_XDIE6\000"
.LASF724:
	.ascii	"S_TROO_XDIE7\000"
.LASF725:
	.ascii	"S_TROO_XDIE8\000"
.LASF192:
	.ascii	"SPR_CLIP\000"
.LASF1166:
	.ascii	"S_SHRTREDCOL\000"
.LASF110:
	.ascii	"cnext\000"
.LASF1209:
	.ascii	"S_HANGTSKULL\000"
.LASF1699:
	.ascii	"VID_MODE16\000"
.LASF1756:
	.ascii	"gamemission\000"
.LASF1741:
	.ascii	"num_pals\000"
.LASF1226:
	.ascii	"S_DETONATE2\000"
.LASF1227:
	.ascii	"S_DETONATE3\000"
.LASF102:
	.ascii	"NUMPOWERS\000"
.LASF1638:
	.ascii	"firsttag\000"
.LASF994:
	.ascii	"S_SSWV_ATK3\000"
.LASF995:
	.ascii	"S_SSWV_ATK4\000"
.LASF300:
	.ascii	"S_DSGUN10\000"
.LASF97:
	.ascii	"pw_strength\000"
.LASF1710:
	.ascii	"unused\000"
.LASF226:
	.ascii	"SPR_CAND\000"
.LASF1775:
	.ascii	"pal3ds\000"
.LASF1314:
	.ascii	"MT_SERGEANT\000"
.LASF112:
	.ascii	"references\000"
.LASF1156:
	.ascii	"S_LIVESTICK\000"
.LASF1096:
	.ascii	"S_STIM\000"
.LASF1593:
	.ascii	"comp_skymap\000"
.LASF92:
	.ascii	"am_cell\000"
.LASF71:
	.ascii	"it_bluecard\000"
.LASF1753:
	.ascii	"SCREENHEIGHT\000"
.LASF1497:
	.ascii	"floorz\000"
.LASF759:
	.ascii	"S_HEAD_RUN1\000"
.LASF414:
	.ascii	"S_PLAY_DIE1\000"
.LASF415:
	.ascii	"S_PLAY_DIE2\000"
.LASF416:
	.ascii	"S_PLAY_DIE3\000"
.LASF417:
	.ascii	"S_PLAY_DIE4\000"
.LASF418:
	.ascii	"S_PLAY_DIE5\000"
.LASF419:
	.ascii	"S_PLAY_DIE6\000"
.LASF420:
	.ascii	"S_PLAY_DIE7\000"
.LASF430:
	.ascii	"S_POSS_STND\000"
.LASF1256:
	.ascii	"S_OLDBFG42\000"
.LASF1257:
	.ascii	"S_OLDBFG43\000"
.LASF386:
	.ascii	"S_TFOG\000"
.LASF1392:
	.ascii	"MT_MISC40\000"
.LASF1393:
	.ascii	"MT_MISC41\000"
.LASF1525:
	.ascii	"subsector_s\000"
.LASF746:
	.ascii	"S_SARG_DIE1\000"
.LASF1626:
	.ascii	"data1\000"
.LASF747:
	.ascii	"S_SARG_DIE2\000"
.LASF1627:
	.ascii	"data2\000"
.LASF748:
	.ascii	"S_SARG_DIE3\000"
.LASF1628:
	.ascii	"data3\000"
.LASF749:
	.ascii	"S_SARG_DIE4\000"
.LASF1047:
	.ascii	"S_SPAWNFIRE1\000"
.LASF1048:
	.ascii	"S_SPAWNFIRE2\000"
.LASF1049:
	.ascii	"S_SPAWNFIRE3\000"
.LASF1050:
	.ascii	"S_SPAWNFIRE4\000"
.LASF1051:
	.ascii	"S_SPAWNFIRE5\000"
.LASF1052:
	.ascii	"S_SPAWNFIRE6\000"
.LASF1053:
	.ascii	"S_SPAWNFIRE7\000"
.LASF1054:
	.ascii	"S_SPAWNFIRE8\000"
.LASF718:
	.ascii	"S_TROO_XDIE1\000"
.LASF1573:
	.ascii	"consistancy\000"
.LASF1632:
	.ascii	"iSectorID\000"
.LASF1526:
	.ascii	"sector\000"
.LASF1211:
	.ascii	"S_HANGTNOBRAIN\000"
.LASF366:
	.ascii	"S_PLASEXP2\000"
.LASF367:
	.ascii	"S_PLASEXP3\000"
.LASF368:
	.ascii	"S_PLASEXP4\000"
.LASF369:
	.ascii	"S_PLASEXP5\000"
.LASF84:
	.ascii	"wp_bfg\000"
.LASF1195:
	.ascii	"S_BTORCHSHRT2\000"
.LASF1196:
	.ascii	"S_BTORCHSHRT3\000"
.LASF1197:
	.ascii	"S_BTORCHSHRT4\000"
.LASF499:
	.ascii	"S_VILE_RUN1\000"
.LASF289:
	.ascii	"S_DSGUNDOWN\000"
.LASF501:
	.ascii	"S_VILE_RUN3\000"
.LASF502:
	.ascii	"S_VILE_RUN4\000"
.LASF503:
	.ascii	"S_VILE_RUN5\000"
.LASF504:
	.ascii	"S_VILE_RUN6\000"
.LASF505:
	.ascii	"S_VILE_RUN7\000"
.LASF506:
	.ascii	"S_VILE_RUN8\000"
.LASF507:
	.ascii	"S_VILE_RUN9\000"
.LASF750:
	.ascii	"S_SARG_DIE5\000"
.LASF751:
	.ascii	"S_SARG_DIE6\000"
.LASF1568:
	.ascii	"visited\000"
.LASF1491:
	.ascii	"thinker\000"
.LASF1678:
	.ascii	"r_flags\000"
.LASF1288:
	.ascii	"S_BSKUL_DIE6\000"
.LASF591:
	.ascii	"S_SKEL_FIST1\000"
.LASF592:
	.ascii	"S_SKEL_FIST2\000"
.LASF593:
	.ascii	"S_SKEL_FIST3\000"
.LASF594:
	.ascii	"S_SKEL_FIST4\000"
.LASF330:
	.ascii	"S_PLASMA\000"
.LASF1109:
	.ascii	"S_PINS\000"
.LASF1236:
	.ascii	"S_DOGS_RUN7\000"
.LASF1237:
	.ascii	"S_DOGS_RUN8\000"
.LASF1266:
	.ascii	"S_PLS2BALL2\000"
.LASF1739:
	.ascii	"colours\000"
.LASF1520:
	.ascii	"movefactor\000"
.LASF1182:
	.ascii	"S_BLUETORCH\000"
.LASF1800:
	.ascii	"c:/devl/prboom3ds/arm9/source/ds_vid.c\000"
.LASF620:
	.ascii	"S_FATT_RUN1\000"
.LASF621:
	.ascii	"S_FATT_RUN2\000"
.LASF622:
	.ascii	"S_FATT_RUN3\000"
.LASF623:
	.ascii	"S_FATT_RUN4\000"
.LASF99:
	.ascii	"pw_ironfeet\000"
.LASF625:
	.ascii	"S_FATT_RUN6\000"
.LASF626:
	.ascii	"S_FATT_RUN7\000"
.LASF627:
	.ascii	"S_FATT_RUN8\000"
.LASF1158:
	.ascii	"S_MEAT2\000"
.LASF1159:
	.ascii	"S_MEAT3\000"
.LASF1160:
	.ascii	"S_MEAT4\000"
.LASF1161:
	.ascii	"S_MEAT5\000"
.LASF273:
	.ascii	"S_PISTOLFLASH\000"
.LASF1635:
	.ascii	"floorheight\000"
.LASF493:
	.ascii	"S_SPOS_RAISE2\000"
.LASF494:
	.ascii	"S_SPOS_RAISE3\000"
.LASF495:
	.ascii	"S_SPOS_RAISE4\000"
.LASF496:
	.ascii	"S_SPOS_RAISE5\000"
.LASF183:
	.ascii	"SPR_MEDI\000"
.LASF185:
	.ascii	"SPR_PINV\000"
.LASF1035:
	.ascii	"S_BRAIN_PAIN\000"
.LASF306:
	.ascii	"S_CHAINDOWN\000"
.LASF1259:
	.ascii	"S_PLS1BALL2\000"
.LASF1255:
	.ascii	"S_OLDBFG1\000"
.LASF525:
	.ascii	"S_VILE_PAIN\000"
.LASF1700:
	.ascii	"VID_MODE32\000"
.LASF572:
	.ascii	"S_TRACER\000"
.LASF1711:
	.ascii	"Color_t\000"
.LASF1451:
	.ascii	"MT_STEALTHUNDEAD\000"
.LASF1584:
	.ascii	"comp_vile\000"
.LASF1752:
	.ascii	"SCREENWIDTH\000"
.LASF1749:
	.ascii	"firsttime\000"
.LASF992:
	.ascii	"S_SSWV_ATK1\000"
.LASF993:
	.ascii	"S_SSWV_ATK2\000"
.LASF522:
	.ascii	"S_VILE_HEAL1\000"
.LASF523:
	.ascii	"S_VILE_HEAL2\000"
.LASF524:
	.ascii	"S_VILE_HEAL3\000"
.LASF997:
	.ascii	"S_SSWV_ATK6\000"
.LASF1508:
	.ascii	"movecount\000"
.LASF177:
	.ascii	"SPR_RKEY\000"
.LASF1143:
	.ascii	"S_STALAG\000"
.LASF1559:
	.ascii	"psprites\000"
.LASF1652:
	.ascii	"midmap\000"
.LASF19:
	.ascii	"gfxScreen_t\000"
.LASF1734:
	.ascii	"copy_screen\000"
.LASF858:
	.ascii	"S_SPID_STND2\000"
.LASF104:
	.ascii	"angle_t\000"
.LASF1613:
	.ascii	"LO_CONFIRM\000"
.LASF1664:
	.ascii	"ceilingpic\000"
.LASF1144:
	.ascii	"S_BLOODYTWITCH\000"
.LASF1213:
	.ascii	"S_SMALLPOOL\000"
.LASF1484:
	.ascii	"pspdef_t\000"
.LASF1408:
	.ascii	"MT_MISC56\000"
.LASF642:
	.ascii	"S_FATT_PAIN\000"
.LASF1680:
	.ascii	"ST_HORIZONTAL\000"
.LASF406:
	.ascii	"S_PLAY_RUN1\000"
.LASF407:
	.ascii	"S_PLAY_RUN2\000"
.LASF408:
	.ascii	"S_PLAY_RUN3\000"
.LASF409:
	.ascii	"S_PLAY_RUN4\000"
.LASF1134:
	.ascii	"S_BPAK\000"
.LASF172:
	.ascii	"SPR_BEXP\000"
.LASF1529:
	.ascii	"player_s\000"
.LASF1091:
	.ascii	"S_BSKULL2\000"
.LASF1766:
	.ascii	"use_fullscreen\000"
.LASF131:
	.ascii	"SPR_PUFF\000"
.LASF1020:
	.ascii	"S_COMMKEEN\000"
.LASF1546:
	.ascii	"usedown\000"
.LASF1447:
	.ascii	"MT_STEALTHSERGEANT\000"
.LASF812:
	.ascii	"S_BOS2_STND\000"
.LASF137:
	.ascii	"SPR_BFS1\000"
.LASF1043:
	.ascii	"S_SPAWN1\000"
.LASF1044:
	.ascii	"S_SPAWN2\000"
.LASF1045:
	.ascii	"S_SPAWN3\000"
.LASF1046:
	.ascii	"S_SPAWN4\000"
.LASF1216:
	.ascii	"S_TECHLAMP2\000"
.LASF1217:
	.ascii	"S_TECHLAMP3\000"
.LASF85:
	.ascii	"wp_chainsaw\000"
.LASF1322:
	.ascii	"MT_BABY\000"
.LASF1544:
	.ascii	"maxammo\000"
.LASF965:
	.ascii	"S_PAIN_ATK2\000"
.LASF1361:
	.ascii	"MT_MISC14\000"
.LASF1157:
	.ascii	"S_LIVESTICK2\000"
.LASF1202:
	.ascii	"S_RTORCHSHRT\000"
.LASF1368:
	.ascii	"MT_MISC19\000"
.LASF159:
	.ascii	"SPR_SPID\000"
.LASF758:
	.ascii	"S_HEAD_STND\000"
.LASF733:
	.ascii	"S_SARG_RUN1\000"
.LASF734:
	.ascii	"S_SARG_RUN2\000"
.LASF735:
	.ascii	"S_SARG_RUN3\000"
.LASF736:
	.ascii	"S_SARG_RUN4\000"
.LASF737:
	.ascii	"S_SARG_RUN5\000"
.LASF738:
	.ascii	"S_SARG_RUN6\000"
.LASF7:
	.ascii	"__uint32_t\000"
.LASF740:
	.ascii	"S_SARG_RUN8\000"
.LASF1346:
	.ascii	"MT_MISC1\000"
.LASF1347:
	.ascii	"MT_MISC2\000"
.LASF1348:
	.ascii	"MT_MISC3\000"
.LASF1349:
	.ascii	"MT_MISC4\000"
.LASF1350:
	.ascii	"MT_MISC5\000"
.LASF1351:
	.ascii	"MT_MISC6\000"
.LASF1352:
	.ascii	"MT_MISC7\000"
.LASF1353:
	.ascii	"MT_MISC8\000"
.LASF1354:
	.ascii	"MT_MISC9\000"
.LASF323:
	.ascii	"S_SAW\000"
.LASF1713:
	.ascii	"nomouse_parm\000"
.LASF188:
	.ascii	"SPR_MEGA\000"
.LASF1772:
	.ascii	"g_lastTouch\000"
.LASF412:
	.ascii	"S_PLAY_PAIN\000"
.LASF1693:
	.ascii	"byte_pitch\000"
.LASF364:
	.ascii	"S_PLASBALL2\000"
.LASF1481:
	.ascii	"ps_flash\000"
.LASF1530:
	.ascii	"playerstate\000"
.LASF1677:
	.ascii	"r_validcount\000"
.LASF166:
	.ascii	"SPR_KEEN\000"
.LASF998:
	.ascii	"S_SSWV_PAIN\000"
.LASF1463:
	.ascii	"painstate\000"
.LASF1033:
	.ascii	"S_KEENPAIN2\000"
.LASF101:
	.ascii	"pw_infrared\000"
.LASF520:
	.ascii	"S_VILE_ATK10\000"
.LASF1777:
	.ascii	"hidKeysDown\000"
.LASF521:
	.ascii	"S_VILE_ATK11\000"
.LASF1599:
	.ascii	"comp_infcheat\000"
.LASF1450:
	.ascii	"MT_STEALTHFATSO\000"
.LASF999:
	.ascii	"S_SSWV_PAIN2\000"
.LASF1432:
	.ascii	"MT_MISC80\000"
.LASF1470:
	.ascii	"deathsound\000"
.LASF1073:
	.ascii	"S_BON1A\000"
.LASF1074:
	.ascii	"S_BON1B\000"
.LASF1075:
	.ascii	"S_BON1C\000"
.LASF1076:
	.ascii	"S_BON1D\000"
.LASF1077:
	.ascii	"S_BON1E\000"
.LASF1679:
	.ascii	"sector_t\000"
.LASF1602:
	.ascii	"comp_respawn\000"
.LASF1692:
	.ascii	"width\000"
.LASF186:
	.ascii	"SPR_PSTR\000"
.LASF20:
	.ascii	"GFX_LEFT\000"
.LASF25:
	.ascii	"KEY_A\000"
.LASF26:
	.ascii	"KEY_B\000"
.LASF744:
	.ascii	"S_SARG_PAIN\000"
.LASF1365:
	.ascii	"MT_CLIP\000"
.LASF34:
	.ascii	"KEY_L\000"
.LASF1420:
	.ascii	"MT_MISC68\000"
.LASF1069:
	.ascii	"S_BBAR1\000"
.LASF33:
	.ascii	"KEY_R\000"
.LASF1071:
	.ascii	"S_BBAR3\000"
.LASF257:
	.ascii	"S_LIGHTDONE\000"
.LASF35:
	.ascii	"KEY_X\000"
.LASF36:
	.ascii	"KEY_Y\000"
.LASF908:
	.ascii	"S_BSPI_PAIN2\000"
.LASF1601:
	.ascii	"comp_moveblock\000"
.LASF1284:
	.ascii	"S_BSKUL_DIE2\000"
.LASF1538:
	.ascii	"backpack\000"
.LASF1286:
	.ascii	"S_BSKUL_DIE4\000"
.LASF1697:
	.ascii	"VID_MODE8\000"
.LASF708:
	.ascii	"S_TROO_ATK1\000"
.LASF709:
	.ascii	"S_TROO_ATK2\000"
.LASF710:
	.ascii	"S_TROO_ATK3\000"
.LASF852:
	.ascii	"S_SKULL_DIE2\000"
.LASF853:
	.ascii	"S_SKULL_DIE3\000"
.LASF854:
	.ascii	"S_SKULL_DIE4\000"
.LASF855:
	.ascii	"S_SKULL_DIE5\000"
.LASF856:
	.ascii	"S_SKULL_DIE6\000"
.LASF205:
	.ascii	"SPR_PLAS\000"
.LASF1079:
	.ascii	"S_BON2A\000"
.LASF1080:
	.ascii	"S_BON2B\000"
.LASF118:
	.ascii	"SPR_PISF\000"
.LASF117:
	.ascii	"SPR_PISG\000"
.LASF1083:
	.ascii	"S_BON2E\000"
.LASF1375:
	.ascii	"MT_CHAINGUN\000"
.LASF355:
	.ascii	"S_TBALLX1\000"
.LASF356:
	.ascii	"S_TBALLX2\000"
.LASF357:
	.ascii	"S_TBALLX3\000"
.LASF88:
	.ascii	"wp_nochange\000"
.LASF1312:
	.ascii	"MT_CHAINGUY\000"
.LASF1631:
	.ascii	"degenmobj_t\000"
.LASF1570:
	.ascii	"forwardmove\000"
.LASF851:
	.ascii	"S_SKULL_DIE1\000"
.LASF67:
	.ascii	"pack_tnt\000"
.LASF1214:
	.ascii	"S_BRAINSTEM\000"
.LASF1019:
	.ascii	"S_KEENSTND\000"
.LASF1566:
	.ascii	"m_sprev\000"
.LASF142:
	.ascii	"SPR_PLAY\000"
.LASF28:
	.ascii	"KEY_START\000"
.LASF1540:
	.ascii	"readyweapon\000"
.LASF1747:
	.ascii	"I_InitGraphics\000"
.LASF10:
	.ascii	"long long unsigned int\000"
.LASF1154:
	.ascii	"S_HEADCANDLES2\000"
.LASF1342:
	.ascii	"MT_IFOG\000"
.LASF1605:
	.ascii	"comp_soul\000"
.LASF1016:
	.ascii	"S_SSWV_RAISE3\000"
.LASF233:
	.ascii	"SPR_FSKU\000"
.LASF470:
	.ascii	"S_SPOS_RUN6\000"
.LASF1585:
	.ascii	"comp_pain\000"
.LASF326:
	.ascii	"S_SAWUP\000"
.LASF1059:
	.ascii	"S_ARM1A\000"
.LASF662:
	.ascii	"S_CPOS_STND\000"
.LASF1383:
	.ascii	"MT_MISC31\000"
.LASF1502:
	.ascii	"momz\000"
.LASF1133:
	.ascii	"S_SBOX\000"
.LASF1639:
	.ascii	"soundtraversed\000"
.LASF1386:
	.ascii	"MT_MISC34\000"
.LASF1249:
	.ascii	"S_DOGS_RAISE1\000"
.LASF1250:
	.ascii	"S_DOGS_RAISE2\000"
.LASF1251:
	.ascii	"S_DOGS_RAISE3\000"
.LASF365:
	.ascii	"S_PLASEXP\000"
.LASF1253:
	.ascii	"S_DOGS_RAISE5\000"
.LASF1254:
	.ascii	"S_DOGS_RAISE6\000"
.LASF1620:
	.ascii	"float\000"
.LASF1149:
	.ascii	"S_DEADBOTTOM\000"
.LASF1206:
	.ascii	"S_HANGNOGUTS\000"
.LASF1462:
	.ascii	"attacksound\000"
.LASF1110:
	.ascii	"S_PINS2\000"
.LASF1111:
	.ascii	"S_PINS3\000"
.LASF1112:
	.ascii	"S_PINS4\000"
.LASF32:
	.ascii	"KEY_DDOWN\000"
.LASF964:
	.ascii	"S_PAIN_ATK1\000"
.LASF1801:
	.ascii	"c:\\\\devl\\\\prboom3ds\\\\build\000"
.LASF966:
	.ascii	"S_PAIN_ATK3\000"
.LASF967:
	.ascii	"S_PAIN_ATK4\000"
.LASF1598:
	.ascii	"comp_stairs\000"
.LASF276:
	.ascii	"S_SGUNUP\000"
.LASF1673:
	.ascii	"frontsector\000"
.LASF227:
	.ascii	"SPR_CBRA\000"
.LASF1468:
	.ascii	"deathstate\000"
.LASF1061:
	.ascii	"S_ARM2A\000"
.LASF930:
	.ascii	"S_CYBER_STND\000"
.LASF1089:
	.ascii	"S_YKEY2\000"
.LASF539:
	.ascii	"S_FIRE3\000"
.LASF1606:
	.ascii	"comp_maskedanim\000"
.LASF1461:
	.ascii	"reactiontime\000"
.LASF544:
	.ascii	"S_FIRE8\000"
.LASF784:
	.ascii	"S_BOSS_STND2\000"
.LASF1493:
	.ascii	"sprev\000"
.LASF327:
	.ascii	"S_SAW1\000"
.LASF328:
	.ascii	"S_SAW2\000"
.LASF329:
	.ascii	"S_SAW3\000"
.LASF69:
	.ascii	"none\000"
.LASF1072:
	.ascii	"S_BON1\000"
.LASF1078:
	.ascii	"S_BON2\000"
.LASF1514:
	.ascii	"player\000"
.LASF1646:
	.ascii	"lightingdata\000"
.LASF324:
	.ascii	"S_SAWB\000"
.LASF712:
	.ascii	"S_TROO_PAIN2\000"
.LASF1328:
	.ascii	"MT_BOSSSPIT\000"
.LASF537:
	.ascii	"S_FIRE1\000"
.LASF538:
	.ascii	"S_FIRE2\000"
.LASF103:
	.ascii	"fixed_t\000"
.LASF540:
	.ascii	"S_FIRE4\000"
.LASF541:
	.ascii	"S_FIRE5\000"
.LASF542:
	.ascii	"S_FIRE6\000"
.LASF543:
	.ascii	"S_FIRE7\000"
.LASF195:
	.ascii	"SPR_BROK\000"
.LASF545:
	.ascii	"S_FIRE9\000"
.LASF1270:
	.ascii	"S_BON3\000"
.LASF1271:
	.ascii	"S_BON4\000"
.LASF1397:
	.ascii	"MT_MISC45\000"
.LASF1130:
	.ascii	"S_CELL\000"
.LASF1399:
	.ascii	"MT_MISC47\000"
.LASF193:
	.ascii	"SPR_AMMO\000"
.LASF1400:
	.ascii	"MT_MISC48\000"
.LASF1252:
	.ascii	"S_DOGS_RAISE4\000"
.LASF1401:
	.ascii	"MT_MISC49\000"
.LASF843:
	.ascii	"S_SKULL_RUN1\000"
.LASF844:
	.ascii	"S_SKULL_RUN2\000"
.LASF1210:
	.ascii	"S_HANGTLOOKUP\000"
.LASF305:
	.ascii	"S_CHAIN\000"
.LASF1625:
	.ascii	"evtype_t\000"
.LASF335:
	.ascii	"S_PLASMAFLASH1\000"
.LASF291:
	.ascii	"S_DSGUN1\000"
.LASF292:
	.ascii	"S_DSGUN2\000"
.LASF184:
	.ascii	"SPR_SOUL\000"
.LASF144:
	.ascii	"SPR_SPOS\000"
.LASF295:
	.ascii	"S_DSGUN5\000"
.LASF296:
	.ascii	"S_DSGUN6\000"
.LASF297:
	.ascii	"S_DSGUN7\000"
.LASF298:
	.ascii	"S_DSGUN8\000"
.LASF299:
	.ascii	"S_DSGUN9\000"
.LASF463:
	.ascii	"S_SPOS_STND\000"
.LASF164:
	.ascii	"SPR_PAIN\000"
.LASF691:
	.ascii	"S_CPOS_RAISE1\000"
.LASF1539:
	.ascii	"frags\000"
.LASF1439:
	.ascii	"MT_PUSH\000"
.LASF1070:
	.ascii	"S_BBAR2\000"
.LASF1696:
	.ascii	"screeninfo_t\000"
.LASF1534:
	.ascii	"armorpoints\000"
.LASF1575:
	.ascii	"buttons\000"
.LASF1659:
	.ascii	"ceiling_xoffs\000"
.LASF340:
	.ascii	"S_BFG1\000"
.LASF341:
	.ascii	"S_BFG2\000"
.LASF342:
	.ascii	"S_BFG3\000"
.LASF343:
	.ascii	"S_BFG4\000"
.LASF255:
	.ascii	"spritenum_t\000"
.LASF302:
	.ascii	"S_DSNR2\000"
.LASF842:
	.ascii	"S_SKULL_STND2\000"
.LASF1644:
	.ascii	"floordata\000"
.LASF1105:
	.ascii	"S_PINV2\000"
.LASF1106:
	.ascii	"S_PINV3\000"
.LASF1107:
	.ascii	"S_PINV4\000"
.LASF1220:
	.ascii	"S_TECH2LAMP2\000"
.LASF1221:
	.ascii	"S_TECH2LAMP3\000"
.LASF1222:
	.ascii	"S_TECH2LAMP4\000"
.LASF1750:
	.ascii	"finecosine\000"
.LASF1668:
	.ascii	"line_s\000"
.LASF9:
	.ascii	"long long int\000"
.LASF116:
	.ascii	"SPR_PUNG\000"
.LASF686:
	.ascii	"S_CPOS_XDIE2\000"
.LASF687:
	.ascii	"S_CPOS_XDIE3\000"
.LASF688:
	.ascii	"S_CPOS_XDIE4\000"
.LASF689:
	.ascii	"S_CPOS_XDIE5\000"
.LASF690:
	.ascii	"S_CPOS_XDIE6\000"
.LASF1760:
	.ascii	"screens\000"
.LASF871:
	.ascii	"S_SPID_ATK1\000"
.LASF872:
	.ascii	"S_SPID_ATK2\000"
.LASF873:
	.ascii	"S_SPID_ATK3\000"
.LASF874:
	.ascii	"S_SPID_ATK4\000"
.LASF1597:
	.ascii	"comp_zombie\000"
.LASF595:
	.ascii	"S_SKEL_MISS1\000"
.LASF596:
	.ascii	"S_SKEL_MISS2\000"
.LASF597:
	.ascii	"S_SKEL_MISS3\000"
.LASF598:
	.ascii	"S_SKEL_MISS4\000"
.LASF352:
	.ascii	"S_PUFF4\000"
.LASF1092:
	.ascii	"S_RSKULL\000"
.LASF924:
	.ascii	"S_ARACH_PLAZ2\000"
.LASF1402:
	.ascii	"MT_MISC50\000"
.LASF331:
	.ascii	"S_PLASMADOWN\000"
.LASF1437:
	.ascii	"MT_MISC85\000"
.LASF773:
	.ascii	"S_HEAD_RAISE2\000"
.LASF1283:
	.ascii	"S_BSKUL_DIE1\000"
.LASF774:
	.ascii	"S_HEAD_RAISE3\000"
.LASF1285:
	.ascii	"S_BSKUL_DIE3\000"
.LASF179:
	.ascii	"SPR_BSKU\000"
.LASF1287:
	.ascii	"S_BSKUL_DIE5\000"
.LASF776:
	.ascii	"S_HEAD_RAISE5\000"
.LASF1289:
	.ascii	"S_BSKUL_DIE7\000"
.LASF777:
	.ascii	"S_HEAD_RAISE6\000"
.LASF1704:
	.ascii	"ns_global\000"
.LASF1380:
	.ascii	"MT_SUPERSHOTGUN\000"
.LASF22:
	.ascii	"gfx3dSide_t\000"
.LASF190:
	.ascii	"SPR_PMAP\000"
.LASF1040:
	.ascii	"S_BRAINEYE\000"
.LASF1562:
	.ascii	"m_sector\000"
.LASF191:
	.ascii	"SPR_PVIS\000"
.LASF1194:
	.ascii	"S_BTORCHSHRT\000"
.LASF1577:
	.ascii	"PST_LIVE\000"
.LASF1338:
	.ascii	"MT_ARACHPLAZ\000"
.LASF1660:
	.ascii	"ceiling_yoffs\000"
.LASF518:
	.ascii	"S_VILE_ATK8\000"
.LASF459:
	.ascii	"S_POSS_RAISE1\000"
.LASF460:
	.ascii	"S_POSS_RAISE2\000"
.LASF461:
	.ascii	"S_POSS_RAISE3\000"
.LASF462:
	.ascii	"S_POSS_RAISE4\000"
.LASF314:
	.ascii	"S_MISSILEDOWN\000"
.LASF1595:
	.ascii	"comp_doorstuck\000"
.LASF1178:
	.ascii	"S_FLOATSKULL2\000"
.LASF1179:
	.ascii	"S_FLOATSKULL3\000"
.LASF1794:
	.ascii	"W_UnlockLumpNum\000"
.LASF1787:
	.ascii	"V_AllocScreens\000"
.LASF1113:
	.ascii	"S_MEGA\000"
.LASF793:
	.ascii	"S_BOSS_ATK1\000"
.LASF794:
	.ascii	"S_BOSS_ATK2\000"
.LASF795:
	.ascii	"S_BOSS_ATK3\000"
.LASF1496:
	.ascii	"subsector\000"
.LASF249:
	.ascii	"SPR_BRS1\000"
.LASF1630:
	.ascii	"vertex_t\000"
.LASF600:
	.ascii	"S_SKEL_PAIN2\000"
.LASF1137:
	.ascii	"S_CSAW\000"
.LASF96:
	.ascii	"pw_invulnerability\000"
.LASF780:
	.ascii	"S_BRBALLX1\000"
.LASF781:
	.ascii	"S_BRBALLX2\000"
.LASF782:
	.ascii	"S_BRBALLX3\000"
.LASF64:
	.ascii	"PU_MAX\000"
.LASF911:
	.ascii	"S_BSPI_DIE3\000"
.LASF912:
	.ascii	"S_BSPI_DIE4\000"
.LASF913:
	.ascii	"S_BSPI_DIE5\000"
.LASF81:
	.ascii	"wp_chaingun\000"
.LASF915:
	.ascii	"S_BSPI_DIE7\000"
.LASF465:
	.ascii	"S_SPOS_RUN1\000"
.LASF466:
	.ascii	"S_SPOS_RUN2\000"
.LASF1674:
	.ascii	"backsector\000"
.LASF467:
	.ascii	"S_SPOS_RUN3\000"
.LASF969:
	.ascii	"S_PAIN_PAIN2\000"
.LASF604:
	.ascii	"S_SKEL_DIE4\000"
.LASF198:
	.ascii	"SPR_SHEL\000"
.LASF1421:
	.ascii	"MT_MISC69\000"
.LASF1535:
	.ascii	"armortype\000"
.LASF1802:
	.ascii	"menuactive_e\000"
.LASF250:
	.ascii	"SPR_TLMP\000"
.LASF1728:
	.ascii	"I_ScreenShot\000"
.LASF1691:
	.ascii	"not_on_heap\000"
.LASF431:
	.ascii	"S_POSS_STND2\000"
.LASF1379:
	.ascii	"MT_SHOTGUN\000"
.LASF509:
	.ascii	"S_VILE_RUN11\000"
.LASF1304:
	.ascii	"MT_SHOTGUY\000"
.LASF1550:
	.ascii	"itemcount\000"
.LASF1215:
	.ascii	"S_TECHLAMP\000"
.LASF1325:
	.ascii	"MT_WOLFSS\000"
.LASF70:
	.ascii	"GameMission_t\000"
.LASF59:
	.ascii	"PU_MUSIC\000"
.LASF1243:
	.ascii	"S_DOGS_DIE1\000"
.LASF1244:
	.ascii	"S_DOGS_DIE2\000"
.LASF813:
	.ascii	"S_BOS2_STND2\000"
.LASF1640:
	.ascii	"soundtarget\000"
.LASF308:
	.ascii	"S_CHAIN1\000"
.LASF309:
	.ascii	"S_CHAIN2\000"
.LASF310:
	.ascii	"S_CHAIN3\000"
.LASF361:
	.ascii	"S_RBALLX2\000"
.LASF362:
	.ascii	"S_RBALLX3\000"
.LASF235:
	.ascii	"SPR_TBLU\000"
.LASF464:
	.ascii	"S_SPOS_STND2\000"
.LASF11:
	.ascii	"unsigned int\000"
.LASF1769:
	.ascii	"weapons\000"
.LASF1492:
	.ascii	"snext\000"
.LASF1592:
	.ascii	"comp_floors\000"
.LASF95:
	.ascii	"am_noammo\000"
.LASF1489:
	.ascii	"thinker_s\000"
.LASF113:
	.ascii	"thinker_t\000"
.LASF1586:
	.ascii	"comp_skull\000"
.LASF1273:
	.ascii	"S_BSKUL_RUN1\000"
.LASF1274:
	.ascii	"S_BSKUL_RUN2\000"
.LASF1275:
	.ascii	"S_BSKUL_RUN3\000"
.LASF1276:
	.ascii	"S_BSKUL_RUN4\000"
.LASF52:
	.ascii	"touchPosition\000"
.LASF441:
	.ascii	"S_POSS_ATK2\000"
.LASF442:
	.ascii	"S_POSS_ATK3\000"
.LASF1735:
	.ascii	"side\000"
.LASF1423:
	.ascii	"MT_MISC71\000"
.LASF1203:
	.ascii	"S_RTORCHSHRT2\000"
.LASF1204:
	.ascii	"S_RTORCHSHRT3\000"
.LASF1205:
	.ascii	"S_RTORCHSHRT4\000"
.LASF1773:
	.ascii	"g_currentTouch\000"
.LASF2:
	.ascii	"short int\000"
.LASF1429:
	.ascii	"MT_MISC77\000"
.LASF1430:
	.ascii	"MT_MISC78\000"
.LASF1689:
	.ascii	"RF_CLOSED\000"
.LASF1431:
	.ascii	"MT_MISC79\000"
.LASF1320:
	.ascii	"MT_SKULL\000"
.LASF1583:
	.ascii	"comp_dropoff\000"
.LASF1307:
	.ascii	"MT_UNDEAD\000"
.LASF107:
	.ascii	"prev\000"
.LASF1610:
	.ascii	"mnact_float\000"
.LASF601:
	.ascii	"S_SKEL_DIE1\000"
.LASF602:
	.ascii	"S_SKEL_DIE2\000"
.LASF603:
	.ascii	"S_SKEL_DIE3\000"
.LASF146:
	.ascii	"SPR_FIRE\000"
.LASF605:
	.ascii	"S_SKEL_DIE5\000"
.LASF606:
	.ascii	"S_SKEL_DIE6\000"
.LASF1212:
	.ascii	"S_COLONGIBS\000"
.LASF1793:
	.ascii	"W_LumpLength\000"
.LASF1309:
	.ascii	"MT_SMOKE\000"
.LASF1041:
	.ascii	"S_BRAINEYESEE\000"
.LASF251:
	.ascii	"SPR_TLP2\000"
.LASF363:
	.ascii	"S_PLASBALL\000"
.LASF207:
	.ascii	"SPR_SGN2\000"
.LASF1487:
	.ascii	"options\000"
.LASF160:
	.ascii	"SPR_BSPI\000"
.LASF162:
	.ascii	"SPR_APBX\000"
.LASF1558:
	.ascii	"colormap\000"
.LASF1355:
	.ascii	"MT_MISC10\000"
.LASF1356:
	.ascii	"MT_MISC11\000"
.LASF1357:
	.ascii	"MT_MISC12\000"
.LASF1359:
	.ascii	"MT_MISC13\000"
.LASF986:
	.ascii	"S_SSWV_RUN3\000"
.LASF1362:
	.ascii	"MT_MISC15\000"
.LASF1363:
	.ascii	"MT_MISC16\000"
.LASF1366:
	.ascii	"MT_MISC17\000"
.LASF1367:
	.ascii	"MT_MISC18\000"
.LASF1126:
	.ascii	"S_CLIP\000"
.LASF1472:
	.ascii	"radius\000"
.LASF1506:
	.ascii	"health\000"
.LASF1261:
	.ascii	"S_PLS1EXP2\000"
.LASF1262:
	.ascii	"S_PLS1EXP3\000"
.LASF1263:
	.ascii	"S_PLS1EXP4\000"
.LASF1264:
	.ascii	"S_PLS1EXP5\000"
.LASF1619:
	.ascii	"OutputLevels\000"
	.ident	"GCC: (devkitARM release 43) 4.9.2"
