.subsections_via_symbols
.section __DWARF, __debug_line,regular,debug
Ldebug_line_section_start:
Ldebug_line_start:
.section __DWARF, __debug_abbrev,regular,debug
Ldebug_abbrev_start:

	.byte 1,17,1,37,8,3,8,27,8,19,11,17,1,18,1,16,6,0,0,2,46,1,3,8,135,64,8,58,15,59,15,17
	.byte 1,18,1,64,10,0,0,3,5,0,3,8,73,19,2,10,0,0,15,5,0,3,8,73,19,2,6,0,0,4,36,0
	.byte 11,11,62,11,3,8,0,0,5,2,1,3,8,11,15,0,0,17,2,0,3,8,11,15,0,0,6,13,0,3,8,73
	.byte 19,56,10,0,0,7,22,0,3,8,73,19,0,0,8,4,1,3,8,11,15,73,19,0,0,9,40,0,3,8,28,13
	.byte 0,0,10,57,1,3,8,0,0,11,52,0,3,8,73,19,2,10,0,0,12,52,0,3,8,73,19,2,6,0,0,13
	.byte 15,0,73,19,0,0,14,16,0,73,19,0,0,16,28,0,73,19,56,10,0,0,18,46,0,3,8,17,1,18,1,0
	.byte 0,0
.section __DWARF, __debug_info,regular,debug
Ldebug_info_start:

LDIFF_SYM0=Ldebug_info_end - Ldebug_info_begin
	.long LDIFF_SYM0
Ldebug_info_begin:

	.short 2
	.long 0
	.byte 8,1
	.asciz "Mono AOT Compiler 6.12.0 (2020-02/adf1bc4335d Tue Mar 22 14:10:44 EDT 2022)"
	.asciz "System.Drawing.Common.dll"
	.asciz ""

	.byte 2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
LDIFF_SYM1=Ldebug_line_start - Ldebug_line_section_start
	.long LDIFF_SYM1
LDIE_I1:

	.byte 4,1,5
	.asciz "sbyte"
LDIE_U1:

	.byte 4,1,7
	.asciz "byte"
LDIE_I2:

	.byte 4,2,5
	.asciz "short"
LDIE_U2:

	.byte 4,2,7
	.asciz "ushort"
LDIE_I4:

	.byte 4,4,5
	.asciz "int"
LDIE_U4:

	.byte 4,4,7
	.asciz "uint"
LDIE_I8:

	.byte 4,8,5
	.asciz "long"
LDIE_U8:

	.byte 4,8,7
	.asciz "ulong"
LDIE_I:

	.byte 4,8,5
	.asciz "intptr"
LDIE_U:

	.byte 4,8,7
	.asciz "uintptr"
LDIE_R4:

	.byte 4,4,4
	.asciz "float"
LDIE_R8:

	.byte 4,8,4
	.asciz "double"
LDIE_BOOLEAN:

	.byte 4,1,2
	.asciz "boolean"
LDIE_CHAR:

	.byte 4,2,8
	.asciz "char"
LDIE_STRING:

	.byte 4,8,1
	.asciz "string"
LDIE_OBJECT:

	.byte 4,8,1
	.asciz "object"
LDIE_SZARRAY:

	.byte 4,8,1
	.asciz "object"
.section __DWARF, __debug_loc,regular,debug
Ldebug_loc_start:
.section __DWARF, __debug_frame,regular,debug
	.align 3

LDIFF_SYM2=Lcie0_end - Lcie0_start
	.long LDIFF_SYM2
Lcie0_start:

	.long -1
	.byte 3
	.asciz ""

	.byte 1,120,30
	.align 3
Lcie0_end:
.text
	.align 3
jit_code_start:

	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
.text
	.align 4
	.no_dead_strip System_Numerics_Hashing_HashHelpers_Combine_int_int
System_Numerics_Hashing_HashHelpers_Combine_int_int:
.file 1 "<unknown>"
.loc 1 1 0
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xb98013a1
.word 0x531b6820
.word 0x531b7c22
.word 0x2a020000
.word 0xb010000
.word 0xb9801ba1
.word 0x4a010000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_0:
.text
	.align 4
	.no_dead_strip System_Drawing_SizeFConverter__ctor
System_Drawing_SizeFConverter__ctor:
.loc 1 1 0
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_1:
.text
ut_2:
add x0, x0, 16
b System_Drawing_PointF_get_X
ut_end:
.section __TEXT, __const
_unbox_trampoline_p:

	.long 0
LDIFF_SYM3=ut_end - ut_2
	.long LDIFF_SYM3
.text
	.align 4
	.no_dead_strip System_Drawing_PointF_get_X
System_Drawing_PointF_get_X:
.loc 1 1 0
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xbd400010
.word 0x1e22c200
.word 0x1e624000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_2:
.text
ut_3:
add x0, x0, 16
b System_Drawing_PointF_get_Y
.text
	.align 4
	.no_dead_strip System_Drawing_PointF_get_Y
System_Drawing_PointF_get_Y:
.loc 1 1 0
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xbd400410
.word 0x1e22c200
.word 0x1e624000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_3:
.text
ut_4:
add x0, x0, 16
b System_Drawing_PointF_op_Equality_System_Drawing_PointF_System_Drawing_PointF
.text
	.align 4
	.no_dead_strip System_Drawing_PointF_op_Equality_System_Drawing_PointF_System_Drawing_PointF
System_Drawing_PointF_op_Equality_System_Drawing_PointF_System_Drawing_PointF:
.loc 1 1 0
.word 0xa9b67bfd
.word 0x910003fd
.word 0xbd0013a0
.word 0xbd0017a1
.word 0xbd0053a2
.word 0xbd0057a3
.word 0xbd4013b0
.word 0x1e22c200
.word 0x1e624010
.word 0xbd0093b0
.word 0xbd4093b0
.word 0x1e22c200
.word 0xbd4053b0
.word 0x1e22c201
.word 0x1e624030
.word 0xbd0093b0
.word 0xbd4093b0
.word 0x1e22c201
.word 0x1e612000
.word 0x54000201
.word 0xbd4017b0
.word 0x1e22c200
.word 0x1e624010
.word 0xbd0093b0
.word 0xbd4093b0
.word 0x1e22c200
.word 0xbd4057b0
.word 0x1e22c201
.word 0x1e624030
.word 0xbd0093b0
.word 0xbd4093b0
.word 0x1e22c201
.word 0x1e612000
.word 0x9a9f17e0
.word 0x14000002
.word 0xd2800000
.word 0x910003bf
.word 0xa8ca7bfd
.word 0xd65f03c0

Lme_4:
.text
ut_5:
add x0, x0, 16
b System_Drawing_PointF_Equals_object
.text
	.align 4
	.no_dead_strip System_Drawing_PointF_Equals_object
System_Drawing_PointF_Equals_object:
.loc 1 1 0
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000bb8
.word 0xf9000fba
.word 0xf90013a0
.word 0xaa0103fa
.word 0xaa1a03f8
.word 0xeb1f035f
.word 0x54000160
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x1, [x16, #200]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800018
.word 0xb40003b8
.word 0xf9400340
.word 0x3940b001
.word 0xeb1f003f
.word 0x10000011
.word 0x540003c1
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x1, [x16, #200]
.word 0xeb01001f
.word 0x10000011
.word 0x540002c1
.word 0x91004340
.word 0xb9800001
.word 0xb9002ba1
.word 0xb9800400
.word 0xb9002fa0
.word 0xf94013a0
.word 0xbd402bb0
.word 0x1e22c200
.word 0x1e624000
.word 0xbd402fb0
.word 0x1e22c201
.word 0x1e624021
bl _p_1
.word 0x53001c00
.word 0x14000002
.word 0xd2800000
.word 0xf9400bb8
.word 0xf9400fba
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0
.word 0xd2800f80
.word 0xaa1103e1
bl _p_2

Lme_5:
.text
ut_6:
add x0, x0, 16
b System_Drawing_PointF_Equals_System_Drawing_PointF
.text
	.align 4
	.no_dead_strip System_Drawing_PointF_Equals_System_Drawing_PointF
System_Drawing_PointF_Equals_System_Drawing_PointF:
.loc 1 1 0
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xbd001ba0
.word 0xbd001fa1
.word 0xf9400ba0
.word 0xb9800001
.word 0xb9005ba1
.word 0xb9800400
.word 0xb9005fa0
.word 0xbd405bb0
.word 0x1e22c200
.word 0x1e624000
.word 0xbd405fb0
.word 0x1e22c201
.word 0x1e624021
.word 0xbd401bb0
.word 0x1e22c202
.word 0x1e624042
.word 0xbd401fb0
.word 0x1e22c203
.word 0x1e624063
bl _p_3
.word 0x53001c00
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_6:
.text
ut_7:
add x0, x0, 16
b System_Drawing_PointF_GetHashCode
.text
	.align 4
	.no_dead_strip System_Drawing_PointF_GetHashCode
System_Drawing_PointF_GetHashCode:
.loc 1 1 0
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa
.word 0x9e6703e0
.word 0x1e624010
.word 0xbd001bb0
.word 0xbd400350
.word 0x1e22c200
.word 0x1e624010
.word 0xbd001fb0
.word 0xbd401fb0
.word 0x1e22c200
.word 0x1e624010
.word 0xbd001bb0
.word 0x910063a0
bl _p_4
.word 0x93407c00
.word 0xf90013a0
.word 0xbd400750
.word 0x1e22c200
.word 0x1e624010
.word 0xbd001fb0
.word 0xbd401fb0
.word 0x1e22c200
.word 0x1e624010
.word 0xbd001bb0
.word 0x910063a0
bl _p_4
.word 0x93407c00
.word 0xaa0003e1
.word 0xf94013a2
.word 0x531b6840
.word 0x531b7c43
.word 0x2a030000
.word 0xb020000
.word 0x4a010000
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_7:
.text
ut_8:
add x0, x0, 16
b System_Drawing_PointF_ToString
.text
	.align 4
	.no_dead_strip System_Drawing_PointF_ToString
System_Drawing_PointF_ToString:
.loc 1 1 0
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x0, [x16, #208]
.word 0xd28000a1
bl _p_5
.word 0xaa0003e3
.word 0xaa0303e0
.word 0xf9002ba0

adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x2, [x16, #216]
.word 0xaa0303e0
.word 0xd2800001
.word 0xf9400063
.word 0xf9404870
.word 0xd63f0200
.word 0xf9402ba0
.word 0xf90027a0
.word 0xf90023a0
.word 0xf9400ba0
bl _p_6
.word 0xaa0003e2
.word 0xf94027a3
.word 0xaa0303e0
.word 0xd2800021
.word 0xf9400063
.word 0xf9404870
.word 0xd63f0200
.word 0xf94023a3
.word 0xaa0303e0
.word 0xf9001fa0

adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x2, [x16, #224]
.word 0xaa0303e0
.word 0xd2800041
.word 0xf9400063
.word 0xf9404870
.word 0xd63f0200
.word 0xf9401fa0
.word 0xf9001ba0
.word 0xf90017a0
.word 0xf9400ba0
.word 0x91001000
bl _p_6
.word 0xaa0003e2
.word 0xf9401ba3
.word 0xaa0303e0
.word 0xd2800061
.word 0xf9400063
.word 0xf9404870
.word 0xd63f0200
.word 0xf94017a3
.word 0xaa0303e0
.word 0xf90013a0

adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x2, [x16, #232]
.word 0xaa0303e0
.word 0xd2800081
.word 0xf9400063
.word 0xf9404870
.word 0xd63f0200
.word 0xf94013a0
bl _p_7
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_8:
.text
ut_9:
add x0, x0, 16
b System_Drawing_RectangleF_get_X
.text
	.align 4
	.no_dead_strip System_Drawing_RectangleF_get_X
System_Drawing_RectangleF_get_X:
.loc 1 1 0
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xbd400010
.word 0x1e22c200
.word 0x1e624000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_9:
.text
ut_10:
add x0, x0, 16
b System_Drawing_RectangleF_get_Y
.text
	.align 4
	.no_dead_strip System_Drawing_RectangleF_get_Y
System_Drawing_RectangleF_get_Y:
.loc 1 1 0
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xbd400410
.word 0x1e22c200
.word 0x1e624000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_a:
.text
ut_11:
add x0, x0, 16
b System_Drawing_RectangleF_get_Width
.text
	.align 4
	.no_dead_strip System_Drawing_RectangleF_get_Width
System_Drawing_RectangleF_get_Width:
.loc 1 1 0
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xbd400810
.word 0x1e22c200
.word 0x1e624000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_b:
.text
ut_12:
add x0, x0, 16
b System_Drawing_RectangleF_get_Height
.text
	.align 4
	.no_dead_strip System_Drawing_RectangleF_get_Height
System_Drawing_RectangleF_get_Height:
.loc 1 1 0
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xbd400c10
.word 0x1e22c200
.word 0x1e624000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_c:
.text
ut_13:
add x0, x0, 16
b System_Drawing_RectangleF_Equals_object
.text
	.align 4
	.no_dead_strip System_Drawing_RectangleF_Equals_object
System_Drawing_RectangleF_Equals_object:
.loc 1 1 0
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bb8
.word 0xf9000fba
.word 0xf90013a0
.word 0xaa0103fa
.word 0xaa1a03f8
.word 0xeb1f035f
.word 0x54000160
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x1, [x16, #240]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800018
.word 0xb40004f8
.word 0xf9400340
.word 0x3940b001
.word 0xeb1f003f
.word 0x10000011
.word 0x54000501
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x1, [x16, #240]
.word 0xeb01001f
.word 0x10000011
.word 0x54000401
.word 0x91004340
.word 0xb9800001
.word 0xb9002ba1
.word 0xb9800401
.word 0xb9002fa1
.word 0xb9800801
.word 0xb90033a1
.word 0xb9800c00
.word 0xb90037a0
.word 0xf94013a0
.word 0xbd402bb0
.word 0x1e22c200
.word 0x1e624000
.word 0xbd402fb0
.word 0x1e22c201
.word 0x1e624021
.word 0xbd4033b0
.word 0x1e22c202
.word 0x1e624042
.word 0xbd4037b0
.word 0x1e22c203
.word 0x1e624063
bl _p_8
.word 0x53001c00
.word 0x14000002
.word 0xd2800000
.word 0xf9400bb8
.word 0xf9400fba
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0
.word 0xd2800f80
.word 0xaa1103e1
bl _p_2

Lme_d:
.text
ut_14:
add x0, x0, 16
b System_Drawing_RectangleF_Equals_System_Drawing_RectangleF
.text
	.align 4
	.no_dead_strip System_Drawing_RectangleF_Equals_System_Drawing_RectangleF
System_Drawing_RectangleF_Equals_System_Drawing_RectangleF:
.loc 1 1 0
.word 0xa9b97bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xbd001ba0
.word 0xbd001fa1
.word 0xbd0023a2
.word 0xbd0027a3
.word 0xf9400ba0
.word 0xb9800001
.word 0xb9005ba1
.word 0xb9800401
.word 0xb9005fa1
.word 0xb9800801
.word 0xb90063a1
.word 0xb9800c00
.word 0xb90067a0
.word 0xbd405bb0
.word 0x1e22c200
.word 0x1e624000
.word 0xbd405fb0
.word 0x1e22c201
.word 0x1e624021
.word 0xbd4063b0
.word 0x1e22c202
.word 0x1e624042
.word 0xbd4067b0
.word 0x1e22c203
.word 0x1e624063
.word 0xbd401bb0
.word 0x1e22c204
.word 0x1e624084
.word 0xbd401fb0
.word 0x1e22c205
.word 0x1e6240a5
.word 0xbd4023b0
.word 0x1e22c206
.word 0x1e6240c6
.word 0xbd4027b0
.word 0x1e22c207
.word 0x1e6240e7
bl _p_9
.word 0x53001c00
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0

Lme_e:
.text
ut_15:
add x0, x0, 16
b System_Drawing_RectangleF_op_Equality_System_Drawing_RectangleF_System_Drawing_RectangleF
.text
	.align 4
	.no_dead_strip System_Drawing_RectangleF_op_Equality_System_Drawing_RectangleF_System_Drawing_RectangleF
System_Drawing_RectangleF_op_Equality_System_Drawing_RectangleF_System_Drawing_RectangleF:
.loc 1 1 0
.word 0xa9b67bfd
.word 0x910003fd
.word 0xbd0013a0
.word 0xbd0017a1
.word 0xbd001ba2
.word 0xbd001fa3
.word 0xbd0053a4
.word 0xbd0057a5
.word 0xbd005ba6
.word 0xbd005fa7
.word 0xbd4013b0
.word 0x1e22c200
.word 0x1e624010
.word 0xbd0093b0
.word 0xbd4093b0
.word 0x1e22c200
.word 0xbd4053b0
.word 0x1e22c201
.word 0x1e624030
.word 0xbd0093b0
.word 0xbd4093b0
.word 0x1e22c201
.word 0x1e612000
.word 0x54000581
.word 0xbd4017b0
.word 0x1e22c200
.word 0x1e624010
.word 0xbd0093b0
.word 0xbd4093b0
.word 0x1e22c200
.word 0xbd4057b0
.word 0x1e22c201
.word 0x1e624030
.word 0xbd0093b0
.word 0xbd4093b0
.word 0x1e22c201
.word 0x1e612000
.word 0x540003c1
.word 0xbd401bb0
.word 0x1e22c200
.word 0x1e624010
.word 0xbd0093b0
.word 0xbd4093b0
.word 0x1e22c200
.word 0xbd405bb0
.word 0x1e22c201
.word 0x1e624030
.word 0xbd0093b0
.word 0xbd4093b0
.word 0x1e22c201
.word 0x1e612000
.word 0x54000201
.word 0xbd401fb0
.word 0x1e22c200
.word 0x1e624010
.word 0xbd0093b0
.word 0xbd4093b0
.word 0x1e22c200
.word 0xbd405fb0
.word 0x1e22c201
.word 0x1e624030
.word 0xbd0093b0
.word 0xbd4093b0
.word 0x1e22c201
.word 0x1e612000
.word 0x9a9f17e0
.word 0x14000002
.word 0xd2800000
.word 0x910003bf
.word 0xa8ca7bfd
.word 0xd65f03c0

Lme_f:
.text
ut_16:
add x0, x0, 16
b System_Drawing_RectangleF_GetHashCode
.text
	.align 4
	.no_dead_strip System_Drawing_RectangleF_GetHashCode
System_Drawing_RectangleF_GetHashCode:
.loc 1 1 0
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa
.word 0x9e6703e0
.word 0x1e624010
.word 0xbd001bb0
.word 0xbd400350
.word 0x1e22c200
.word 0x1e624010
.word 0xbd001fb0
.word 0xbd401fb0
.word 0x1e22c200
.word 0x1e624010
.word 0xbd001bb0
.word 0x910063a0
bl _p_4
.word 0x93407c00
.word 0xf9001ba0
.word 0xbd400750
.word 0x1e22c200
.word 0x1e624010
.word 0xbd001fb0
.word 0xbd401fb0
.word 0x1e22c200
.word 0x1e624010
.word 0xbd001bb0
.word 0x910063a0
bl _p_4
.word 0x93407c00
.word 0xaa0003e1
.word 0xf9401ba2
.word 0x531b6840
.word 0x531b7c43
.word 0x2a030000
.word 0xb020000
.word 0x4a010000
.word 0xf90017a0
.word 0xbd400b50
.word 0x1e22c200
.word 0x1e624010
.word 0xbd001fb0
.word 0xbd401fb0
.word 0x1e22c200
.word 0x1e624010
.word 0xbd001bb0
.word 0x910063a0
bl _p_4
.word 0x93407c00
.word 0xaa0003e1
.word 0xf94017a2
.word 0x531b6840
.word 0x531b7c43
.word 0x2a030000
.word 0xb020000
.word 0x4a010000
.word 0xf90013a0
.word 0xbd400f50
.word 0x1e22c200
.word 0x1e624010
.word 0xbd001fb0
.word 0xbd401fb0
.word 0x1e22c200
.word 0x1e624010
.word 0xbd001bb0
.word 0x910063a0
bl _p_4
.word 0x93407c00
.word 0xaa0003e1
.word 0xf94013a2
.word 0x531b6840
.word 0x531b7c43
.word 0x2a030000
.word 0xb020000
.word 0x4a010000
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_10:
.text
ut_17:
add x0, x0, 16
b System_Drawing_RectangleF_ToString
.text
	.align 4
	.no_dead_strip System_Drawing_RectangleF_ToString
System_Drawing_RectangleF_ToString:
.loc 1 1 0
.word 0xa9b77bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa
.word 0x9e6703e0
.word 0x1e624010
.word 0xbd001bb0

adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x0, [x16, #208]
.word 0xd2800121
bl _p_5
.word 0xaa0003e3
.word 0xaa0303e0
.word 0xf90043a0

adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x2, [x16, #216]
.word 0xaa0303e0
.word 0xd2800001
.word 0xf9400063
.word 0xf9404870
.word 0xd63f0200
.word 0xf94043a0
.word 0xf9003fa0
.word 0xf9003ba0
.word 0xbd400350
.word 0x1e22c200
.word 0x1e624010
.word 0xbd001fb0
.word 0xbd401fb0
.word 0x1e22c200
.word 0x1e624010
.word 0xbd001bb0
.word 0x910063a0
bl _p_6
.word 0xaa0003e2
.word 0xf9403fa3
.word 0xaa0303e0
.word 0xd2800021
.word 0xf9400063
.word 0xf9404870
.word 0xd63f0200
.word 0xf9403ba3
.word 0xaa0303e0
.word 0xf90037a0

adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x2, [x16, #248]
.word 0xaa0303e0
.word 0xd2800041
.word 0xf9400063
.word 0xf9404870
.word 0xd63f0200
.word 0xf94037a0
.word 0xf90033a0
.word 0xf9002fa0
.word 0xbd400750
.word 0x1e22c200
.word 0x1e624010
.word 0xbd001fb0
.word 0xbd401fb0
.word 0x1e22c200
.word 0x1e624010
.word 0xbd001bb0
.word 0x910063a0
bl _p_6
.word 0xaa0003e2
.word 0xf94033a3
.word 0xaa0303e0
.word 0xd2800061
.word 0xf9400063
.word 0xf9404870
.word 0xd63f0200
.word 0xf9402fa3
.word 0xaa0303e0
.word 0xf9002ba0

adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x2, [x16, #256]
.word 0xaa0303e0
.word 0xd2800081
.word 0xf9400063
.word 0xf9404870
.word 0xd63f0200
.word 0xf9402ba0
.word 0xf90027a0
.word 0xf90023a0
.word 0xbd400b50
.word 0x1e22c200
.word 0x1e624010
.word 0xbd001fb0
.word 0xbd401fb0
.word 0x1e22c200
.word 0x1e624010
.word 0xbd001bb0
.word 0x910063a0
bl _p_6
.word 0xaa0003e2
.word 0xf94027a3
.word 0xaa0303e0
.word 0xd28000a1
.word 0xf9400063
.word 0xf9404870
.word 0xd63f0200
.word 0xf94023a3
.word 0xaa0303e0
.word 0xf9001fa0

adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x2, [x16, #264]
.word 0xaa0303e0
.word 0xd28000c1
.word 0xf9400063
.word 0xf9404870
.word 0xd63f0200
.word 0xf9401fa0
.word 0xf9001ba0
.word 0xf90017a0
.word 0xbd400f50
.word 0x1e22c200
.word 0x1e624010
.word 0xbd001fb0
.word 0xbd401fb0
.word 0x1e22c200
.word 0x1e624010
.word 0xbd001bb0
.word 0x910063a0
bl _p_6
.word 0xaa0003e2
.word 0xf9401ba3
.word 0xaa0303e0
.word 0xd28000e1
.word 0xf9400063
.word 0xf9404870
.word 0xd63f0200
.word 0xf94017a3
.word 0xaa0303e0
.word 0xf90013a0

adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x2, [x16, #232]
.word 0xaa0303e0
.word 0xd2800101
.word 0xf9400063
.word 0xf9404870
.word 0xd63f0200
.word 0xf94013a0
bl _p_7
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0

Lme_11:
.text
ut_18:
add x0, x0, 16
b System_Drawing_SizeF_op_Equality_System_Drawing_SizeF_System_Drawing_SizeF
.text
	.align 4
	.no_dead_strip System_Drawing_SizeF_op_Equality_System_Drawing_SizeF_System_Drawing_SizeF
System_Drawing_SizeF_op_Equality_System_Drawing_SizeF_System_Drawing_SizeF:
.loc 1 1 0
.word 0xa9b67bfd
.word 0x910003fd
.word 0xbd0013a0
.word 0xbd0017a1
.word 0xbd0053a2
.word 0xbd0057a3
.word 0xbd4013b0
.word 0x1e22c200
.word 0x1e624010
.word 0xbd0093b0
.word 0xbd4093b0
.word 0x1e22c200
.word 0xbd4053b0
.word 0x1e22c201
.word 0x1e624030
.word 0xbd0093b0
.word 0xbd4093b0
.word 0x1e22c201
.word 0x1e612000
.word 0x54000201
.word 0xbd4017b0
.word 0x1e22c200
.word 0x1e624010
.word 0xbd0093b0
.word 0xbd4093b0
.word 0x1e22c200
.word 0xbd4057b0
.word 0x1e22c201
.word 0x1e624030
.word 0xbd0093b0
.word 0xbd4093b0
.word 0x1e22c201
.word 0x1e612000
.word 0x9a9f17e0
.word 0x14000002
.word 0xd2800000
.word 0x910003bf
.word 0xa8ca7bfd
.word 0xd65f03c0

Lme_12:
.text
ut_19:
add x0, x0, 16
b System_Drawing_SizeF_get_Width
.text
	.align 4
	.no_dead_strip System_Drawing_SizeF_get_Width
System_Drawing_SizeF_get_Width:
.loc 1 1 0
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xbd400010
.word 0x1e22c200
.word 0x1e624000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_13:
.text
ut_20:
add x0, x0, 16
b System_Drawing_SizeF_get_Height
.text
	.align 4
	.no_dead_strip System_Drawing_SizeF_get_Height
System_Drawing_SizeF_get_Height:
.loc 1 1 0
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xbd400410
.word 0x1e22c200
.word 0x1e624000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_14:
.text
ut_21:
add x0, x0, 16
b System_Drawing_SizeF_Equals_object
.text
	.align 4
	.no_dead_strip System_Drawing_SizeF_Equals_object
System_Drawing_SizeF_Equals_object:
.loc 1 1 0
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000bb8
.word 0xf9000fba
.word 0xf90013a0
.word 0xaa0103fa
.word 0xaa1a03f8
.word 0xeb1f035f
.word 0x54000160
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x1, [x16, #272]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800018
.word 0xb40003b8
.word 0xf9400340
.word 0x3940b001
.word 0xeb1f003f
.word 0x10000011
.word 0x540003c1
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x1, [x16, #272]
.word 0xeb01001f
.word 0x10000011
.word 0x540002c1
.word 0x91004340
.word 0xb9800001
.word 0xb9002ba1
.word 0xb9800400
.word 0xb9002fa0
.word 0xf94013a0
.word 0xbd402bb0
.word 0x1e22c200
.word 0x1e624000
.word 0xbd402fb0
.word 0x1e22c201
.word 0x1e624021
bl _p_10
.word 0x53001c00
.word 0x14000002
.word 0xd2800000
.word 0xf9400bb8
.word 0xf9400fba
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0
.word 0xd2800f80
.word 0xaa1103e1
bl _p_2

Lme_15:
.text
ut_22:
add x0, x0, 16
b System_Drawing_SizeF_Equals_System_Drawing_SizeF
.text
	.align 4
	.no_dead_strip System_Drawing_SizeF_Equals_System_Drawing_SizeF
System_Drawing_SizeF_Equals_System_Drawing_SizeF:
.loc 1 1 0
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xbd001ba0
.word 0xbd001fa1
.word 0xf9400ba0
.word 0xb9800001
.word 0xb9005ba1
.word 0xb9800400
.word 0xb9005fa0
.word 0xbd405bb0
.word 0x1e22c200
.word 0x1e624000
.word 0xbd405fb0
.word 0x1e22c201
.word 0x1e624021
.word 0xbd401bb0
.word 0x1e22c202
.word 0x1e624042
.word 0xbd401fb0
.word 0x1e22c203
.word 0x1e624063
bl _p_11
.word 0x53001c00
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_16:
.text
ut_23:
add x0, x0, 16
b System_Drawing_SizeF_GetHashCode
.text
	.align 4
	.no_dead_strip System_Drawing_SizeF_GetHashCode
System_Drawing_SizeF_GetHashCode:
.loc 1 1 0
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa
.word 0x9e6703e0
.word 0x1e624010
.word 0xbd001bb0
.word 0xbd400350
.word 0x1e22c200
.word 0x1e624010
.word 0xbd001fb0
.word 0xbd401fb0
.word 0x1e22c200
.word 0x1e624010
.word 0xbd001bb0
.word 0x910063a0
bl _p_4
.word 0x93407c00
.word 0xf90013a0
.word 0xbd400750
.word 0x1e22c200
.word 0x1e624010
.word 0xbd001fb0
.word 0xbd401fb0
.word 0x1e22c200
.word 0x1e624010
.word 0xbd001bb0
.word 0x910063a0
bl _p_4
.word 0x93407c00
.word 0xaa0003e1
.word 0xf94013a2
.word 0x531b6840
.word 0x531b7c43
.word 0x2a030000
.word 0xb020000
.word 0x4a010000
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_17:
.text
ut_24:
add x0, x0, 16
b System_Drawing_SizeF_ToString
.text
	.align 4
	.no_dead_strip System_Drawing_SizeF_ToString
System_Drawing_SizeF_ToString:
.loc 1 1 0
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x0, [x16, #208]
.word 0xd28000a1
bl _p_5
.word 0xaa0003e3
.word 0xaa0303e0
.word 0xf9002ba0

adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x2, [x16, #280]
.word 0xaa0303e0
.word 0xd2800001
.word 0xf9400063
.word 0xf9404870
.word 0xd63f0200
.word 0xf9402ba0
.word 0xf90027a0
.word 0xf90023a0
.word 0xf9400ba0
bl _p_6
.word 0xaa0003e2
.word 0xf94027a3
.word 0xaa0303e0
.word 0xd2800021
.word 0xf9400063
.word 0xf9404870
.word 0xd63f0200
.word 0xf94023a3
.word 0xaa0303e0
.word 0xf9001fa0

adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x2, [x16, #288]
.word 0xaa0303e0
.word 0xd2800041
.word 0xf9400063
.word 0xf9404870
.word 0xd63f0200
.word 0xf9401fa0
.word 0xf9001ba0
.word 0xf90017a0
.word 0xf9400ba0
.word 0x91001000
bl _p_6
.word 0xaa0003e2
.word 0xf9401ba3
.word 0xaa0303e0
.word 0xd2800061
.word 0xf9400063
.word 0xf9404870
.word 0xd63f0200
.word 0xf94017a3
.word 0xaa0303e0
.word 0xf90013a0

adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x2, [x16, #232]
.word 0xaa0303e0
.word 0xd2800081
.word 0xf9400063
.word 0xf9404870
.word 0xd63f0200
.word 0xf94013a0
bl _p_7
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_18:
.text
ut_29:
add x0, x0, 16
b wrapper_other_System_Drawing_PointF_StructureToPtr_object_intptr_bool
.text
	.align 4
	.no_dead_strip wrapper_other_System_Drawing_PointF_StructureToPtr_object_intptr_bool
wrapper_other_System_Drawing_PointF_StructureToPtr_object_intptr_bool:
.loc 1 1 0
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xf9400ba0
.word 0xf9400801
.word 0xf9400fa0
.word 0xf9000001
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_1d:
.text
ut_30:
add x0, x0, 16
b wrapper_other_System_Drawing_PointF_PtrToStructure_intptr_object
.text
	.align 4
	.no_dead_strip wrapper_other_System_Drawing_PointF_PtrToStructure_intptr_object
wrapper_other_System_Drawing_PointF_PtrToStructure_intptr_object:
.loc 1 1 0
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400fa0
.word 0x91004000
.word 0xf9400ba1
.word 0xf9400021
.word 0xf9000001
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_1e:
.text
ut_31:
add x0, x0, 16
b wrapper_other_System_Drawing_RectangleF_StructureToPtr_object_intptr_bool
.text
	.align 4
	.no_dead_strip wrapper_other_System_Drawing_RectangleF_StructureToPtr_object_intptr_bool
wrapper_other_System_Drawing_RectangleF_StructureToPtr_object_intptr_bool:
.loc 1 1 0
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xf9400ba0
.word 0x91004001
.word 0xf9400802
.word 0xf9400fa0
.word 0xf9000002
.word 0xf9400421
.word 0xf9000401
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_1f:
.text
ut_32:
add x0, x0, 16
b wrapper_other_System_Drawing_RectangleF_PtrToStructure_intptr_object
.text
	.align 4
	.no_dead_strip wrapper_other_System_Drawing_RectangleF_PtrToStructure_intptr_object
wrapper_other_System_Drawing_RectangleF_PtrToStructure_intptr_object:
.loc 1 1 0
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400fa0
.word 0x91004000
.word 0xf9400ba1
.word 0xf9400022
.word 0xf9000002
.word 0xf9400421
.word 0xf9000401
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_20:
.text
ut_33:
add x0, x0, 16
b wrapper_other_System_Drawing_SizeF_StructureToPtr_object_intptr_bool
.text
	.align 4
	.no_dead_strip wrapper_other_System_Drawing_SizeF_StructureToPtr_object_intptr_bool
wrapper_other_System_Drawing_SizeF_StructureToPtr_object_intptr_bool:
.loc 1 1 0
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xf9400ba0
.word 0xf9400801
.word 0xf9400fa0
.word 0xf9000001
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_21:
.text
ut_34:
add x0, x0, 16
b wrapper_other_System_Drawing_SizeF_PtrToStructure_intptr_object
.text
	.align 4
	.no_dead_strip wrapper_other_System_Drawing_SizeF_PtrToStructure_intptr_object
wrapper_other_System_Drawing_SizeF_PtrToStructure_intptr_object:
.loc 1 1 0
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400fa0
.word 0x91004000
.word 0xf9400ba1
.word 0xf9400021
.word 0xf9000001
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_22:
.text
	.align 3
jit_code_end:

	.byte 0,0,0,0
.text
	.align 3
method_addresses:
	.no_dead_strip method_addresses
bl System_Numerics_Hashing_HashHelpers_Combine_int_int
bl System_Drawing_SizeFConverter__ctor
bl System_Drawing_PointF_get_X
bl System_Drawing_PointF_get_Y
bl System_Drawing_PointF_op_Equality_System_Drawing_PointF_System_Drawing_PointF
bl System_Drawing_PointF_Equals_object
bl System_Drawing_PointF_Equals_System_Drawing_PointF
bl System_Drawing_PointF_GetHashCode
bl System_Drawing_PointF_ToString
bl System_Drawing_RectangleF_get_X
bl System_Drawing_RectangleF_get_Y
bl System_Drawing_RectangleF_get_Width
bl System_Drawing_RectangleF_get_Height
bl System_Drawing_RectangleF_Equals_object
bl System_Drawing_RectangleF_Equals_System_Drawing_RectangleF
bl System_Drawing_RectangleF_op_Equality_System_Drawing_RectangleF_System_Drawing_RectangleF
bl System_Drawing_RectangleF_GetHashCode
bl System_Drawing_RectangleF_ToString
bl System_Drawing_SizeF_op_Equality_System_Drawing_SizeF_System_Drawing_SizeF
bl System_Drawing_SizeF_get_Width
bl System_Drawing_SizeF_get_Height
bl System_Drawing_SizeF_Equals_object
bl System_Drawing_SizeF_Equals_System_Drawing_SizeF
bl System_Drawing_SizeF_GetHashCode
bl System_Drawing_SizeF_ToString
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl wrapper_other_System_Drawing_PointF_StructureToPtr_object_intptr_bool
bl wrapper_other_System_Drawing_PointF_PtrToStructure_intptr_object
bl wrapper_other_System_Drawing_RectangleF_StructureToPtr_object_intptr_bool
bl wrapper_other_System_Drawing_RectangleF_PtrToStructure_intptr_object
bl wrapper_other_System_Drawing_SizeF_StructureToPtr_object_intptr_bool
bl wrapper_other_System_Drawing_SizeF_PtrToStructure_intptr_object
method_addresses_end:

.section __TEXT, __const
	.align 3
unbox_trampolines:

	.long 2,3,4,5,6,7,8,9
	.long 10,11,12,13,14,15,16,17
	.long 18,19,20,21,22,23,24,29
	.long 30,31,32,33,34
unbox_trampolines_end:

	.long 0
.text
	.align 3
unbox_trampoline_addresses:
bl ut_2
bl ut_3
bl ut_4
bl ut_5
bl ut_6
bl ut_7
bl ut_8
bl ut_9
bl ut_10
bl ut_11
bl ut_12
bl ut_13
bl ut_14
bl ut_15
bl ut_16
bl ut_17
bl ut_18
bl ut_19
bl ut_20
bl ut_21
bl ut_22
bl ut_23
bl ut_24
bl ut_29
bl ut_30
bl ut_31
bl ut_32
bl ut_33
bl ut_34

	.long 0
.section __TEXT, __const
	.align 3
unwind_info:

	.byte 0,13,12,31,0,68,14,32,157,4,158,3,68,13,29,14,12,31,0,68,14,160,1,157,20,158,19,68,13,29,19,12
	.byte 31,0,68,14,48,157,6,158,5,68,13,29,68,152,4,68,154,3,13,12,31,0,68,14,96,157,12,158,11,68,13,29
	.byte 16,12,31,0,68,14,48,157,6,158,5,68,13,29,68,154,4,19,12,31,0,68,14,64,157,8,158,7,68,13,29,68
	.byte 152,6,68,154,5,13,12,31,0,68,14,112,157,14,158,13,68,13,29,16,12,31,0,68,14,64,157,8,158,7,68,13
	.byte 29,68,154,6,17,12,31,0,68,14,144,1,157,18,158,17,68,13,29,68,154,16,13,12,31,0,68,14,48,157,6,158
	.byte 5,68,13,29

.text
	.align 4
plt:
mono_aot_System_Drawing_Common_plt:
	.no_dead_strip plt_System_Drawing_PointF_Equals_System_Drawing_PointF
plt_System_Drawing_PointF_Equals_System_Drawing_PointF:
_p_1:
adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x16, [x16, #304]
br x16
.word 201
	.no_dead_strip plt__jit_icall_mono_arch_throw_corlib_exception
plt__jit_icall_mono_arch_throw_corlib_exception:
_p_2:
adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x16, [x16, #312]
br x16
.word 203
	.no_dead_strip plt_System_Drawing_PointF_op_Equality_System_Drawing_PointF_System_Drawing_PointF
plt_System_Drawing_PointF_op_Equality_System_Drawing_PointF_System_Drawing_PointF:
_p_3:
adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x16, [x16, #320]
br x16
.word 205
	.no_dead_strip plt_single_GetHashCode
plt_single_GetHashCode:
_p_4:
adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x16, [x16, #328]
br x16
.word 207
	.no_dead_strip plt_wrapper_alloc_object_AllocVector_intptr_intptr
plt_wrapper_alloc_object_AllocVector_intptr_intptr:
_p_5:
adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x16, [x16, #336]
br x16
.word 212
	.no_dead_strip plt_single_ToString
plt_single_ToString:
_p_6:
adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x16, [x16, #344]
br x16
.word 220
	.no_dead_strip plt_string_Concat_string__
plt_string_Concat_string__:
_p_7:
adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x16, [x16, #352]
br x16
.word 225
	.no_dead_strip plt_System_Drawing_RectangleF_Equals_System_Drawing_RectangleF
plt_System_Drawing_RectangleF_Equals_System_Drawing_RectangleF:
_p_8:
adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x16, [x16, #360]
br x16
.word 230
	.no_dead_strip plt_System_Drawing_RectangleF_op_Equality_System_Drawing_RectangleF_System_Drawing_RectangleF
plt_System_Drawing_RectangleF_op_Equality_System_Drawing_RectangleF_System_Drawing_RectangleF:
_p_9:
adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x16, [x16, #368]
br x16
.word 232
	.no_dead_strip plt_System_Drawing_SizeF_Equals_System_Drawing_SizeF
plt_System_Drawing_SizeF_Equals_System_Drawing_SizeF:
_p_10:
adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x16, [x16, #376]
br x16
.word 234
	.no_dead_strip plt_System_Drawing_SizeF_op_Equality_System_Drawing_SizeF_System_Drawing_SizeF
plt_System_Drawing_SizeF_op_Equality_System_Drawing_SizeF_System_Drawing_SizeF:
_p_11:
adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x16, [x16, #384]
br x16
.word 236
plt_end:
.section __DATA, __bss
	.align 3
.lcomm mono_aot_System_Drawing_Common_got, 392
got_end:
.section __TEXT, __const
	.align 3
Lglobals_hash:

	.short 11, 0, 0, 0, 0, 0, 0, 0
	.short 0, 0, 0, 0, 0, 1, 0, 0
	.short 0, 0, 0, 0, 0, 0, 0
.section __TEXT, __const
	.align 2
name_0:
	.asciz "_unbox_trampoline_p"
.data
	.align 3
globals:
	.align 3
	.quad Lglobals_hash
	.align 3
	.quad name_0
	.align 3
	.quad _unbox_trampoline_p

	.long 0,0
.section __TEXT, __const
	.align 2
runtime_version:
	.asciz ""
.section __TEXT, __const
	.align 2
assembly_guid:
	.asciz "DE788311-470F-4E8F-B55B-CECA1E9C71F0"
.section __TEXT, __const
	.align 2
assembly_name:
	.asciz "System.Drawing.Common"
.data
	.align 3
_mono_aot_file_info:

	.long 172,0
	.align 3
	.quad mono_aot_System_Drawing_Common_got
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad jit_code_start
	.align 3
	.quad jit_code_end
	.align 3
	.quad method_addresses
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad mem_end
	.align 3
	.quad assembly_guid
	.align 3
	.quad runtime_version
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad globals
	.align 3
	.quad assembly_name
	.align 3
	.quad plt
	.align 3
	.quad plt_end
	.align 3
	.quad unwind_info
	.align 3
	.quad unbox_trampolines
	.align 3
	.quad unbox_trampolines_end
	.align 3
	.quad unbox_trampoline_addresses

	.long 37,392,12,35,6,98,387000831,0
	.long 433,128,8,8,8,9,8388607,0
	.long 4,25,1208,0,0,768,560,336
	.long 0,456,528,392,0,256,64,760
	.long 0,0,0,0,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.byte 126,62,253,215,136,220,239,89,230,137,52,43,208,232,4,43
	.globl _mono_aot_module_System_Drawing_Common_info
	.align 3
_mono_aot_module_System_Drawing_Common_info:
	.align 3
	.quad _mono_aot_file_info
.section __DWARF, __debug_info,regular,debug
LTDIE_2:

	.byte 17
	.asciz "System_Object"

	.byte 16,7
	.asciz "System_Object"

LDIFF_SYM4=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM4
LTDIE_2_POINTER:

	.byte 13
LDIFF_SYM5=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM5
LTDIE_2_REFERENCE:

	.byte 14
LDIFF_SYM6=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM6
LTDIE_1:

	.byte 5
	.asciz "System_ValueType"

	.byte 16,16
LDIFF_SYM7=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM7
	.byte 2,35,0,0,7
	.asciz "System_ValueType"

LDIFF_SYM8=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM8
LTDIE_1_POINTER:

	.byte 13
LDIFF_SYM9=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM9
LTDIE_1_REFERENCE:

	.byte 14
LDIFF_SYM10=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM10
LTDIE_0:

	.byte 5
	.asciz "System_Int32"

	.byte 20,16
LDIFF_SYM11=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM11
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM12=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM12
	.byte 2,35,16,0,7
	.asciz "System_Int32"

LDIFF_SYM13=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM13
LTDIE_0_POINTER:

	.byte 13
LDIFF_SYM14=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM14
LTDIE_0_REFERENCE:

	.byte 14
LDIFF_SYM15=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM15
	.byte 2
	.asciz "System.Numerics.Hashing.HashHelpers:Combine"
	.asciz "System_Numerics_Hashing_HashHelpers_Combine_int_int"

	.byte 0,0
	.quad System_Numerics_Hashing_HashHelpers_Combine_int_int
	.quad Lme_0

	.byte 2,118,16,3
	.asciz "param0"

LDIFF_SYM16=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM16
	.byte 2,141,16,3
	.asciz "param1"

LDIFF_SYM17=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM17
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM18=Lfde0_end - Lfde0_start
	.long LDIFF_SYM18
Lfde0_start:

	.long 0
	.align 3
	.quad System_Numerics_Hashing_HashHelpers_Combine_int_int

LDIFF_SYM19=Lme_0 - System_Numerics_Hashing_HashHelpers_Combine_int_int
	.long LDIFF_SYM19
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde0_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_4:

	.byte 5
	.asciz "System_ComponentModel_TypeConverter"

	.byte 16,16
LDIFF_SYM20=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM20
	.byte 2,35,0,0,7
	.asciz "System_ComponentModel_TypeConverter"

LDIFF_SYM21=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM21
LTDIE_4_POINTER:

	.byte 13
LDIFF_SYM22=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM22
LTDIE_4_REFERENCE:

	.byte 14
LDIFF_SYM23=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM23
LTDIE_3:

	.byte 5
	.asciz "System_Drawing_SizeFConverter"

	.byte 16,16
LDIFF_SYM24=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM24
	.byte 2,35,0,0,7
	.asciz "System_Drawing_SizeFConverter"

LDIFF_SYM25=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM25
LTDIE_3_POINTER:

	.byte 13
LDIFF_SYM26=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM26
LTDIE_3_REFERENCE:

	.byte 14
LDIFF_SYM27=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM27
	.byte 2
	.asciz "System.Drawing.SizeFConverter:.ctor"
	.asciz "System_Drawing_SizeFConverter__ctor"

	.byte 0,0
	.quad System_Drawing_SizeFConverter__ctor
	.quad Lme_1

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM28=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM28
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM29=Lfde1_end - Lfde1_start
	.long LDIFF_SYM29
Lfde1_start:

	.long 0
	.align 3
	.quad System_Drawing_SizeFConverter__ctor

LDIFF_SYM30=Lme_1 - System_Drawing_SizeFConverter__ctor
	.long LDIFF_SYM30
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde1_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_6:

	.byte 5
	.asciz "System_Single"

	.byte 20,16
LDIFF_SYM31=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM31
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM32=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM32
	.byte 2,35,16,0,7
	.asciz "System_Single"

LDIFF_SYM33=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM33
LTDIE_6_POINTER:

	.byte 13
LDIFF_SYM34=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM34
LTDIE_6_REFERENCE:

	.byte 14
LDIFF_SYM35=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM35
LTDIE_5:

	.byte 5
	.asciz "System_Drawing_PointF"

	.byte 24,16
LDIFF_SYM36=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM36
	.byte 2,35,0,6
	.asciz "x"

LDIFF_SYM37=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM37
	.byte 2,35,0,6
	.asciz "y"

LDIFF_SYM38=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM38
	.byte 2,35,4,0,7
	.asciz "System_Drawing_PointF"

LDIFF_SYM39=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM39
LTDIE_5_POINTER:

	.byte 13
LDIFF_SYM40=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM40
LTDIE_5_REFERENCE:

	.byte 14
LDIFF_SYM41=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM41
	.byte 2
	.asciz "System.Drawing.PointF:get_X"
	.asciz "System_Drawing_PointF_get_X"

	.byte 0,0
	.quad System_Drawing_PointF_get_X
	.quad Lme_2

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM42=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM42
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM43=Lfde2_end - Lfde2_start
	.long LDIFF_SYM43
Lfde2_start:

	.long 0
	.align 3
	.quad System_Drawing_PointF_get_X

LDIFF_SYM44=Lme_2 - System_Drawing_PointF_get_X
	.long LDIFF_SYM44
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde2_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Drawing.PointF:get_Y"
	.asciz "System_Drawing_PointF_get_Y"

	.byte 0,0
	.quad System_Drawing_PointF_get_Y
	.quad Lme_3

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM45=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM45
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM46=Lfde3_end - Lfde3_start
	.long LDIFF_SYM46
Lfde3_start:

	.long 0
	.align 3
	.quad System_Drawing_PointF_get_Y

LDIFF_SYM47=Lme_3 - System_Drawing_PointF_get_Y
	.long LDIFF_SYM47
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde3_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Drawing.PointF:op_Equality"
	.asciz "System_Drawing_PointF_op_Equality_System_Drawing_PointF_System_Drawing_PointF"

	.byte 0,0
	.quad System_Drawing_PointF_op_Equality_System_Drawing_PointF_System_Drawing_PointF
	.quad Lme_4

	.byte 2,118,16,3
	.asciz "param0"

LDIFF_SYM48=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM48
	.byte 2,141,16,3
	.asciz "param1"

LDIFF_SYM49=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM49
	.byte 3,141,208,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM50=Lfde4_end - Lfde4_start
	.long LDIFF_SYM50
Lfde4_start:

	.long 0
	.align 3
	.quad System_Drawing_PointF_op_Equality_System_Drawing_PointF_System_Drawing_PointF

LDIFF_SYM51=Lme_4 - System_Drawing_PointF_op_Equality_System_Drawing_PointF_System_Drawing_PointF
	.long LDIFF_SYM51
	.long 0
	.byte 12,31,0,68,14,160,1,157,20,158,19,68,13,29
	.align 3
Lfde4_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Drawing.PointF:Equals"
	.asciz "System_Drawing_PointF_Equals_object"

	.byte 0,0
	.quad System_Drawing_PointF_Equals_object
	.quad Lme_5

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM52=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM52
	.byte 2,141,32,3
	.asciz "param0"

LDIFF_SYM53=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM53
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM54=Lfde5_end - Lfde5_start
	.long LDIFF_SYM54
Lfde5_start:

	.long 0
	.align 3
	.quad System_Drawing_PointF_Equals_object

LDIFF_SYM55=Lme_5 - System_Drawing_PointF_Equals_object
	.long LDIFF_SYM55
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,152,4,68,154,3
	.align 3
Lfde5_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Drawing.PointF:Equals"
	.asciz "System_Drawing_PointF_Equals_System_Drawing_PointF"

	.byte 0,0
	.quad System_Drawing_PointF_Equals_System_Drawing_PointF
	.quad Lme_6

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM56=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM56
	.byte 2,141,16,3
	.asciz "param0"

LDIFF_SYM57=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM57
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM58=Lfde6_end - Lfde6_start
	.long LDIFF_SYM58
Lfde6_start:

	.long 0
	.align 3
	.quad System_Drawing_PointF_Equals_System_Drawing_PointF

LDIFF_SYM59=Lme_6 - System_Drawing_PointF_Equals_System_Drawing_PointF
	.long LDIFF_SYM59
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29
	.align 3
Lfde6_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Drawing.PointF:GetHashCode"
	.asciz "System_Drawing_PointF_GetHashCode"

	.byte 0,0
	.quad System_Drawing_PointF_GetHashCode
	.quad Lme_7

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM60=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM60
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM61=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM61
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM62=Lfde7_end - Lfde7_start
	.long LDIFF_SYM62
Lfde7_start:

	.long 0
	.align 3
	.quad System_Drawing_PointF_GetHashCode

LDIFF_SYM63=Lme_7 - System_Drawing_PointF_GetHashCode
	.long LDIFF_SYM63
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,154,4
	.align 3
Lfde7_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Drawing.PointF:ToString"
	.asciz "System_Drawing_PointF_ToString"

	.byte 0,0
	.quad System_Drawing_PointF_ToString
	.quad Lme_8

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM64=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM64
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM65=Lfde8_end - Lfde8_start
	.long LDIFF_SYM65
Lfde8_start:

	.long 0
	.align 3
	.quad System_Drawing_PointF_ToString

LDIFF_SYM66=Lme_8 - System_Drawing_PointF_ToString
	.long LDIFF_SYM66
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29
	.align 3
Lfde8_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_7:

	.byte 5
	.asciz "System_Drawing_RectangleF"

	.byte 32,16
LDIFF_SYM67=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM67
	.byte 2,35,0,6
	.asciz "x"

LDIFF_SYM68=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM68
	.byte 2,35,0,6
	.asciz "y"

LDIFF_SYM69=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM69
	.byte 2,35,4,6
	.asciz "width"

LDIFF_SYM70=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM70
	.byte 2,35,8,6
	.asciz "height"

LDIFF_SYM71=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM71
	.byte 2,35,12,0,7
	.asciz "System_Drawing_RectangleF"

LDIFF_SYM72=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM72
LTDIE_7_POINTER:

	.byte 13
LDIFF_SYM73=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM73
LTDIE_7_REFERENCE:

	.byte 14
LDIFF_SYM74=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM74
	.byte 2
	.asciz "System.Drawing.RectangleF:get_X"
	.asciz "System_Drawing_RectangleF_get_X"

	.byte 0,0
	.quad System_Drawing_RectangleF_get_X
	.quad Lme_9

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM75=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM75
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM76=Lfde9_end - Lfde9_start
	.long LDIFF_SYM76
Lfde9_start:

	.long 0
	.align 3
	.quad System_Drawing_RectangleF_get_X

LDIFF_SYM77=Lme_9 - System_Drawing_RectangleF_get_X
	.long LDIFF_SYM77
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde9_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Drawing.RectangleF:get_Y"
	.asciz "System_Drawing_RectangleF_get_Y"

	.byte 0,0
	.quad System_Drawing_RectangleF_get_Y
	.quad Lme_a

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM78=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM78
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM79=Lfde10_end - Lfde10_start
	.long LDIFF_SYM79
Lfde10_start:

	.long 0
	.align 3
	.quad System_Drawing_RectangleF_get_Y

LDIFF_SYM80=Lme_a - System_Drawing_RectangleF_get_Y
	.long LDIFF_SYM80
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde10_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Drawing.RectangleF:get_Width"
	.asciz "System_Drawing_RectangleF_get_Width"

	.byte 0,0
	.quad System_Drawing_RectangleF_get_Width
	.quad Lme_b

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM81=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM81
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM82=Lfde11_end - Lfde11_start
	.long LDIFF_SYM82
Lfde11_start:

	.long 0
	.align 3
	.quad System_Drawing_RectangleF_get_Width

LDIFF_SYM83=Lme_b - System_Drawing_RectangleF_get_Width
	.long LDIFF_SYM83
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde11_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Drawing.RectangleF:get_Height"
	.asciz "System_Drawing_RectangleF_get_Height"

	.byte 0,0
	.quad System_Drawing_RectangleF_get_Height
	.quad Lme_c

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM84=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM84
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM85=Lfde12_end - Lfde12_start
	.long LDIFF_SYM85
Lfde12_start:

	.long 0
	.align 3
	.quad System_Drawing_RectangleF_get_Height

LDIFF_SYM86=Lme_c - System_Drawing_RectangleF_get_Height
	.long LDIFF_SYM86
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde12_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Drawing.RectangleF:Equals"
	.asciz "System_Drawing_RectangleF_Equals_object"

	.byte 0,0
	.quad System_Drawing_RectangleF_Equals_object
	.quad Lme_d

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM87=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM87
	.byte 2,141,32,3
	.asciz "param0"

LDIFF_SYM88=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM88
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM89=Lfde13_end - Lfde13_start
	.long LDIFF_SYM89
Lfde13_start:

	.long 0
	.align 3
	.quad System_Drawing_RectangleF_Equals_object

LDIFF_SYM90=Lme_d - System_Drawing_RectangleF_Equals_object
	.long LDIFF_SYM90
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,152,6,68,154,5
	.align 3
Lfde13_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Drawing.RectangleF:Equals"
	.asciz "System_Drawing_RectangleF_Equals_System_Drawing_RectangleF"

	.byte 0,0
	.quad System_Drawing_RectangleF_Equals_System_Drawing_RectangleF
	.quad Lme_e

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM91=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM91
	.byte 2,141,16,3
	.asciz "param0"

LDIFF_SYM92=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM92
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM93=Lfde14_end - Lfde14_start
	.long LDIFF_SYM93
Lfde14_start:

	.long 0
	.align 3
	.quad System_Drawing_RectangleF_Equals_System_Drawing_RectangleF

LDIFF_SYM94=Lme_e - System_Drawing_RectangleF_Equals_System_Drawing_RectangleF
	.long LDIFF_SYM94
	.long 0
	.byte 12,31,0,68,14,112,157,14,158,13,68,13,29
	.align 3
Lfde14_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Drawing.RectangleF:op_Equality"
	.asciz "System_Drawing_RectangleF_op_Equality_System_Drawing_RectangleF_System_Drawing_RectangleF"

	.byte 0,0
	.quad System_Drawing_RectangleF_op_Equality_System_Drawing_RectangleF_System_Drawing_RectangleF
	.quad Lme_f

	.byte 2,118,16,3
	.asciz "param0"

LDIFF_SYM95=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM95
	.byte 2,141,16,3
	.asciz "param1"

LDIFF_SYM96=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM96
	.byte 3,141,208,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM97=Lfde15_end - Lfde15_start
	.long LDIFF_SYM97
Lfde15_start:

	.long 0
	.align 3
	.quad System_Drawing_RectangleF_op_Equality_System_Drawing_RectangleF_System_Drawing_RectangleF

LDIFF_SYM98=Lme_f - System_Drawing_RectangleF_op_Equality_System_Drawing_RectangleF_System_Drawing_RectangleF
	.long LDIFF_SYM98
	.long 0
	.byte 12,31,0,68,14,160,1,157,20,158,19,68,13,29
	.align 3
Lfde15_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Drawing.RectangleF:GetHashCode"
	.asciz "System_Drawing_RectangleF_GetHashCode"

	.byte 0,0
	.quad System_Drawing_RectangleF_GetHashCode
	.quad Lme_10

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM99=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM99
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM100=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM100
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM101=Lfde16_end - Lfde16_start
	.long LDIFF_SYM101
Lfde16_start:

	.long 0
	.align 3
	.quad System_Drawing_RectangleF_GetHashCode

LDIFF_SYM102=Lme_10 - System_Drawing_RectangleF_GetHashCode
	.long LDIFF_SYM102
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,154,6
	.align 3
Lfde16_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Drawing.RectangleF:ToString"
	.asciz "System_Drawing_RectangleF_ToString"

	.byte 0,0
	.quad System_Drawing_RectangleF_ToString
	.quad Lme_11

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM103=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM103
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM104=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM104
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM105=Lfde17_end - Lfde17_start
	.long LDIFF_SYM105
Lfde17_start:

	.long 0
	.align 3
	.quad System_Drawing_RectangleF_ToString

LDIFF_SYM106=Lme_11 - System_Drawing_RectangleF_ToString
	.long LDIFF_SYM106
	.long 0
	.byte 12,31,0,68,14,144,1,157,18,158,17,68,13,29,68,154,16
	.align 3
Lfde17_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Drawing.SizeF:op_Equality"
	.asciz "System_Drawing_SizeF_op_Equality_System_Drawing_SizeF_System_Drawing_SizeF"

	.byte 0,0
	.quad System_Drawing_SizeF_op_Equality_System_Drawing_SizeF_System_Drawing_SizeF
	.quad Lme_12

	.byte 2,118,16,3
	.asciz "param0"

LDIFF_SYM107=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM107
	.byte 2,141,16,3
	.asciz "param1"

LDIFF_SYM108=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM108
	.byte 3,141,208,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM109=Lfde18_end - Lfde18_start
	.long LDIFF_SYM109
Lfde18_start:

	.long 0
	.align 3
	.quad System_Drawing_SizeF_op_Equality_System_Drawing_SizeF_System_Drawing_SizeF

LDIFF_SYM110=Lme_12 - System_Drawing_SizeF_op_Equality_System_Drawing_SizeF_System_Drawing_SizeF
	.long LDIFF_SYM110
	.long 0
	.byte 12,31,0,68,14,160,1,157,20,158,19,68,13,29
	.align 3
Lfde18_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_8:

	.byte 5
	.asciz "System_Drawing_SizeF"

	.byte 24,16
LDIFF_SYM111=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM111
	.byte 2,35,0,6
	.asciz "width"

LDIFF_SYM112=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM112
	.byte 2,35,0,6
	.asciz "height"

LDIFF_SYM113=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM113
	.byte 2,35,4,0,7
	.asciz "System_Drawing_SizeF"

LDIFF_SYM114=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM114
LTDIE_8_POINTER:

	.byte 13
LDIFF_SYM115=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM115
LTDIE_8_REFERENCE:

	.byte 14
LDIFF_SYM116=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM116
	.byte 2
	.asciz "System.Drawing.SizeF:get_Width"
	.asciz "System_Drawing_SizeF_get_Width"

	.byte 0,0
	.quad System_Drawing_SizeF_get_Width
	.quad Lme_13

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM117=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM117
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM118=Lfde19_end - Lfde19_start
	.long LDIFF_SYM118
Lfde19_start:

	.long 0
	.align 3
	.quad System_Drawing_SizeF_get_Width

LDIFF_SYM119=Lme_13 - System_Drawing_SizeF_get_Width
	.long LDIFF_SYM119
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde19_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Drawing.SizeF:get_Height"
	.asciz "System_Drawing_SizeF_get_Height"

	.byte 0,0
	.quad System_Drawing_SizeF_get_Height
	.quad Lme_14

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM120=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM120
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM121=Lfde20_end - Lfde20_start
	.long LDIFF_SYM121
Lfde20_start:

	.long 0
	.align 3
	.quad System_Drawing_SizeF_get_Height

LDIFF_SYM122=Lme_14 - System_Drawing_SizeF_get_Height
	.long LDIFF_SYM122
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde20_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Drawing.SizeF:Equals"
	.asciz "System_Drawing_SizeF_Equals_object"

	.byte 0,0
	.quad System_Drawing_SizeF_Equals_object
	.quad Lme_15

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM123=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM123
	.byte 2,141,32,3
	.asciz "param0"

LDIFF_SYM124=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM124
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM125=Lfde21_end - Lfde21_start
	.long LDIFF_SYM125
Lfde21_start:

	.long 0
	.align 3
	.quad System_Drawing_SizeF_Equals_object

LDIFF_SYM126=Lme_15 - System_Drawing_SizeF_Equals_object
	.long LDIFF_SYM126
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,152,4,68,154,3
	.align 3
Lfde21_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Drawing.SizeF:Equals"
	.asciz "System_Drawing_SizeF_Equals_System_Drawing_SizeF"

	.byte 0,0
	.quad System_Drawing_SizeF_Equals_System_Drawing_SizeF
	.quad Lme_16

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM127=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM127
	.byte 2,141,16,3
	.asciz "param0"

LDIFF_SYM128=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM128
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM129=Lfde22_end - Lfde22_start
	.long LDIFF_SYM129
Lfde22_start:

	.long 0
	.align 3
	.quad System_Drawing_SizeF_Equals_System_Drawing_SizeF

LDIFF_SYM130=Lme_16 - System_Drawing_SizeF_Equals_System_Drawing_SizeF
	.long LDIFF_SYM130
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29
	.align 3
Lfde22_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Drawing.SizeF:GetHashCode"
	.asciz "System_Drawing_SizeF_GetHashCode"

	.byte 0,0
	.quad System_Drawing_SizeF_GetHashCode
	.quad Lme_17

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM131=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM131
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM132=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM132
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM133=Lfde23_end - Lfde23_start
	.long LDIFF_SYM133
Lfde23_start:

	.long 0
	.align 3
	.quad System_Drawing_SizeF_GetHashCode

LDIFF_SYM134=Lme_17 - System_Drawing_SizeF_GetHashCode
	.long LDIFF_SYM134
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,154,4
	.align 3
Lfde23_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Drawing.SizeF:ToString"
	.asciz "System_Drawing_SizeF_ToString"

	.byte 0,0
	.quad System_Drawing_SizeF_ToString
	.quad Lme_18

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM135=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM135
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM136=Lfde24_end - Lfde24_start
	.long LDIFF_SYM136
Lfde24_start:

	.long 0
	.align 3
	.quad System_Drawing_SizeF_ToString

LDIFF_SYM137=Lme_18 - System_Drawing_SizeF_ToString
	.long LDIFF_SYM137
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29
	.align 3
Lfde24_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_9:

	.byte 5
	.asciz "System_Boolean"

	.byte 17,16
LDIFF_SYM138=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM138
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM139=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM139
	.byte 2,35,16,0,7
	.asciz "System_Boolean"

LDIFF_SYM140=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM140
LTDIE_9_POINTER:

	.byte 13
LDIFF_SYM141=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM141
LTDIE_9_REFERENCE:

	.byte 14
LDIFF_SYM142=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM142
	.byte 2
	.asciz "(wrapper_other)_System.Drawing.PointF:StructureToPtr"
	.asciz "wrapper_other_System_Drawing_PointF_StructureToPtr_object_intptr_bool"

	.byte 0,0
	.quad wrapper_other_System_Drawing_PointF_StructureToPtr_object_intptr_bool
	.quad Lme_1d

	.byte 2,118,16,3
	.asciz "param0"

LDIFF_SYM143=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM143
	.byte 2,141,16,3
	.asciz "param1"

LDIFF_SYM144=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM144
	.byte 2,141,24,3
	.asciz "param2"

LDIFF_SYM145=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM145
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM146=Lfde25_end - Lfde25_start
	.long LDIFF_SYM146
Lfde25_start:

	.long 0
	.align 3
	.quad wrapper_other_System_Drawing_PointF_StructureToPtr_object_intptr_bool

LDIFF_SYM147=Lme_1d - wrapper_other_System_Drawing_PointF_StructureToPtr_object_intptr_bool
	.long LDIFF_SYM147
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde25_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "(wrapper_other)_System.Drawing.PointF:PtrToStructure"
	.asciz "wrapper_other_System_Drawing_PointF_PtrToStructure_intptr_object"

	.byte 0,0
	.quad wrapper_other_System_Drawing_PointF_PtrToStructure_intptr_object
	.quad Lme_1e

	.byte 2,118,16,3
	.asciz "param0"

LDIFF_SYM148=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM148
	.byte 2,141,16,3
	.asciz "param1"

LDIFF_SYM149=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM149
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM150=Lfde26_end - Lfde26_start
	.long LDIFF_SYM150
Lfde26_start:

	.long 0
	.align 3
	.quad wrapper_other_System_Drawing_PointF_PtrToStructure_intptr_object

LDIFF_SYM151=Lme_1e - wrapper_other_System_Drawing_PointF_PtrToStructure_intptr_object
	.long LDIFF_SYM151
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde26_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "(wrapper_other)_System.Drawing.RectangleF:StructureToPtr"
	.asciz "wrapper_other_System_Drawing_RectangleF_StructureToPtr_object_intptr_bool"

	.byte 0,0
	.quad wrapper_other_System_Drawing_RectangleF_StructureToPtr_object_intptr_bool
	.quad Lme_1f

	.byte 2,118,16,3
	.asciz "param0"

LDIFF_SYM152=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM152
	.byte 2,141,16,3
	.asciz "param1"

LDIFF_SYM153=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM153
	.byte 2,141,24,3
	.asciz "param2"

LDIFF_SYM154=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM154
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM155=Lfde27_end - Lfde27_start
	.long LDIFF_SYM155
Lfde27_start:

	.long 0
	.align 3
	.quad wrapper_other_System_Drawing_RectangleF_StructureToPtr_object_intptr_bool

LDIFF_SYM156=Lme_1f - wrapper_other_System_Drawing_RectangleF_StructureToPtr_object_intptr_bool
	.long LDIFF_SYM156
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde27_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "(wrapper_other)_System.Drawing.RectangleF:PtrToStructure"
	.asciz "wrapper_other_System_Drawing_RectangleF_PtrToStructure_intptr_object"

	.byte 0,0
	.quad wrapper_other_System_Drawing_RectangleF_PtrToStructure_intptr_object
	.quad Lme_20

	.byte 2,118,16,3
	.asciz "param0"

LDIFF_SYM157=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM157
	.byte 2,141,16,3
	.asciz "param1"

LDIFF_SYM158=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM158
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM159=Lfde28_end - Lfde28_start
	.long LDIFF_SYM159
Lfde28_start:

	.long 0
	.align 3
	.quad wrapper_other_System_Drawing_RectangleF_PtrToStructure_intptr_object

LDIFF_SYM160=Lme_20 - wrapper_other_System_Drawing_RectangleF_PtrToStructure_intptr_object
	.long LDIFF_SYM160
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde28_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "(wrapper_other)_System.Drawing.SizeF:StructureToPtr"
	.asciz "wrapper_other_System_Drawing_SizeF_StructureToPtr_object_intptr_bool"

	.byte 0,0
	.quad wrapper_other_System_Drawing_SizeF_StructureToPtr_object_intptr_bool
	.quad Lme_21

	.byte 2,118,16,3
	.asciz "param0"

LDIFF_SYM161=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM161
	.byte 2,141,16,3
	.asciz "param1"

LDIFF_SYM162=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM162
	.byte 2,141,24,3
	.asciz "param2"

LDIFF_SYM163=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM163
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM164=Lfde29_end - Lfde29_start
	.long LDIFF_SYM164
Lfde29_start:

	.long 0
	.align 3
	.quad wrapper_other_System_Drawing_SizeF_StructureToPtr_object_intptr_bool

LDIFF_SYM165=Lme_21 - wrapper_other_System_Drawing_SizeF_StructureToPtr_object_intptr_bool
	.long LDIFF_SYM165
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde29_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "(wrapper_other)_System.Drawing.SizeF:PtrToStructure"
	.asciz "wrapper_other_System_Drawing_SizeF_PtrToStructure_intptr_object"

	.byte 0,0
	.quad wrapper_other_System_Drawing_SizeF_PtrToStructure_intptr_object
	.quad Lme_22

	.byte 2,118,16,3
	.asciz "param0"

LDIFF_SYM166=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM166
	.byte 2,141,16,3
	.asciz "param1"

LDIFF_SYM167=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM167
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM168=Lfde30_end - Lfde30_start
	.long LDIFF_SYM168
Lfde30_start:

	.long 0
	.align 3
	.quad wrapper_other_System_Drawing_SizeF_PtrToStructure_intptr_object

LDIFF_SYM169=Lme_22 - wrapper_other_System_Drawing_SizeF_PtrToStructure_intptr_object
	.long LDIFF_SYM169
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde30_end:

.section __DWARF, __debug_info,regular,debug

	.byte 0
Ldebug_info_end:
.text
	.align 3
mem_end:
