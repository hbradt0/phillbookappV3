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
	.no_dead_strip SR_Format_string_object__
SR_Format_string_object__:
.file 1 "<unknown>"
.loc 1 1 0
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400fa0
.word 0xb4000240

adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x0, [x16, #200]
.word 0x3980b410
.word 0xb5000050
bl _p_1

adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x0, [x16, #208]
.word 0xf9400000
.word 0xf90013a0
.word 0xd5033bbf
.word 0xf94013a0
.word 0xf9400ba1
.word 0xf9400fa2
bl _p_2
.word 0x14000002
.word 0xf9400ba0
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_0:
.text
	.align 4
	.no_dead_strip SR_Format_string_object_object
SR_Format_string_object_object:
.loc 1 1 0
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2

adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x0, [x16, #200]
.word 0x3980b410
.word 0xb5000050
bl _p_1

adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x0, [x16, #208]
.word 0xf9400000
.word 0xf9002ba0
.word 0xd5033bbf
.word 0xf9402ba0
.word 0xf9400ba1
.word 0xf9400fa2
.word 0xf94013a3
bl _p_3
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_1:
.text
	.align 4
	.no_dead_strip System_Numerics_Hashing_HashHelpers_Combine_int_int
System_Numerics_Hashing_HashHelpers_Combine_int_int:
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

Lme_2:
.text
	.align 4
	.no_dead_strip System_Drawing_SizeFConverter_CanConvertFrom_System_ComponentModel_ITypeDescriptorContext_System_Type
System_Drawing_SizeFConverter_CanConvertFrom_System_ComponentModel_ITypeDescriptorContext_System_Type:
.loc 1 1 0
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2

adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x1, [x16, #216]
.word 0xf94013a0
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x34000060
.word 0xd2800020
.word 0x14000006
.word 0xf9400ba0
.word 0xf9400fa1
.word 0xf94013a2
bl _p_4
.word 0x53001c00
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_3:
.text
	.align 4
	.no_dead_strip System_Drawing_SizeFConverter_CanConvertTo_System_ComponentModel_ITypeDescriptorContext_System_Type
System_Drawing_SizeFConverter_CanConvertTo_System_ComponentModel_ITypeDescriptorContext_System_Type:
.loc 1 1 0
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2

adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x1, [x16, #224]
.word 0xf94013a0
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x34000060
.word 0xd2800020
.word 0x14000008

adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x1, [x16, #232]
.word 0xf94013a0
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x53001c00
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_4:
.text
	.align 4
	.no_dead_strip System_Drawing_SizeFConverter_ConvertFrom_System_ComponentModel_ITypeDescriptorContext_System_Globalization_CultureInfo_object
System_Drawing_SizeFConverter_ConvertFrom_System_ComponentModel_ITypeDescriptorContext_System_Globalization_CultureInfo_object:
.loc 1 1 0
.word 0xa9b97bfd
.word 0x910003fd
.word 0xa90157b4
.word 0xa9025fb6
.word 0xa90367b8
.word 0xf90023ba
.word 0xaa0003f7
.word 0xaa0103f8
.word 0xaa0203f9
.word 0xaa0303fa
.word 0xaa1a03f6
.word 0xeb1f035f
.word 0x54000160
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400

adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x1, [x16, #240]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800016
.word 0xaa1603f5
.word 0xb40013f6
.word 0xaa1503e0
.word 0x394002be
bl _p_5
.word 0xaa0003fa
.word 0xaa1a03e0
.word 0xb9801000
.word 0x35000060
.word 0xd2800000
.word 0x1400009b
.word 0xb5000079
bl _p_6
.word 0xaa0003f9
.word 0xaa1903e0
.word 0x3940033e
bl _p_7
.word 0xaa0003e1
.word 0xaa0103e0
.word 0x3940003e
bl _p_8
.word 0xaa0003e1
.word 0xd2800000
.word 0xb9801022
.word 0xeb1f005f
.word 0x10000011
.word 0x54001249
.word 0xd37ff800
.word 0x8b010000
.word 0x79402800
.word 0x53003c17
.word 0xaa1a03e0
.word 0xaa1703e1
.word 0xd2800002
.word 0x3940035e
bl _p_9
.word 0xaa0003f7
.word 0xaa1703e0
.word 0xb9801801

adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x0, [x16, #248]
bl _p_10
.word 0xaa0003f6

adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x0, [x16, #256]
bl _p_11
.word 0xaa0003f5
.word 0xd2800014
.word 0x14000029
.word 0x93407e80
.word 0xb9801ae1
.word 0xeb00003f
.word 0x10000011
.word 0x54000ea9
.word 0xd37df000
.word 0x8b0002e0
.word 0x91008000
.word 0xf9400003
.word 0xaa1503e0
.word 0xaa1803e1
.word 0xaa1903e2
.word 0x394002be
bl _p_12
.word 0xf9400001
.word 0x3940b022
.word 0xeb1f005f
.word 0x10000011
.word 0x54000d41
.word 0xf9400021
.word 0xf9400021

adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x2, [x16, #264]
.word 0xeb02003f
.word 0x10000011
.word 0x54000c41
.word 0xbd401010
.word 0x1e22c200
.word 0x93407e80
.word 0xb9801ac1
.word 0xeb00003f
.word 0x10000011
.word 0x54000b09
.word 0xd37ef400
.word 0x8b0002c0
.word 0x91008000
.word 0x1e624010
.word 0xbd000010
.word 0x11000694
.word 0xb9801ac0
.word 0x6b00029f
.word 0x54fffacb
.word 0xb9801ac0
.word 0xd280005e
.word 0x6b1e001f
.word 0x54000561
.word 0xb9801ac0
.word 0xeb1f001f
.word 0x10000011
.word 0x540008e9
.word 0xbd4022d0
.word 0x1e22c201
.word 0xb9801ac0
.word 0xd280003e
.word 0xeb1e001f
.word 0x10000011
.word 0x54000809
.word 0xbd4026d0
.word 0x1e22c200
.word 0xb90053bf
.word 0xb90057bf
.word 0x1e624030
.word 0xbd005bb0
.word 0x1e624010
.word 0xbd005fb0
.word 0xbd405bb0
.word 0x1e22c200
.word 0x1e624010
.word 0xbd0053b0
.word 0xbd405fb0
.word 0x1e22c200
.word 0x1e624010
.word 0xbd0057b0
.word 0xb98053a0
.word 0xb9004ba0
.word 0xb98057a0
.word 0xb9004fa0

adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x0, [x16, #272]
.word 0xd2800301
bl _p_13
.word 0x91004001
.word 0xb9804ba2
.word 0xb9000022
.word 0xb9804fa2
.word 0xb9000422
.word 0x1400001a

adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2800021
bl _p_14
.word 0xf90033a0

adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2801021
bl _p_14
.word 0xaa0003e2
.word 0xf94033a0
.word 0xaa1a03e1
bl _p_15
.word 0xaa0003e1
.word 0xd2800fc0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_16
.word 0xaa1703e0
.word 0xaa1803e1
.word 0xaa1903e2
.word 0xaa1a03e3
bl _p_17
.word 0xa94157b4
.word 0xa9425fb6
.word 0xa94367b8
.word 0xf94023ba
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0
.word 0xd2801920
.word 0xaa1103e1
bl _p_18
.word 0xd28019c0
.word 0xaa1103e1
bl _p_18

Lme_5:
.text
	.align 4
	.no_dead_strip System_Drawing_SizeFConverter_ConvertTo_System_ComponentModel_ITypeDescriptorContext_System_Globalization_CultureInfo_object_System_Type
System_Drawing_SizeFConverter_ConvertTo_System_ComponentModel_ITypeDescriptorContext_System_Globalization_CultureInfo_object_System_Type:
.loc 1 1 0
.word 0xa9b57bfd
.word 0x910003fd
.word 0xf9000bb5
.word 0xa901e7b8
.word 0xf90017ba
.word 0xf9001ba0
.word 0xf9001fa1
.word 0xaa0203f8
.word 0xaa0303f9
.word 0xaa0403fa
.word 0xb9004bbf
.word 0xb9004fbf
.word 0xb90043bf
.word 0xb90047bf
.word 0xeb1f035f
.word 0x9a9f17e0
.word 0x350022c0

adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x0, [x16, #216]
.word 0xeb00035f
.word 0x9a9f17e0
.word 0x34000ea0
.word 0xaa1903f5
.word 0xeb1f033f
.word 0x54000160
.word 0xf9400320
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x1, [x16, #280]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800015
.word 0xb4000cf5
.word 0xf9400320
.word 0x3940b001
.word 0xeb1f003f
.word 0x10000011
.word 0x540020e1
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x1, [x16, #280]
.word 0xeb01001f
.word 0x10000011
.word 0x54001fe1
.word 0x91004320
.word 0xb9800001
.word 0xb9004ba1
.word 0xb9800400
.word 0xb9004fa0
.word 0xb5000078
bl _p_6
.word 0xaa0003f8
.word 0xaa1803e0
.word 0x3940031e
bl _p_7
.word 0xaa0003e1
.word 0xaa0103e0
.word 0x3940003e
bl _p_8

adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x1, [x16, #288]
bl _p_19
.word 0xf90033a0

adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x0, [x16, #256]
bl _p_11
.word 0xaa0003fa

adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x0, [x16, #296]
.word 0xd2800041
bl _p_10
.word 0xaa0003f9
.word 0xbd404bb0
.word 0x1e22c200
.word 0x1e624010
.word 0xbd0053b0
.word 0xbd4053b0
.word 0x1e22c200
.word 0xfd003ba0

adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x0, [x16, #304]
.word 0xd2800281
bl _p_13
.word 0xaa0003e3
.word 0xfd403ba0
.word 0x1e624010
.word 0xbd001070
.word 0xaa1a03e0
.word 0xf9401fa1
.word 0xaa1803e2
.word 0x3940035e
bl _p_20
.word 0xaa0003e2
.word 0xaa1903e0
.word 0xd2800001
.word 0xf9400323
.word 0xf9408470
.word 0xd63f0200
.word 0xbd404fb0
.word 0x1e22c200
.word 0x1e624010
.word 0xbd0053b0
.word 0xbd4053b0
.word 0x1e22c200
.word 0xfd0037a0

adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x0, [x16, #304]
.word 0xd2800281
bl _p_13
.word 0xaa0003e3
.word 0xfd4037a0
.word 0x1e624010
.word 0xbd001070
.word 0xaa1a03e0
.word 0xf9401fa1
.word 0xaa1803e2
.word 0x3940035e
bl _p_20
.word 0xaa0003e2
.word 0xaa1903e0
.word 0xd2800021
.word 0xf9400323
.word 0xf9408470
.word 0xd63f0200
.word 0xf94033a0
.word 0xaa1903e1
bl _p_21
.word 0x14000096

adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x0, [x16, #224]
.word 0xeb00035f
.word 0x9a9f17e0
.word 0x34001140
.word 0xaa1903f5
.word 0xeb1f033f
.word 0x54000160
.word 0xf9400320
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x1, [x16, #280]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800015
.word 0xb4000f95
.word 0xf9400320
.word 0x3940b001
.word 0xeb1f003f
.word 0x10000011
.word 0x540011a1
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x1, [x16, #280]
.word 0xeb01001f
.word 0x10000011
.word 0x540010a1
.word 0x91004320
.word 0xb9800001
.word 0xb90043a1
.word 0xb9800400
.word 0xb90047a0

adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x0, [x16, #312]
.word 0xf90033a0

adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x0, [x16, #320]
.word 0xd2800041
bl _p_10
.word 0xaa0003e3
.word 0xaa0303e0
.word 0xf90043a0

adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x2, [x16, #256]
.word 0xaa0303e0
.word 0xd2800001
.word 0xf9400063
.word 0xf9408470
.word 0xd63f0200
.word 0xf94043a3
.word 0xaa0303e0
.word 0xf9003fa0

adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x2, [x16, #256]
.word 0xaa0303e0
.word 0xd2800021
.word 0xf9400063
.word 0xf9408470
.word 0xd63f0200
.word 0xf94033a0
.word 0xf9403fa1
bl _p_22
.word 0xaa0003f5
.word 0xaa1503e0
.word 0xd2800001
bl _p_23
.word 0x53001c00
.word 0x34000840

adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x0, [x16, #328]
.word 0xd2800041
bl _p_10
.word 0xf9004fa0
.word 0xf9004ba0
.word 0xbd4043b0
.word 0x1e22c200
.word 0x1e624010
.word 0xbd0053b0
.word 0xbd4053b0
.word 0x1e22c200
.word 0xfd0053a0

adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x0, [x16, #304]
.word 0xd2800281
bl _p_13
.word 0xaa0003e2
.word 0xf9404fa3
.word 0xfd4053a0
.word 0x1e624010
.word 0xbd001050
.word 0xaa0303e0
.word 0xd2800001
.word 0xf9400063
.word 0xf9408470
.word 0xd63f0200
.word 0xf9404ba0
.word 0xf90043a0
.word 0xf9003fa0
.word 0xbd4047b0
.word 0x1e22c200
.word 0x1e624010
.word 0xbd0053b0
.word 0xbd4053b0
.word 0x1e22c200
.word 0xfd0047a0

adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x0, [x16, #304]
.word 0xd2800281
bl _p_13
.word 0xaa0003e2
.word 0xf94043a3
.word 0xfd4047a0
.word 0x1e624010
.word 0xbd001050
.word 0xaa0303e0
.word 0xd2800021
.word 0xf9400063
.word 0xf9408470
.word 0xd63f0200

adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x0, [x16, #336]
.word 0xd2800501
bl _p_13
.word 0xf9403fa2
.word 0xf90033a0
.word 0xaa1503e1
bl _p_24
.word 0xf94033a0
.word 0x14000007
.word 0xf9401ba0
.word 0xf9401fa1
.word 0xaa1803e2
.word 0xaa1903e3
.word 0xaa1a03e4
bl _p_25
.word 0xf9400bb5
.word 0xa941e7b8
.word 0xf94017ba
.word 0x910003bf
.word 0xa8cb7bfd
.word 0xd65f03c0

adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2801361
bl _p_14
.word 0xaa0003e1
.word 0xd2800fe0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_16
.word 0xd28019c0
.word 0xaa1103e1
bl _p_18

Lme_6:
.text
	.align 4
	.no_dead_strip System_Drawing_SizeFConverter_CreateInstance_System_ComponentModel_ITypeDescriptorContext_System_Collections_IDictionary
System_Drawing_SizeFConverter_CreateInstance_System_ComponentModel_ITypeDescriptorContext_System_Collections_IDictionary:
.loc 1 1 0
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xf90017a0
.word 0xf9001ba1
.word 0xaa0203fa
.word 0xb4000f1a

adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x1, [x16, #344]
.word 0xaa1a03e0
.word 0xf9400342

adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x15, [x16, #352]
.word 0x92800af0
.word 0xf2bffff0
.word 0xf8706850
.word 0xd63f0200
.word 0xaa0003f9

adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x1, [x16, #360]
.word 0xaa1a03e0
.word 0xf9400342

adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x15, [x16, #352]
.word 0x92800af0
.word 0xf2bffff0
.word 0xf8706850
.word 0xd63f0200
.word 0xaa0003fa
.word 0xb4000cf9
.word 0xb4000cda
.word 0xaa1903f8
.word 0xeb1f033f
.word 0x54000160
.word 0xf9400320
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x1, [x16, #264]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800018
.word 0xb4000b18
.word 0xaa1a03f8
.word 0xeb1f035f
.word 0x54000160
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x1, [x16, #264]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800018
.word 0xb4000958
.word 0xf9400320
.word 0x3940b001
.word 0xeb1f003f
.word 0x10000011
.word 0x54000be1
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x1, [x16, #264]
.word 0xeb01001f
.word 0x10000011
.word 0x54000ae1
.word 0xbd401330
.word 0x1e22c201
.word 0xf9400340
.word 0x3940b001
.word 0xeb1f003f
.word 0x10000011
.word 0x54000a01
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x1, [x16, #264]
.word 0xeb01001f
.word 0x10000011
.word 0x54000901
.word 0xbd401350
.word 0x1e22c200
.word 0xb90043bf
.word 0xb90047bf
.word 0x1e624030
.word 0xbd004bb0
.word 0x1e624010
.word 0xbd004fb0
.word 0xbd404bb0
.word 0x1e22c200
.word 0x1e624010
.word 0xbd0043b0
.word 0xbd404fb0
.word 0x1e22c200
.word 0x1e624010
.word 0xbd0047b0
.word 0xb98043a0
.word 0xb9003ba0
.word 0xb98047a0
.word 0xb9003fa0

adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x0, [x16, #272]
.word 0xd2800301
bl _p_13
.word 0x91004001
.word 0xb9803ba2
.word 0xb9000022
.word 0xb9803fa2
.word 0xb9000422
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd28017e1
bl _p_14
.word 0xaa0003e1
.word 0xd2800fe0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_16

adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2801ee1
bl _p_14
.word 0xf9002ba0

adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x0, [x16, #368]

adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x0, [x16, #376]
.word 0x3980b410
.word 0xb5000050
bl _p_1
.word 0xf9402ba0

adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x1, [x16, #384]
.word 0xf9400021
bl _p_26
.word 0xaa0003e1
.word 0xd2800fc0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_16
.word 0xd28019c0
.word 0xaa1103e1
bl _p_18

Lme_7:
.text
	.align 4
	.no_dead_strip System_Drawing_SizeFConverter_GetCreateInstanceSupported_System_ComponentModel_ITypeDescriptorContext
System_Drawing_SizeFConverter_GetCreateInstanceSupported_System_ComponentModel_ITypeDescriptorContext:
.loc 1 1 0
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xd2800020
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_8:
.text
	.align 4
	.no_dead_strip System_Drawing_SizeFConverter_GetProperties_System_ComponentModel_ITypeDescriptorContext_object_System_Attribute__
System_Drawing_SizeFConverter_GetProperties_System_ComponentModel_ITypeDescriptorContext_object_System_Attribute__:
.loc 1 1 0
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xf90017a3

adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x0, [x16, #312]
.word 0xf94017a1
bl _p_27
.word 0xaa0003e2

adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x0, [x16, #392]
.word 0xf9400001
.word 0xaa0203e0
.word 0x3940005e
bl _p_28
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_9:
.text
	.align 4
	.no_dead_strip System_Drawing_SizeFConverter_GetPropertiesSupported_System_ComponentModel_ITypeDescriptorContext
System_Drawing_SizeFConverter_GetPropertiesSupported_System_ComponentModel_ITypeDescriptorContext:
.loc 1 1 0
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xd2800020
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_a:
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

Lme_b:
.text
	.align 4
	.no_dead_strip System_Drawing_SizeFConverter__cctor
System_Drawing_SizeFConverter__cctor:
.loc 1 1 0
.word 0xa9bd7bfd
.word 0x910003fd

adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x0, [x16, #296]
.word 0xd2800041
bl _p_10
.word 0xaa0003e3
.word 0xaa0303e0
.word 0xf90013a0

adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x2, [x16, #344]
.word 0xaa0303e0
.word 0xd2800001
.word 0xf9400063
.word 0xf9408470
.word 0xd63f0200
.word 0xf94013a3
.word 0xaa0303e0
.word 0xf9000fa0

adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x2, [x16, #360]
.word 0xaa0303e0
.word 0xd2800021
.word 0xf9400063
.word 0xf9408470
.word 0xd63f0200
.word 0xf9400fa1

adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x0, [x16, #392]
.word 0xf9000ba0
.word 0xd5033bbf
.word 0xf9400ba0
.word 0xf9000001
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_c:
.text
ut_13:
add x0, x0, 16
b System_Drawing_PointF_get_X
ut_end:
.section __TEXT, __const
_unbox_trampoline_p:

	.long 0
LDIFF_SYM3=ut_end - ut_13
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

Lme_d:
.text
ut_14:
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

Lme_e:
.text
ut_15:
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

Lme_f:
.text
ut_16:
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
ldr x1, [x16, #400]
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
ldr x1, [x16, #400]
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
bl _p_29
.word 0x53001c00
.word 0x14000002
.word 0xd2800000
.word 0xf9400bb8
.word 0xf9400fba
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0
.word 0xd28019c0
.word 0xaa1103e1
bl _p_18

Lme_10:
.text
ut_17:
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
bl _p_30
.word 0x53001c00
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_11:
.text
ut_18:
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
bl _p_31
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
bl _p_31
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

Lme_12:
.text
ut_19:
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
ldr x0, [x16, #296]
.word 0xd28000a1
bl _p_10
.word 0xaa0003e3
.word 0xaa0303e0
.word 0xf9002ba0

adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x2, [x16, #408]
.word 0xaa0303e0
.word 0xd2800001
.word 0xf9400063
.word 0xf9408470
.word 0xd63f0200
.word 0xf9402ba0
.word 0xf90027a0
.word 0xf90023a0
.word 0xf9400ba0
bl _p_32
.word 0xaa0003e2
.word 0xf94027a3
.word 0xaa0303e0
.word 0xd2800021
.word 0xf9400063
.word 0xf9408470
.word 0xd63f0200
.word 0xf94023a3
.word 0xaa0303e0
.word 0xf9001fa0

adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x2, [x16, #416]
.word 0xaa0303e0
.word 0xd2800041
.word 0xf9400063
.word 0xf9408470
.word 0xd63f0200
.word 0xf9401fa0
.word 0xf9001ba0
.word 0xf90017a0
.word 0xf9400ba0
.word 0x91001000
bl _p_32
.word 0xaa0003e2
.word 0xf9401ba3
.word 0xaa0303e0
.word 0xd2800061
.word 0xf9400063
.word 0xf9408470
.word 0xd63f0200
.word 0xf94017a3
.word 0xaa0303e0
.word 0xf90013a0

adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x2, [x16, #424]
.word 0xaa0303e0
.word 0xd2800081
.word 0xf9400063
.word 0xf9408470
.word 0xd63f0200
.word 0xf94013a0
bl _p_33
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_13:
.text
ut_20:
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

Lme_14:
.text
ut_21:
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

Lme_15:
.text
ut_22:
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

Lme_16:
.text
ut_23:
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

Lme_17:
.text
ut_24:
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
ldr x1, [x16, #432]
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
ldr x1, [x16, #432]
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
bl _p_34
.word 0x53001c00
.word 0x14000002
.word 0xd2800000
.word 0xf9400bb8
.word 0xf9400fba
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0
.word 0xd28019c0
.word 0xaa1103e1
bl _p_18

Lme_18:
.text
ut_25:
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
bl _p_35
.word 0x53001c00
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0

Lme_19:
.text
ut_26:
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

Lme_1a:
.text
ut_27:
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
bl _p_31
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
bl _p_31
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
bl _p_31
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
bl _p_31
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

Lme_1b:
.text
ut_28:
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
ldr x0, [x16, #296]
.word 0xd2800121
bl _p_10
.word 0xaa0003e3
.word 0xaa0303e0
.word 0xf90043a0

adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x2, [x16, #408]
.word 0xaa0303e0
.word 0xd2800001
.word 0xf9400063
.word 0xf9408470
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
bl _p_32
.word 0xaa0003e2
.word 0xf9403fa3
.word 0xaa0303e0
.word 0xd2800021
.word 0xf9400063
.word 0xf9408470
.word 0xd63f0200
.word 0xf9403ba3
.word 0xaa0303e0
.word 0xf90037a0

adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x2, [x16, #440]
.word 0xaa0303e0
.word 0xd2800041
.word 0xf9400063
.word 0xf9408470
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
bl _p_32
.word 0xaa0003e2
.word 0xf94033a3
.word 0xaa0303e0
.word 0xd2800061
.word 0xf9400063
.word 0xf9408470
.word 0xd63f0200
.word 0xf9402fa3
.word 0xaa0303e0
.word 0xf9002ba0

adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x2, [x16, #448]
.word 0xaa0303e0
.word 0xd2800081
.word 0xf9400063
.word 0xf9408470
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
bl _p_32
.word 0xaa0003e2
.word 0xf94027a3
.word 0xaa0303e0
.word 0xd28000a1
.word 0xf9400063
.word 0xf9408470
.word 0xd63f0200
.word 0xf94023a3
.word 0xaa0303e0
.word 0xf9001fa0

adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x2, [x16, #456]
.word 0xaa0303e0
.word 0xd28000c1
.word 0xf9400063
.word 0xf9408470
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
bl _p_32
.word 0xaa0003e2
.word 0xf9401ba3
.word 0xaa0303e0
.word 0xd28000e1
.word 0xf9400063
.word 0xf9408470
.word 0xd63f0200
.word 0xf94017a3
.word 0xaa0303e0
.word 0xf90013a0

adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x2, [x16, #424]
.word 0xaa0303e0
.word 0xd2800101
.word 0xf9400063
.word 0xf9408470
.word 0xd63f0200
.word 0xf94013a0
bl _p_33
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0

Lme_1c:
.text
ut_29:
add x0, x0, 16
b System_Drawing_SizeF__ctor_System_Drawing_SizeF
.text
	.align 4
	.no_dead_strip System_Drawing_SizeF__ctor_System_Drawing_SizeF
System_Drawing_SizeF__ctor_System_Drawing_SizeF:
.loc 1 1 0
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa
.word 0xbd001ba0
.word 0xbd001fa1
.word 0xbd401bb0
.word 0x1e22c200
.word 0x1e624010
.word 0xbd000350
.word 0xbd401fb0
.word 0x1e22c200
.word 0x1e624010
.word 0xbd000750
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_1d:
.text
ut_30:
add x0, x0, 16
b System_Drawing_SizeF__ctor_System_Drawing_PointF
.text
	.align 4
	.no_dead_strip System_Drawing_SizeF__ctor_System_Drawing_PointF
System_Drawing_SizeF__ctor_System_Drawing_PointF:
.loc 1 1 0
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa
.word 0xbd001ba0
.word 0xbd001fa1
.word 0xbd401bb0
.word 0x1e22c200
.word 0x1e624010
.word 0xbd005bb0
.word 0xbd405bb0
.word 0x1e22c200
.word 0x1e624010
.word 0xbd000350
.word 0xbd401fb0
.word 0x1e22c200
.word 0x1e624010
.word 0xbd005bb0
.word 0xbd405bb0
.word 0x1e22c200
.word 0x1e624010
.word 0xbd000750
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_1e:
.text
ut_31:
add x0, x0, 16
b System_Drawing_SizeF__ctor_single_single
.text
	.align 4
	.no_dead_strip System_Drawing_SizeF__ctor_single_single
System_Drawing_SizeF__ctor_single_single:
.loc 1 1 0
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa
.word 0xbd001ba0
.word 0xbd0023a1
.word 0xbd401bb0
.word 0x1e22c200
.word 0x1e624010
.word 0xbd000350
.word 0xbd4023b0
.word 0x1e22c200
.word 0x1e624010
.word 0xbd000750
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_1f:
.text
ut_32:
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

Lme_20:
.text
ut_33:
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

Lme_21:
.text
ut_34:
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

Lme_22:
.text
ut_35:
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
ldr x1, [x16, #280]
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
ldr x1, [x16, #280]
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
bl _p_36
.word 0x53001c00
.word 0x14000002
.word 0xd2800000
.word 0xf9400bb8
.word 0xf9400fba
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0
.word 0xd28019c0
.word 0xaa1103e1
bl _p_18

Lme_23:
.text
ut_36:
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
bl _p_37
.word 0x53001c00
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_24:
.text
ut_37:
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
bl _p_31
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
bl _p_31
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

Lme_25:
.text
ut_38:
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
ldr x0, [x16, #296]
.word 0xd28000a1
bl _p_10
.word 0xaa0003e3
.word 0xaa0303e0
.word 0xf9002ba0

adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x2, [x16, #464]
.word 0xaa0303e0
.word 0xd2800001
.word 0xf9400063
.word 0xf9408470
.word 0xd63f0200
.word 0xf9402ba0
.word 0xf90027a0
.word 0xf90023a0
.word 0xf9400ba0
bl _p_32
.word 0xaa0003e2
.word 0xf94027a3
.word 0xaa0303e0
.word 0xd2800021
.word 0xf9400063
.word 0xf9408470
.word 0xd63f0200
.word 0xf94023a3
.word 0xaa0303e0
.word 0xf9001fa0

adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x2, [x16, #472]
.word 0xaa0303e0
.word 0xd2800041
.word 0xf9400063
.word 0xf9408470
.word 0xd63f0200
.word 0xf9401fa0
.word 0xf9001ba0
.word 0xf90017a0
.word 0xf9400ba0
.word 0x91001000
bl _p_32
.word 0xaa0003e2
.word 0xf9401ba3
.word 0xaa0303e0
.word 0xd2800061
.word 0xf9400063
.word 0xf9408470
.word 0xd63f0200
.word 0xf94017a3
.word 0xaa0303e0
.word 0xf90013a0

adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x2, [x16, #424]
.word 0xaa0303e0
.word 0xd2800081
.word 0xf9400063
.word 0xf9408470
.word 0xd63f0200
.word 0xf94013a0
bl _p_33
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_26:
.text
ut_43:
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

Lme_2b:
.text
ut_44:
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

Lme_2c:
.text
ut_45:
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

Lme_2d:
.text
ut_46:
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

Lme_2e:
.text
ut_47:
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

Lme_2f:
.text
ut_48:
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

Lme_30:
.text
	.align 3
jit_code_end:

	.byte 0,0,0,0
.text
	.align 3
method_addresses:
	.no_dead_strip method_addresses
bl SR_Format_string_object__
bl SR_Format_string_object_object
bl System_Numerics_Hashing_HashHelpers_Combine_int_int
bl System_Drawing_SizeFConverter_CanConvertFrom_System_ComponentModel_ITypeDescriptorContext_System_Type
bl System_Drawing_SizeFConverter_CanConvertTo_System_ComponentModel_ITypeDescriptorContext_System_Type
bl System_Drawing_SizeFConverter_ConvertFrom_System_ComponentModel_ITypeDescriptorContext_System_Globalization_CultureInfo_object
bl System_Drawing_SizeFConverter_ConvertTo_System_ComponentModel_ITypeDescriptorContext_System_Globalization_CultureInfo_object_System_Type
bl System_Drawing_SizeFConverter_CreateInstance_System_ComponentModel_ITypeDescriptorContext_System_Collections_IDictionary
bl System_Drawing_SizeFConverter_GetCreateInstanceSupported_System_ComponentModel_ITypeDescriptorContext
bl System_Drawing_SizeFConverter_GetProperties_System_ComponentModel_ITypeDescriptorContext_object_System_Attribute__
bl System_Drawing_SizeFConverter_GetPropertiesSupported_System_ComponentModel_ITypeDescriptorContext
bl System_Drawing_SizeFConverter__ctor
bl System_Drawing_SizeFConverter__cctor
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
bl System_Drawing_SizeF__ctor_System_Drawing_SizeF
bl System_Drawing_SizeF__ctor_System_Drawing_PointF
bl System_Drawing_SizeF__ctor_single_single
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

	.long 13,14,15,16,17,18,19,20
	.long 21,22,23,24,25,26,27,28
	.long 29,30,31,32,33,34,35,36
	.long 37,38,43,44,45,46,47,48
unbox_trampolines_end:

	.long 0
.text
	.align 3
unbox_trampoline_addresses:
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
bl ut_25
bl ut_26
bl ut_27
bl ut_28
bl ut_29
bl ut_30
bl ut_31
bl ut_32
bl ut_33
bl ut_34
bl ut_35
bl ut_36
bl ut_37
bl ut_38
bl ut_43
bl ut_44
bl ut_45
bl ut_46
bl ut_47
bl ut_48

	.long 0
.section __TEXT, __const
	.align 3
unwind_info:

	.byte 0,13,12,31,0,68,14,48,157,6,158,5,68,13,29,13,12,31,0,68,14,96,157,12,158,11,68,13,29,13,12,31
	.byte 0,68,14,32,157,4,158,3,68,13,29,31,12,31,0,68,14,112,157,14,158,13,68,13,29,68,148,12,149,11,68,150
	.byte 10,151,9,68,152,8,153,7,68,154,6,25,12,31,0,68,14,176,1,157,22,158,21,68,13,29,68,149,20,68,152,19
	.byte 153,18,68,154,17,21,12,31,0,68,14,96,157,12,158,11,68,13,29,68,152,10,153,9,68,154,8,14,12,31,0,68
	.byte 14,160,1,157,20,158,19,68,13,29,19,12,31,0,68,14,48,157,6,158,5,68,13,29,68,152,4,68,154,3,16,12
	.byte 31,0,68,14,48,157,6,158,5,68,13,29,68,154,4,19,12,31,0,68,14,64,157,8,158,7,68,13,29,68,152,6
	.byte 68,154,5,13,12,31,0,68,14,112,157,14,158,13,68,13,29,16,12,31,0,68,14,64,157,8,158,7,68,13,29,68
	.byte 154,6,17,12,31,0,68,14,144,1,157,18,158,17,68,13,29,68,154,16,16,12,31,0,68,14,96,157,12,158,11,68
	.byte 13,29,68,154,10

.text
	.align 4
plt:
mono_aot_System_Drawing_Common_plt:
	.no_dead_strip plt__jit_icall_mono_generic_class_init
plt__jit_icall_mono_generic_class_init:
_p_1:
adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x16, [x16, #488]
br x16
.word 447
	.no_dead_strip plt_string_Format_System_IFormatProvider_string_object__
plt_string_Format_System_IFormatProvider_string_object__:
_p_2:
adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x16, [x16, #496]
br x16
.word 450
	.no_dead_strip plt_string_Format_System_IFormatProvider_string_object_object
plt_string_Format_System_IFormatProvider_string_object_object:
_p_3:
adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x16, [x16, #504]
br x16
.word 455
	.no_dead_strip plt_System_ComponentModel_TypeConverter_CanConvertFrom_System_ComponentModel_ITypeDescriptorContext_System_Type
plt_System_ComponentModel_TypeConverter_CanConvertFrom_System_ComponentModel_ITypeDescriptorContext_System_Type:
_p_4:
adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x16, [x16, #512]
br x16
.word 460
	.no_dead_strip plt_string_Trim
plt_string_Trim:
_p_5:
adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x16, [x16, #520]
br x16
.word 465
	.no_dead_strip plt_System_Globalization_CultureInfo_get_CurrentCulture
plt_System_Globalization_CultureInfo_get_CurrentCulture:
_p_6:
adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x16, [x16, #528]
br x16
.word 470
	.no_dead_strip plt_System_Globalization_CultureInfo_get_TextInfo
plt_System_Globalization_CultureInfo_get_TextInfo:
_p_7:
adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x16, [x16, #536]
br x16
.word 475
	.no_dead_strip plt_System_Globalization_TextInfo_get_ListSeparator
plt_System_Globalization_TextInfo_get_ListSeparator:
_p_8:
adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x16, [x16, #544]
br x16
.word 480
	.no_dead_strip plt_string_Split_char_System_StringSplitOptions
plt_string_Split_char_System_StringSplitOptions:
_p_9:
adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x16, [x16, #552]
br x16
.word 485
	.no_dead_strip plt_wrapper_alloc_object_AllocVector_intptr_intptr
plt_wrapper_alloc_object_AllocVector_intptr_intptr:
_p_10:
adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x16, [x16, #560]
br x16
.word 490
	.no_dead_strip plt_System_ComponentModel_TypeDescriptor_GetConverter_System_Type
plt_System_ComponentModel_TypeDescriptor_GetConverter_System_Type:
_p_11:
adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x16, [x16, #568]
br x16
.word 498
	.no_dead_strip plt_System_ComponentModel_TypeConverter_ConvertFromString_System_ComponentModel_ITypeDescriptorContext_System_Globalization_CultureInfo_string
plt_System_ComponentModel_TypeConverter_ConvertFromString_System_ComponentModel_ITypeDescriptorContext_System_Globalization_CultureInfo_string:
_p_12:
adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x16, [x16, #576]
br x16
.word 503
	.no_dead_strip plt_wrapper_alloc_object_AllocSmall_intptr_intptr
plt_wrapper_alloc_object_AllocSmall_intptr_intptr:
_p_13:
adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x16, [x16, #584]
br x16
.word 508
	.no_dead_strip plt__jit_icall_mono_helper_ldstr
plt__jit_icall_mono_helper_ldstr:
_p_14:
adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x16, [x16, #592]
br x16
.word 516
	.no_dead_strip plt_SR_Format_string_object_object
plt_SR_Format_string_object_object:
_p_15:
adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x16, [x16, #600]
br x16
.word 519
	.no_dead_strip plt__jit_icall_mono_arch_throw_exception
plt__jit_icall_mono_arch_throw_exception:
_p_16:
adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x16, [x16, #608]
br x16
.word 521
	.no_dead_strip plt_System_ComponentModel_TypeConverter_ConvertFrom_System_ComponentModel_ITypeDescriptorContext_System_Globalization_CultureInfo_object
plt_System_ComponentModel_TypeConverter_ConvertFrom_System_ComponentModel_ITypeDescriptorContext_System_Globalization_CultureInfo_object:
_p_17:
adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x16, [x16, #616]
br x16
.word 523
	.no_dead_strip plt__jit_icall_mono_arch_throw_corlib_exception
plt__jit_icall_mono_arch_throw_corlib_exception:
_p_18:
adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x16, [x16, #624]
br x16
.word 528
	.no_dead_strip plt_string_Concat_string_string
plt_string_Concat_string_string:
_p_19:
adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x16, [x16, #632]
br x16
.word 530
	.no_dead_strip plt_System_ComponentModel_TypeConverter_ConvertToString_System_ComponentModel_ITypeDescriptorContext_System_Globalization_CultureInfo_object
plt_System_ComponentModel_TypeConverter_ConvertToString_System_ComponentModel_ITypeDescriptorContext_System_Globalization_CultureInfo_object:
_p_20:
adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x16, [x16, #640]
br x16
.word 535
	.no_dead_strip plt_string_Join_string_string__
plt_string_Join_string_string__:
_p_21:
adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x16, [x16, #648]
br x16
.word 540
	.no_dead_strip plt_System_Type_GetConstructor_System_Type__
plt_System_Type_GetConstructor_System_Type__:
_p_22:
adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x16, [x16, #656]
br x16
.word 545
	.no_dead_strip plt_System_Reflection_ConstructorInfo_op_Inequality_System_Reflection_ConstructorInfo_System_Reflection_ConstructorInfo
plt_System_Reflection_ConstructorInfo_op_Inequality_System_Reflection_ConstructorInfo_System_Reflection_ConstructorInfo:
_p_23:
adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x16, [x16, #664]
br x16
.word 550
	.no_dead_strip plt_System_ComponentModel_Design_Serialization_InstanceDescriptor__ctor_System_Reflection_MemberInfo_System_Collections_ICollection
plt_System_ComponentModel_Design_Serialization_InstanceDescriptor__ctor_System_Reflection_MemberInfo_System_Collections_ICollection:
_p_24:
adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x16, [x16, #672]
br x16
.word 555
	.no_dead_strip plt_System_ComponentModel_TypeConverter_ConvertTo_System_ComponentModel_ITypeDescriptorContext_System_Globalization_CultureInfo_object_System_Type
plt_System_ComponentModel_TypeConverter_ConvertTo_System_ComponentModel_ITypeDescriptorContext_System_Globalization_CultureInfo_object_System_Type:
_p_25:
adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x16, [x16, #680]
br x16
.word 560
	.no_dead_strip plt_SR_Format_string_object__
plt_SR_Format_string_object__:
_p_26:
adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x16, [x16, #688]
br x16
.word 565
	.no_dead_strip plt_System_ComponentModel_TypeDescriptor_GetProperties_System_Type_System_Attribute__
plt_System_ComponentModel_TypeDescriptor_GetProperties_System_Type_System_Attribute__:
_p_27:
adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x16, [x16, #696]
br x16
.word 567
	.no_dead_strip plt_System_ComponentModel_PropertyDescriptorCollection_Sort_string__
plt_System_ComponentModel_PropertyDescriptorCollection_Sort_string__:
_p_28:
adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x16, [x16, #704]
br x16
.word 572
	.no_dead_strip plt_System_Drawing_PointF_Equals_System_Drawing_PointF
plt_System_Drawing_PointF_Equals_System_Drawing_PointF:
_p_29:
adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x16, [x16, #712]
br x16
.word 577
	.no_dead_strip plt_System_Drawing_PointF_op_Equality_System_Drawing_PointF_System_Drawing_PointF
plt_System_Drawing_PointF_op_Equality_System_Drawing_PointF_System_Drawing_PointF:
_p_30:
adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x16, [x16, #720]
br x16
.word 579
	.no_dead_strip plt_single_GetHashCode
plt_single_GetHashCode:
_p_31:
adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x16, [x16, #728]
br x16
.word 581
	.no_dead_strip plt_single_ToString
plt_single_ToString:
_p_32:
adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x16, [x16, #736]
br x16
.word 586
	.no_dead_strip plt_string_Concat_string__
plt_string_Concat_string__:
_p_33:
adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x16, [x16, #744]
br x16
.word 591
	.no_dead_strip plt_System_Drawing_RectangleF_Equals_System_Drawing_RectangleF
plt_System_Drawing_RectangleF_Equals_System_Drawing_RectangleF:
_p_34:
adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x16, [x16, #752]
br x16
.word 596
	.no_dead_strip plt_System_Drawing_RectangleF_op_Equality_System_Drawing_RectangleF_System_Drawing_RectangleF
plt_System_Drawing_RectangleF_op_Equality_System_Drawing_RectangleF_System_Drawing_RectangleF:
_p_35:
adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x16, [x16, #760]
br x16
.word 598
	.no_dead_strip plt_System_Drawing_SizeF_Equals_System_Drawing_SizeF
plt_System_Drawing_SizeF_Equals_System_Drawing_SizeF:
_p_36:
adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x16, [x16, #768]
br x16
.word 600
	.no_dead_strip plt_System_Drawing_SizeF_op_Equality_System_Drawing_SizeF_System_Drawing_SizeF
plt_System_Drawing_SizeF_op_Equality_System_Drawing_SizeF_System_Drawing_SizeF:
_p_37:
adrp x16, mono_aot_System_Drawing_Common_got@PAGE+0
add x16, x16, mono_aot_System_Drawing_Common_got@PAGEOFF
ldr x16, [x16, #776]
br x16
.word 602
plt_end:
.section __DATA, __bss
	.align 3
.lcomm mono_aot_System_Drawing_Common_got, 784
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

	.long 60,784,38,49,6,98,387000831,0
	.long 896,128,8,8,8,9,8388607,0
	.long 4,25,1832,0,0,928,632,360
	.long 0,512,600,416,0,280,88,920
	.long 0,0,0,0,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.byte 93,167,193,213,168,7,210,142,138,65,148,247,155,149,33,27
	.globl _mono_aot_module_System_Drawing_Common_info
	.align 3
_mono_aot_module_System_Drawing_Common_info:
	.align 3
	.quad _mono_aot_file_info
.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "SR:Format"
	.asciz "SR_Format_string_object__"

	.byte 0,0
	.quad SR_Format_string_object__
	.quad Lme_0

	.byte 2,118,16,3
	.asciz "resourceFormat"

LDIFF_SYM4=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM4
	.byte 2,141,16,3
	.asciz "args"

LDIFF_SYM5=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM5
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM6=Lfde0_end - Lfde0_start
	.long LDIFF_SYM6
Lfde0_start:

	.long 0
	.align 3
	.quad SR_Format_string_object__

LDIFF_SYM7=Lme_0 - SR_Format_string_object__
	.long LDIFF_SYM7
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde0_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_0:

	.byte 17
	.asciz "System_Object"

	.byte 16,7
	.asciz "System_Object"

LDIFF_SYM8=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM8
LTDIE_0_POINTER:

	.byte 13
LDIFF_SYM9=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM9
LTDIE_0_REFERENCE:

	.byte 14
LDIFF_SYM10=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM10
	.byte 2
	.asciz "SR:Format"
	.asciz "SR_Format_string_object_object"

	.byte 0,0
	.quad SR_Format_string_object_object
	.quad Lme_1

	.byte 2,118,16,3
	.asciz "resourceFormat"

LDIFF_SYM11=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM11
	.byte 2,141,16,3
	.asciz "p1"

LDIFF_SYM12=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM12
	.byte 2,141,24,3
	.asciz "p2"

LDIFF_SYM13=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM13
	.byte 2,141,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM14=Lfde1_end - Lfde1_start
	.long LDIFF_SYM14
Lfde1_start:

	.long 0
	.align 3
	.quad SR_Format_string_object_object

LDIFF_SYM15=Lme_1 - SR_Format_string_object_object
	.long LDIFF_SYM15
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29
	.align 3
Lfde1_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_2:

	.byte 5
	.asciz "System_ValueType"

	.byte 16,16
LDIFF_SYM16=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM16
	.byte 2,35,0,0,7
	.asciz "System_ValueType"

LDIFF_SYM17=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM17
LTDIE_2_POINTER:

	.byte 13
LDIFF_SYM18=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM18
LTDIE_2_REFERENCE:

	.byte 14
LDIFF_SYM19=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM19
LTDIE_1:

	.byte 5
	.asciz "System_Int32"

	.byte 20,16
LDIFF_SYM20=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM20
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM21=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM21
	.byte 2,35,16,0,7
	.asciz "System_Int32"

LDIFF_SYM22=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM22
LTDIE_1_POINTER:

	.byte 13
LDIFF_SYM23=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM23
LTDIE_1_REFERENCE:

	.byte 14
LDIFF_SYM24=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM24
	.byte 2
	.asciz "System.Numerics.Hashing.HashHelpers:Combine"
	.asciz "System_Numerics_Hashing_HashHelpers_Combine_int_int"

	.byte 0,0
	.quad System_Numerics_Hashing_HashHelpers_Combine_int_int
	.quad Lme_2

	.byte 2,118,16,3
	.asciz "h1"

LDIFF_SYM25=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM25
	.byte 2,141,16,3
	.asciz "h2"

LDIFF_SYM26=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM26
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM27=Lfde2_end - Lfde2_start
	.long LDIFF_SYM27
Lfde2_start:

	.long 0
	.align 3
	.quad System_Numerics_Hashing_HashHelpers_Combine_int_int

LDIFF_SYM28=Lme_2 - System_Numerics_Hashing_HashHelpers_Combine_int_int
	.long LDIFF_SYM28
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde2_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_4:

	.byte 5
	.asciz "System_ComponentModel_TypeConverter"

	.byte 16,16
LDIFF_SYM29=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM29
	.byte 2,35,0,0,7
	.asciz "System_ComponentModel_TypeConverter"

LDIFF_SYM30=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM30
LTDIE_4_POINTER:

	.byte 13
LDIFF_SYM31=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM31
LTDIE_4_REFERENCE:

	.byte 14
LDIFF_SYM32=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM32
LTDIE_3:

	.byte 5
	.asciz "System_Drawing_SizeFConverter"

	.byte 16,16
LDIFF_SYM33=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM33
	.byte 2,35,0,0,7
	.asciz "System_Drawing_SizeFConverter"

LDIFF_SYM34=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM34
LTDIE_3_POINTER:

	.byte 13
LDIFF_SYM35=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM35
LTDIE_3_REFERENCE:

	.byte 14
LDIFF_SYM36=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM36
LTDIE_5:

	.byte 17
	.asciz "System_ComponentModel_ITypeDescriptorContext"

	.byte 16,7
	.asciz "System_ComponentModel_ITypeDescriptorContext"

LDIFF_SYM37=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM37
LTDIE_5_POINTER:

	.byte 13
LDIFF_SYM38=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM38
LTDIE_5_REFERENCE:

	.byte 14
LDIFF_SYM39=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM39
LTDIE_7:

	.byte 5
	.asciz "System_Reflection_MemberInfo"

	.byte 16,16
LDIFF_SYM40=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM40
	.byte 2,35,0,0,7
	.asciz "System_Reflection_MemberInfo"

LDIFF_SYM41=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM41
LTDIE_7_POINTER:

	.byte 13
LDIFF_SYM42=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM42
LTDIE_7_REFERENCE:

	.byte 14
LDIFF_SYM43=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM43
LTDIE_6:

	.byte 5
	.asciz "System_Type"

	.byte 24,16
LDIFF_SYM44=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM44
	.byte 2,35,0,6
	.asciz "_impl"

LDIFF_SYM45=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM45
	.byte 2,35,16,0,7
	.asciz "System_Type"

LDIFF_SYM46=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM46
LTDIE_6_POINTER:

	.byte 13
LDIFF_SYM47=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM47
LTDIE_6_REFERENCE:

	.byte 14
LDIFF_SYM48=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM48
	.byte 2
	.asciz "System.Drawing.SizeFConverter:CanConvertFrom"
	.asciz "System_Drawing_SizeFConverter_CanConvertFrom_System_ComponentModel_ITypeDescriptorContext_System_Type"

	.byte 0,0
	.quad System_Drawing_SizeFConverter_CanConvertFrom_System_ComponentModel_ITypeDescriptorContext_System_Type
	.quad Lme_3

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM49=LTDIE_3_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM49
	.byte 2,141,16,3
	.asciz "context"

LDIFF_SYM50=LTDIE_5_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM50
	.byte 2,141,24,3
	.asciz "sourceType"

LDIFF_SYM51=LTDIE_6_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM51
	.byte 2,141,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM52=Lfde3_end - Lfde3_start
	.long LDIFF_SYM52
Lfde3_start:

	.long 0
	.align 3
	.quad System_Drawing_SizeFConverter_CanConvertFrom_System_ComponentModel_ITypeDescriptorContext_System_Type

LDIFF_SYM53=Lme_3 - System_Drawing_SizeFConverter_CanConvertFrom_System_ComponentModel_ITypeDescriptorContext_System_Type
	.long LDIFF_SYM53
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde3_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Drawing.SizeFConverter:CanConvertTo"
	.asciz "System_Drawing_SizeFConverter_CanConvertTo_System_ComponentModel_ITypeDescriptorContext_System_Type"

	.byte 0,0
	.quad System_Drawing_SizeFConverter_CanConvertTo_System_ComponentModel_ITypeDescriptorContext_System_Type
	.quad Lme_4

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM54=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM54
	.byte 0,3
	.asciz "context"

LDIFF_SYM55=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM55
	.byte 0,3
	.asciz "destinationType"

LDIFF_SYM56=LTDIE_6_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM56
	.byte 2,141,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM57=Lfde4_end - Lfde4_start
	.long LDIFF_SYM57
Lfde4_start:

	.long 0
	.align 3
	.quad System_Drawing_SizeFConverter_CanConvertTo_System_ComponentModel_ITypeDescriptorContext_System_Type

LDIFF_SYM58=Lme_4 - System_Drawing_SizeFConverter_CanConvertTo_System_ComponentModel_ITypeDescriptorContext_System_Type
	.long LDIFF_SYM58
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde4_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_9:

	.byte 5
	.asciz "System_Boolean"

	.byte 17,16
LDIFF_SYM59=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM59
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM60=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM60
	.byte 2,35,16,0,7
	.asciz "System_Boolean"

LDIFF_SYM61=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM61
LTDIE_9_POINTER:

	.byte 13
LDIFF_SYM62=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM62
LTDIE_9_REFERENCE:

	.byte 14
LDIFF_SYM63=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM63
LTDIE_10:

	.byte 5
	.asciz "System_Globalization_NumberFormatInfo"

	.byte 216,1,16
LDIFF_SYM64=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM64
	.byte 2,35,0,6
	.asciz "numberGroupSizes"

LDIFF_SYM65=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM65
	.byte 2,35,16,6
	.asciz "currencyGroupSizes"

LDIFF_SYM66=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM66
	.byte 2,35,24,6
	.asciz "percentGroupSizes"

LDIFF_SYM67=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM67
	.byte 2,35,32,6
	.asciz "positiveSign"

LDIFF_SYM68=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM68
	.byte 2,35,40,6
	.asciz "negativeSign"

LDIFF_SYM69=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM69
	.byte 2,35,48,6
	.asciz "numberDecimalSeparator"

LDIFF_SYM70=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM70
	.byte 2,35,56,6
	.asciz "numberGroupSeparator"

LDIFF_SYM71=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM71
	.byte 2,35,64,6
	.asciz "currencyGroupSeparator"

LDIFF_SYM72=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM72
	.byte 2,35,72,6
	.asciz "currencyDecimalSeparator"

LDIFF_SYM73=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM73
	.byte 2,35,80,6
	.asciz "currencySymbol"

LDIFF_SYM74=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM74
	.byte 2,35,88,6
	.asciz "ansiCurrencySymbol"

LDIFF_SYM75=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM75
	.byte 2,35,96,6
	.asciz "nanSymbol"

LDIFF_SYM76=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM76
	.byte 2,35,104,6
	.asciz "positiveInfinitySymbol"

LDIFF_SYM77=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM77
	.byte 2,35,112,6
	.asciz "negativeInfinitySymbol"

LDIFF_SYM78=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM78
	.byte 2,35,120,6
	.asciz "percentDecimalSeparator"

LDIFF_SYM79=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM79
	.byte 3,35,128,1,6
	.asciz "percentGroupSeparator"

LDIFF_SYM80=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM80
	.byte 3,35,136,1,6
	.asciz "percentSymbol"

LDIFF_SYM81=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM81
	.byte 3,35,144,1,6
	.asciz "perMilleSymbol"

LDIFF_SYM82=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM82
	.byte 3,35,152,1,6
	.asciz "nativeDigits"

LDIFF_SYM83=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM83
	.byte 3,35,160,1,6
	.asciz "m_dataItem"

LDIFF_SYM84=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM84
	.byte 3,35,168,1,6
	.asciz "numberDecimalDigits"

LDIFF_SYM85=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM85
	.byte 3,35,172,1,6
	.asciz "currencyDecimalDigits"

LDIFF_SYM86=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM86
	.byte 3,35,176,1,6
	.asciz "currencyPositivePattern"

LDIFF_SYM87=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM87
	.byte 3,35,180,1,6
	.asciz "currencyNegativePattern"

LDIFF_SYM88=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM88
	.byte 3,35,184,1,6
	.asciz "numberNegativePattern"

LDIFF_SYM89=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM89
	.byte 3,35,188,1,6
	.asciz "percentPositivePattern"

LDIFF_SYM90=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM90
	.byte 3,35,192,1,6
	.asciz "percentNegativePattern"

LDIFF_SYM91=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM91
	.byte 3,35,196,1,6
	.asciz "percentDecimalDigits"

LDIFF_SYM92=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM92
	.byte 3,35,200,1,6
	.asciz "digitSubstitution"

LDIFF_SYM93=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM93
	.byte 3,35,204,1,6
	.asciz "isReadOnly"

LDIFF_SYM94=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM94
	.byte 3,35,208,1,6
	.asciz "m_useUserOverride"

LDIFF_SYM95=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM95
	.byte 3,35,209,1,6
	.asciz "m_isInvariant"

LDIFF_SYM96=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM96
	.byte 3,35,210,1,6
	.asciz "validForParseAsNumber"

LDIFF_SYM97=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM97
	.byte 3,35,211,1,6
	.asciz "validForParseAsCurrency"

LDIFF_SYM98=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM98
	.byte 3,35,212,1,0,7
	.asciz "System_Globalization_NumberFormatInfo"

LDIFF_SYM99=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM99
LTDIE_10_POINTER:

	.byte 13
LDIFF_SYM100=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM100
LTDIE_10_REFERENCE:

	.byte 14
LDIFF_SYM101=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM101
LTDIE_12:

	.byte 5
	.asciz "System_Globalization_CultureData"

	.byte 136,1,16
LDIFF_SYM102=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM102
	.byte 2,35,0,6
	.asciz "sAM1159"

LDIFF_SYM103=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM103
	.byte 2,35,16,6
	.asciz "sPM2359"

LDIFF_SYM104=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM104
	.byte 2,35,24,6
	.asciz "sTimeSeparator"

LDIFF_SYM105=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM105
	.byte 2,35,32,6
	.asciz "saLongTimes"

LDIFF_SYM106=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM106
	.byte 2,35,40,6
	.asciz "saShortTimes"

LDIFF_SYM107=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM107
	.byte 2,35,48,6
	.asciz "iFirstDayOfWeek"

LDIFF_SYM108=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM108
	.byte 2,35,56,6
	.asciz "iFirstWeekOfYear"

LDIFF_SYM109=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM109
	.byte 2,35,60,6
	.asciz "waCalendars"

LDIFF_SYM110=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM110
	.byte 2,35,64,6
	.asciz "calendars"

LDIFF_SYM111=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM111
	.byte 2,35,72,6
	.asciz "sISO639Language"

LDIFF_SYM112=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM112
	.byte 2,35,80,6
	.asciz "sRealName"

LDIFF_SYM113=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM113
	.byte 2,35,88,6
	.asciz "bUseOverrides"

LDIFF_SYM114=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM114
	.byte 2,35,96,6
	.asciz "calendarId"

LDIFF_SYM115=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM115
	.byte 2,35,100,6
	.asciz "numberIndex"

LDIFF_SYM116=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM116
	.byte 2,35,104,6
	.asciz "iDefaultAnsiCodePage"

LDIFF_SYM117=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM117
	.byte 2,35,108,6
	.asciz "iDefaultOemCodePage"

LDIFF_SYM118=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM118
	.byte 2,35,112,6
	.asciz "iDefaultMacCodePage"

LDIFF_SYM119=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM119
	.byte 2,35,116,6
	.asciz "iDefaultEbcdicCodePage"

LDIFF_SYM120=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM120
	.byte 2,35,120,6
	.asciz "isRightToLeft"

LDIFF_SYM121=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM121
	.byte 2,35,124,6
	.asciz "sListSeparator"

LDIFF_SYM122=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM122
	.byte 3,35,128,1,0,7
	.asciz "System_Globalization_CultureData"

LDIFF_SYM123=LTDIE_12 - Ldebug_info_start
	.long LDIFF_SYM123
LTDIE_12_POINTER:

	.byte 13
LDIFF_SYM124=LTDIE_12 - Ldebug_info_start
	.long LDIFF_SYM124
LTDIE_12_REFERENCE:

	.byte 14
LDIFF_SYM125=LTDIE_12 - Ldebug_info_start
	.long LDIFF_SYM125
LTDIE_14:

	.byte 5
	.asciz "System_Globalization_SortVersion"

	.byte 16,16
LDIFF_SYM126=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM126
	.byte 2,35,0,0,7
	.asciz "System_Globalization_SortVersion"

LDIFF_SYM127=LTDIE_14 - Ldebug_info_start
	.long LDIFF_SYM127
LTDIE_14_POINTER:

	.byte 13
LDIFF_SYM128=LTDIE_14 - Ldebug_info_start
	.long LDIFF_SYM128
LTDIE_14_REFERENCE:

	.byte 14
LDIFF_SYM129=LTDIE_14 - Ldebug_info_start
	.long LDIFF_SYM129
LTDIE_15:

	.byte 17
	.asciz "System_Globalization_ISimpleCollator"

	.byte 16,7
	.asciz "System_Globalization_ISimpleCollator"

LDIFF_SYM130=LTDIE_15 - Ldebug_info_start
	.long LDIFF_SYM130
LTDIE_15_POINTER:

	.byte 13
LDIFF_SYM131=LTDIE_15 - Ldebug_info_start
	.long LDIFF_SYM131
LTDIE_15_REFERENCE:

	.byte 14
LDIFF_SYM132=LTDIE_15 - Ldebug_info_start
	.long LDIFF_SYM132
LTDIE_13:

	.byte 5
	.asciz "System_Globalization_CompareInfo"

	.byte 56,16
LDIFF_SYM133=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM133
	.byte 2,35,0,6
	.asciz "m_name"

LDIFF_SYM134=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM134
	.byte 2,35,16,6
	.asciz "_sortName"

LDIFF_SYM135=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM135
	.byte 2,35,24,6
	.asciz "m_SortVersion"

LDIFF_SYM136=LTDIE_14_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM136
	.byte 2,35,32,6
	.asciz "culture"

LDIFF_SYM137=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM137
	.byte 2,35,48,6
	.asciz "collator"

LDIFF_SYM138=LTDIE_15_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM138
	.byte 2,35,40,0,7
	.asciz "System_Globalization_CompareInfo"

LDIFF_SYM139=LTDIE_13 - Ldebug_info_start
	.long LDIFF_SYM139
LTDIE_13_POINTER:

	.byte 13
LDIFF_SYM140=LTDIE_13 - Ldebug_info_start
	.long LDIFF_SYM140
LTDIE_13_REFERENCE:

	.byte 14
LDIFF_SYM141=LTDIE_13 - Ldebug_info_start
	.long LDIFF_SYM141
LTDIE_16:

	.byte 5
	.asciz "System_Globalization_Calendar"

	.byte 28,16
LDIFF_SYM142=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM142
	.byte 2,35,0,6
	.asciz "m_currentEraValue"

LDIFF_SYM143=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM143
	.byte 2,35,16,6
	.asciz "m_isReadOnly"

LDIFF_SYM144=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM144
	.byte 2,35,20,6
	.asciz "twoDigitYearMax"

LDIFF_SYM145=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM145
	.byte 2,35,24,0,7
	.asciz "System_Globalization_Calendar"

LDIFF_SYM146=LTDIE_16 - Ldebug_info_start
	.long LDIFF_SYM146
LTDIE_16_POINTER:

	.byte 13
LDIFF_SYM147=LTDIE_16 - Ldebug_info_start
	.long LDIFF_SYM147
LTDIE_16_REFERENCE:

	.byte 14
LDIFF_SYM148=LTDIE_16 - Ldebug_info_start
	.long LDIFF_SYM148
LTDIE_17:

	.byte 8
	.asciz "System_Globalization_DateTimeFormatFlags"

	.byte 4
LDIFF_SYM149=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM149
	.byte 9
	.asciz "None"

	.byte 0,9
	.asciz "UseGenitiveMonth"

	.byte 1,9
	.asciz "UseLeapYearMonth"

	.byte 2,9
	.asciz "UseSpacesInMonthNames"

	.byte 4,9
	.asciz "UseHebrewRule"

	.byte 8,9
	.asciz "UseSpacesInDayNames"

	.byte 16,9
	.asciz "UseDigitPrefixInTokens"

	.byte 32,9
	.asciz "NotInitialized"

	.byte 255,255,255,255,15,0,7
	.asciz "System_Globalization_DateTimeFormatFlags"

LDIFF_SYM150=LTDIE_17 - Ldebug_info_start
	.long LDIFF_SYM150
LTDIE_17_POINTER:

	.byte 13
LDIFF_SYM151=LTDIE_17 - Ldebug_info_start
	.long LDIFF_SYM151
LTDIE_17_REFERENCE:

	.byte 14
LDIFF_SYM152=LTDIE_17 - Ldebug_info_start
	.long LDIFF_SYM152
LTDIE_11:

	.byte 5
	.asciz "System_Globalization_DateTimeFormatInfo"

	.byte 224,2,16
LDIFF_SYM153=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM153
	.byte 2,35,0,6
	.asciz "_cultureData"

LDIFF_SYM154=LTDIE_12_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM154
	.byte 2,35,16,6
	.asciz "_name"

LDIFF_SYM155=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM155
	.byte 2,35,24,6
	.asciz "_langName"

LDIFF_SYM156=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM156
	.byte 2,35,32,6
	.asciz "_compareInfo"

LDIFF_SYM157=LTDIE_13_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM157
	.byte 2,35,40,6
	.asciz "_cultureInfo"

LDIFF_SYM158=LTDIE_8_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM158
	.byte 2,35,48,6
	.asciz "amDesignator"

LDIFF_SYM159=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM159
	.byte 2,35,56,6
	.asciz "pmDesignator"

LDIFF_SYM160=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM160
	.byte 2,35,64,6
	.asciz "dateSeparator"

LDIFF_SYM161=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM161
	.byte 2,35,72,6
	.asciz "generalShortTimePattern"

LDIFF_SYM162=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM162
	.byte 2,35,80,6
	.asciz "generalLongTimePattern"

LDIFF_SYM163=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM163
	.byte 2,35,88,6
	.asciz "timeSeparator"

LDIFF_SYM164=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM164
	.byte 2,35,96,6
	.asciz "monthDayPattern"

LDIFF_SYM165=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM165
	.byte 2,35,104,6
	.asciz "dateTimeOffsetPattern"

LDIFF_SYM166=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM166
	.byte 2,35,112,6
	.asciz "calendar"

LDIFF_SYM167=LTDIE_16_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM167
	.byte 2,35,120,6
	.asciz "firstDayOfWeek"

LDIFF_SYM168=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM168
	.byte 3,35,208,2,6
	.asciz "calendarWeekRule"

LDIFF_SYM169=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM169
	.byte 3,35,212,2,6
	.asciz "fullDateTimePattern"

LDIFF_SYM170=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM170
	.byte 3,35,128,1,6
	.asciz "abbreviatedDayNames"

LDIFF_SYM171=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM171
	.byte 3,35,136,1,6
	.asciz "m_superShortDayNames"

LDIFF_SYM172=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM172
	.byte 3,35,144,1,6
	.asciz "dayNames"

LDIFF_SYM173=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM173
	.byte 3,35,152,1,6
	.asciz "abbreviatedMonthNames"

LDIFF_SYM174=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM174
	.byte 3,35,160,1,6
	.asciz "monthNames"

LDIFF_SYM175=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM175
	.byte 3,35,168,1,6
	.asciz "genitiveMonthNames"

LDIFF_SYM176=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM176
	.byte 3,35,176,1,6
	.asciz "m_genitiveAbbreviatedMonthNames"

LDIFF_SYM177=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM177
	.byte 3,35,184,1,6
	.asciz "leapYearMonthNames"

LDIFF_SYM178=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM178
	.byte 3,35,192,1,6
	.asciz "longDatePattern"

LDIFF_SYM179=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM179
	.byte 3,35,200,1,6
	.asciz "shortDatePattern"

LDIFF_SYM180=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM180
	.byte 3,35,208,1,6
	.asciz "yearMonthPattern"

LDIFF_SYM181=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM181
	.byte 3,35,216,1,6
	.asciz "longTimePattern"

LDIFF_SYM182=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM182
	.byte 3,35,224,1,6
	.asciz "shortTimePattern"

LDIFF_SYM183=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM183
	.byte 3,35,232,1,6
	.asciz "allYearMonthPatterns"

LDIFF_SYM184=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM184
	.byte 3,35,240,1,6
	.asciz "allShortDatePatterns"

LDIFF_SYM185=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM185
	.byte 3,35,248,1,6
	.asciz "allLongDatePatterns"

LDIFF_SYM186=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM186
	.byte 3,35,128,2,6
	.asciz "allShortTimePatterns"

LDIFF_SYM187=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM187
	.byte 3,35,136,2,6
	.asciz "allLongTimePatterns"

LDIFF_SYM188=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM188
	.byte 3,35,144,2,6
	.asciz "m_eraNames"

LDIFF_SYM189=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM189
	.byte 3,35,152,2,6
	.asciz "m_abbrevEraNames"

LDIFF_SYM190=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM190
	.byte 3,35,160,2,6
	.asciz "m_abbrevEnglishEraNames"

LDIFF_SYM191=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM191
	.byte 3,35,168,2,6
	.asciz "optionalCalendars"

LDIFF_SYM192=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM192
	.byte 3,35,176,2,6
	.asciz "_isReadOnly"

LDIFF_SYM193=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM193
	.byte 3,35,216,2,6
	.asciz "formatFlags"

LDIFF_SYM194=LTDIE_17 - Ldebug_info_start
	.long LDIFF_SYM194
	.byte 3,35,220,2,6
	.asciz "_fullTimeSpanPositivePattern"

LDIFF_SYM195=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM195
	.byte 3,35,184,2,6
	.asciz "_fullTimeSpanNegativePattern"

LDIFF_SYM196=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM196
	.byte 3,35,192,2,6
	.asciz "_dtfiTokenHash"

LDIFF_SYM197=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM197
	.byte 3,35,200,2,0,7
	.asciz "System_Globalization_DateTimeFormatInfo"

LDIFF_SYM198=LTDIE_11 - Ldebug_info_start
	.long LDIFF_SYM198
LTDIE_11_POINTER:

	.byte 13
LDIFF_SYM199=LTDIE_11 - Ldebug_info_start
	.long LDIFF_SYM199
LTDIE_11_REFERENCE:

	.byte 14
LDIFF_SYM200=LTDIE_11 - Ldebug_info_start
	.long LDIFF_SYM200
LTDIE_18:

	.byte 5
	.asciz "System_Globalization_TextInfo"

	.byte 64,16
LDIFF_SYM201=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM201
	.byte 2,35,0,6
	.asciz "m_listSeparator"

LDIFF_SYM202=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM202
	.byte 2,35,16,6
	.asciz "m_isReadOnly"

LDIFF_SYM203=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM203
	.byte 2,35,56,6
	.asciz "m_cultureName"

LDIFF_SYM204=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM204
	.byte 2,35,24,6
	.asciz "m_cultureData"

LDIFF_SYM205=LTDIE_12_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM205
	.byte 2,35,32,6
	.asciz "m_textInfoName"

LDIFF_SYM206=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM206
	.byte 2,35,40,6
	.asciz "m_IsAsciiCasingSameAsInvariant"

LDIFF_SYM207=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM207
	.byte 2,35,57,6
	.asciz "customCultureName"

LDIFF_SYM208=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM208
	.byte 2,35,48,6
	.asciz "m_useUserOverride"

LDIFF_SYM209=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM209
	.byte 2,35,59,6
	.asciz "m_win32LangID"

LDIFF_SYM210=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM210
	.byte 2,35,60,0,7
	.asciz "System_Globalization_TextInfo"

LDIFF_SYM211=LTDIE_18 - Ldebug_info_start
	.long LDIFF_SYM211
LTDIE_18_POINTER:

	.byte 13
LDIFF_SYM212=LTDIE_18 - Ldebug_info_start
	.long LDIFF_SYM212
LTDIE_18_REFERENCE:

	.byte 14
LDIFF_SYM213=LTDIE_18 - Ldebug_info_start
	.long LDIFF_SYM213
LTDIE_8:

	.byte 5
	.asciz "System_Globalization_CultureInfo"

	.byte 208,1,16
LDIFF_SYM214=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM214
	.byte 2,35,0,6
	.asciz "m_isReadOnly"

LDIFF_SYM215=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM215
	.byte 2,35,16,6
	.asciz "cultureID"

LDIFF_SYM216=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM216
	.byte 2,35,20,6
	.asciz "parent_lcid"

LDIFF_SYM217=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM217
	.byte 2,35,24,6
	.asciz "datetime_index"

LDIFF_SYM218=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM218
	.byte 2,35,28,6
	.asciz "number_index"

LDIFF_SYM219=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM219
	.byte 2,35,32,6
	.asciz "default_calendar_type"

LDIFF_SYM220=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM220
	.byte 2,35,36,6
	.asciz "m_useUserOverride"

LDIFF_SYM221=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM221
	.byte 2,35,40,6
	.asciz "numInfo"

LDIFF_SYM222=LTDIE_10_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM222
	.byte 2,35,48,6
	.asciz "dateTimeInfo"

LDIFF_SYM223=LTDIE_11_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM223
	.byte 2,35,56,6
	.asciz "textInfo"

LDIFF_SYM224=LTDIE_18_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM224
	.byte 2,35,64,6
	.asciz "m_name"

LDIFF_SYM225=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM225
	.byte 2,35,72,6
	.asciz "englishname"

LDIFF_SYM226=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM226
	.byte 2,35,80,6
	.asciz "nativename"

LDIFF_SYM227=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM227
	.byte 2,35,88,6
	.asciz "iso3lang"

LDIFF_SYM228=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM228
	.byte 2,35,96,6
	.asciz "iso2lang"

LDIFF_SYM229=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM229
	.byte 2,35,104,6
	.asciz "win3lang"

LDIFF_SYM230=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM230
	.byte 2,35,112,6
	.asciz "territory"

LDIFF_SYM231=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM231
	.byte 2,35,120,6
	.asciz "native_calendar_names"

LDIFF_SYM232=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM232
	.byte 3,35,128,1,6
	.asciz "compareInfo"

LDIFF_SYM233=LTDIE_13_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM233
	.byte 3,35,136,1,6
	.asciz "textinfo_data"

LDIFF_SYM234=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM234
	.byte 3,35,144,1,6
	.asciz "m_dataItem"

LDIFF_SYM235=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM235
	.byte 3,35,152,1,6
	.asciz "calendar"

LDIFF_SYM236=LTDIE_16_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM236
	.byte 3,35,160,1,6
	.asciz "parent_culture"

LDIFF_SYM237=LTDIE_8_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM237
	.byte 3,35,168,1,6
	.asciz "constructed"

LDIFF_SYM238=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM238
	.byte 3,35,176,1,6
	.asciz "cached_serialized_form"

LDIFF_SYM239=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM239
	.byte 3,35,184,1,6
	.asciz "m_cultureData"

LDIFF_SYM240=LTDIE_12_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM240
	.byte 3,35,192,1,6
	.asciz "m_isInherited"

LDIFF_SYM241=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM241
	.byte 3,35,200,1,0,7
	.asciz "System_Globalization_CultureInfo"

LDIFF_SYM242=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM242
LTDIE_8_POINTER:

	.byte 13
LDIFF_SYM243=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM243
LTDIE_8_REFERENCE:

	.byte 14
LDIFF_SYM244=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM244
LTDIE_19:

	.byte 5
	.asciz "System_Char"

	.byte 18,16
LDIFF_SYM245=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM245
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM246=LDIE_CHAR - Ldebug_info_start
	.long LDIFF_SYM246
	.byte 2,35,16,0,7
	.asciz "System_Char"

LDIFF_SYM247=LTDIE_19 - Ldebug_info_start
	.long LDIFF_SYM247
LTDIE_19_POINTER:

	.byte 13
LDIFF_SYM248=LTDIE_19 - Ldebug_info_start
	.long LDIFF_SYM248
LTDIE_19_REFERENCE:

	.byte 14
LDIFF_SYM249=LTDIE_19 - Ldebug_info_start
	.long LDIFF_SYM249
	.byte 2
	.asciz "System.Drawing.SizeFConverter:ConvertFrom"
	.asciz "System_Drawing_SizeFConverter_ConvertFrom_System_ComponentModel_ITypeDescriptorContext_System_Globalization_CultureInfo_object"

	.byte 0,0
	.quad System_Drawing_SizeFConverter_ConvertFrom_System_ComponentModel_ITypeDescriptorContext_System_Globalization_CultureInfo_object
	.quad Lme_5

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM250=LTDIE_3_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM250
	.byte 1,103,3
	.asciz "context"

LDIFF_SYM251=LTDIE_5_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM251
	.byte 1,104,3
	.asciz "culture"

LDIFF_SYM252=LTDIE_8_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM252
	.byte 1,105,3
	.asciz "value"

LDIFF_SYM253=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM253
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM254=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM254
	.byte 1,101,11
	.asciz "V_1"

LDIFF_SYM255=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM255
	.byte 1,106,11
	.asciz "V_2"

LDIFF_SYM256=LDIE_CHAR - Ldebug_info_start
	.long LDIFF_SYM256
	.byte 1,103,11
	.asciz "V_3"

LDIFF_SYM257=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM257
	.byte 1,103,11
	.asciz "V_4"

LDIFF_SYM258=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM258
	.byte 1,102,11
	.asciz "V_5"

LDIFF_SYM259=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM259
	.byte 1,101,11
	.asciz "V_6"

LDIFF_SYM260=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM260
	.byte 1,100,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM261=Lfde5_end - Lfde5_start
	.long LDIFF_SYM261
Lfde5_start:

	.long 0
	.align 3
	.quad System_Drawing_SizeFConverter_ConvertFrom_System_ComponentModel_ITypeDescriptorContext_System_Globalization_CultureInfo_object

LDIFF_SYM262=Lme_5 - System_Drawing_SizeFConverter_ConvertFrom_System_ComponentModel_ITypeDescriptorContext_System_Globalization_CultureInfo_object
	.long LDIFF_SYM262
	.long 0
	.byte 12,31,0,68,14,112,157,14,158,13,68,13,29,68,148,12,149,11,68,150,10,151,9,68,152,8,153,7,68,154,6
	.align 3
Lfde5_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_21:

	.byte 5
	.asciz "System_Reflection_MethodBase"

	.byte 16,16
LDIFF_SYM263=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM263
	.byte 2,35,0,0,7
	.asciz "System_Reflection_MethodBase"

LDIFF_SYM264=LTDIE_21 - Ldebug_info_start
	.long LDIFF_SYM264
LTDIE_21_POINTER:

	.byte 13
LDIFF_SYM265=LTDIE_21 - Ldebug_info_start
	.long LDIFF_SYM265
LTDIE_21_REFERENCE:

	.byte 14
LDIFF_SYM266=LTDIE_21 - Ldebug_info_start
	.long LDIFF_SYM266
LTDIE_20:

	.byte 5
	.asciz "System_Reflection_ConstructorInfo"

	.byte 16,16
LDIFF_SYM267=LTDIE_21 - Ldebug_info_start
	.long LDIFF_SYM267
	.byte 2,35,0,0,7
	.asciz "System_Reflection_ConstructorInfo"

LDIFF_SYM268=LTDIE_20 - Ldebug_info_start
	.long LDIFF_SYM268
LTDIE_20_POINTER:

	.byte 13
LDIFF_SYM269=LTDIE_20 - Ldebug_info_start
	.long LDIFF_SYM269
LTDIE_20_REFERENCE:

	.byte 14
LDIFF_SYM270=LTDIE_20 - Ldebug_info_start
	.long LDIFF_SYM270
	.byte 2
	.asciz "System.Drawing.SizeFConverter:ConvertTo"
	.asciz "System_Drawing_SizeFConverter_ConvertTo_System_ComponentModel_ITypeDescriptorContext_System_Globalization_CultureInfo_object_System_Type"

	.byte 0,0
	.quad System_Drawing_SizeFConverter_ConvertTo_System_ComponentModel_ITypeDescriptorContext_System_Globalization_CultureInfo_object_System_Type
	.quad Lme_6

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM271=LTDIE_3_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM271
	.byte 2,141,48,3
	.asciz "context"

LDIFF_SYM272=LTDIE_5_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM272
	.byte 2,141,56,3
	.asciz "culture"

LDIFF_SYM273=LTDIE_8_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM273
	.byte 1,104,3
	.asciz "value"

LDIFF_SYM274=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM274
	.byte 1,105,3
	.asciz "destinationType"

LDIFF_SYM275=LTDIE_6_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM275
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM276=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM276
	.byte 3,141,200,0,11
	.asciz "V_1"

LDIFF_SYM277=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM277
	.byte 1,106,11
	.asciz "V_2"

LDIFF_SYM278=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM278
	.byte 1,105,11
	.asciz "V_3"

LDIFF_SYM279=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM279
	.byte 0,11
	.asciz "V_4"

LDIFF_SYM280=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM280
	.byte 3,141,192,0,11
	.asciz "V_5"

LDIFF_SYM281=LTDIE_20_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM281
	.byte 1,101,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM282=Lfde6_end - Lfde6_start
	.long LDIFF_SYM282
Lfde6_start:

	.long 0
	.align 3
	.quad System_Drawing_SizeFConverter_ConvertTo_System_ComponentModel_ITypeDescriptorContext_System_Globalization_CultureInfo_object_System_Type

LDIFF_SYM283=Lme_6 - System_Drawing_SizeFConverter_ConvertTo_System_ComponentModel_ITypeDescriptorContext_System_Globalization_CultureInfo_object_System_Type
	.long LDIFF_SYM283
	.long 0
	.byte 12,31,0,68,14,176,1,157,22,158,21,68,13,29,68,149,20,68,152,19,153,18,68,154,17
	.align 3
Lfde6_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_22:

	.byte 17
	.asciz "System_Collections_IDictionary"

	.byte 16,7
	.asciz "System_Collections_IDictionary"

LDIFF_SYM284=LTDIE_22 - Ldebug_info_start
	.long LDIFF_SYM284
LTDIE_22_POINTER:

	.byte 13
LDIFF_SYM285=LTDIE_22 - Ldebug_info_start
	.long LDIFF_SYM285
LTDIE_22_REFERENCE:

	.byte 14
LDIFF_SYM286=LTDIE_22 - Ldebug_info_start
	.long LDIFF_SYM286
	.byte 2
	.asciz "System.Drawing.SizeFConverter:CreateInstance"
	.asciz "System_Drawing_SizeFConverter_CreateInstance_System_ComponentModel_ITypeDescriptorContext_System_Collections_IDictionary"

	.byte 0,0
	.quad System_Drawing_SizeFConverter_CreateInstance_System_ComponentModel_ITypeDescriptorContext_System_Collections_IDictionary
	.quad Lme_7

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM287=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM287
	.byte 0,3
	.asciz "context"

LDIFF_SYM288=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM288
	.byte 0,3
	.asciz "propertyValues"

LDIFF_SYM289=LTDIE_22_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM289
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM290=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM290
	.byte 1,105,11
	.asciz "V_1"

LDIFF_SYM291=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM291
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM292=Lfde7_end - Lfde7_start
	.long LDIFF_SYM292
Lfde7_start:

	.long 0
	.align 3
	.quad System_Drawing_SizeFConverter_CreateInstance_System_ComponentModel_ITypeDescriptorContext_System_Collections_IDictionary

LDIFF_SYM293=Lme_7 - System_Drawing_SizeFConverter_CreateInstance_System_ComponentModel_ITypeDescriptorContext_System_Collections_IDictionary
	.long LDIFF_SYM293
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,152,10,153,9,68,154,8
	.align 3
Lfde7_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Drawing.SizeFConverter:GetCreateInstanceSupported"
	.asciz "System_Drawing_SizeFConverter_GetCreateInstanceSupported_System_ComponentModel_ITypeDescriptorContext"

	.byte 0,0
	.quad System_Drawing_SizeFConverter_GetCreateInstanceSupported_System_ComponentModel_ITypeDescriptorContext
	.quad Lme_8

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM294=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM294
	.byte 0,3
	.asciz "context"

LDIFF_SYM295=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM295
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM296=Lfde8_end - Lfde8_start
	.long LDIFF_SYM296
Lfde8_start:

	.long 0
	.align 3
	.quad System_Drawing_SizeFConverter_GetCreateInstanceSupported_System_ComponentModel_ITypeDescriptorContext

LDIFF_SYM297=Lme_8 - System_Drawing_SizeFConverter_GetCreateInstanceSupported_System_ComponentModel_ITypeDescriptorContext
	.long LDIFF_SYM297
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde8_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Drawing.SizeFConverter:GetProperties"
	.asciz "System_Drawing_SizeFConverter_GetProperties_System_ComponentModel_ITypeDescriptorContext_object_System_Attribute__"

	.byte 0,0
	.quad System_Drawing_SizeFConverter_GetProperties_System_ComponentModel_ITypeDescriptorContext_object_System_Attribute__
	.quad Lme_9

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM298=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM298
	.byte 0,3
	.asciz "context"

LDIFF_SYM299=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM299
	.byte 0,3
	.asciz "value"

LDIFF_SYM300=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM300
	.byte 0,3
	.asciz "attributes"

LDIFF_SYM301=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM301
	.byte 2,141,40,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM302=Lfde9_end - Lfde9_start
	.long LDIFF_SYM302
Lfde9_start:

	.long 0
	.align 3
	.quad System_Drawing_SizeFConverter_GetProperties_System_ComponentModel_ITypeDescriptorContext_object_System_Attribute__

LDIFF_SYM303=Lme_9 - System_Drawing_SizeFConverter_GetProperties_System_ComponentModel_ITypeDescriptorContext_object_System_Attribute__
	.long LDIFF_SYM303
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde9_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Drawing.SizeFConverter:GetPropertiesSupported"
	.asciz "System_Drawing_SizeFConverter_GetPropertiesSupported_System_ComponentModel_ITypeDescriptorContext"

	.byte 0,0
	.quad System_Drawing_SizeFConverter_GetPropertiesSupported_System_ComponentModel_ITypeDescriptorContext
	.quad Lme_a

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM304=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM304
	.byte 0,3
	.asciz "context"

LDIFF_SYM305=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM305
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM306=Lfde10_end - Lfde10_start
	.long LDIFF_SYM306
Lfde10_start:

	.long 0
	.align 3
	.quad System_Drawing_SizeFConverter_GetPropertiesSupported_System_ComponentModel_ITypeDescriptorContext

LDIFF_SYM307=Lme_a - System_Drawing_SizeFConverter_GetPropertiesSupported_System_ComponentModel_ITypeDescriptorContext
	.long LDIFF_SYM307
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde10_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Drawing.SizeFConverter:.ctor"
	.asciz "System_Drawing_SizeFConverter__ctor"

	.byte 0,0
	.quad System_Drawing_SizeFConverter__ctor
	.quad Lme_b

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM308=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM308
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM309=Lfde11_end - Lfde11_start
	.long LDIFF_SYM309
Lfde11_start:

	.long 0
	.align 3
	.quad System_Drawing_SizeFConverter__ctor

LDIFF_SYM310=Lme_b - System_Drawing_SizeFConverter__ctor
	.long LDIFF_SYM310
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde11_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Drawing.SizeFConverter:.cctor"
	.asciz "System_Drawing_SizeFConverter__cctor"

	.byte 0,0
	.quad System_Drawing_SizeFConverter__cctor
	.quad Lme_c

	.byte 2,118,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM311=Lfde12_end - Lfde12_start
	.long LDIFF_SYM311
Lfde12_start:

	.long 0
	.align 3
	.quad System_Drawing_SizeFConverter__cctor

LDIFF_SYM312=Lme_c - System_Drawing_SizeFConverter__cctor
	.long LDIFF_SYM312
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde12_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_24:

	.byte 5
	.asciz "System_Single"

	.byte 20,16
LDIFF_SYM313=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM313
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM314=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM314
	.byte 2,35,16,0,7
	.asciz "System_Single"

LDIFF_SYM315=LTDIE_24 - Ldebug_info_start
	.long LDIFF_SYM315
LTDIE_24_POINTER:

	.byte 13
LDIFF_SYM316=LTDIE_24 - Ldebug_info_start
	.long LDIFF_SYM316
LTDIE_24_REFERENCE:

	.byte 14
LDIFF_SYM317=LTDIE_24 - Ldebug_info_start
	.long LDIFF_SYM317
LTDIE_23:

	.byte 5
	.asciz "System_Drawing_PointF"

	.byte 24,16
LDIFF_SYM318=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM318
	.byte 2,35,0,6
	.asciz "x"

LDIFF_SYM319=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM319
	.byte 2,35,0,6
	.asciz "y"

LDIFF_SYM320=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM320
	.byte 2,35,4,0,7
	.asciz "System_Drawing_PointF"

LDIFF_SYM321=LTDIE_23 - Ldebug_info_start
	.long LDIFF_SYM321
LTDIE_23_POINTER:

	.byte 13
LDIFF_SYM322=LTDIE_23 - Ldebug_info_start
	.long LDIFF_SYM322
LTDIE_23_REFERENCE:

	.byte 14
LDIFF_SYM323=LTDIE_23 - Ldebug_info_start
	.long LDIFF_SYM323
	.byte 2
	.asciz "System.Drawing.PointF:get_X"
	.asciz "System_Drawing_PointF_get_X"

	.byte 0,0
	.quad System_Drawing_PointF_get_X
	.quad Lme_d

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM324=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM324
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM325=Lfde13_end - Lfde13_start
	.long LDIFF_SYM325
Lfde13_start:

	.long 0
	.align 3
	.quad System_Drawing_PointF_get_X

LDIFF_SYM326=Lme_d - System_Drawing_PointF_get_X
	.long LDIFF_SYM326
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde13_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Drawing.PointF:get_Y"
	.asciz "System_Drawing_PointF_get_Y"

	.byte 0,0
	.quad System_Drawing_PointF_get_Y
	.quad Lme_e

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM327=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM327
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM328=Lfde14_end - Lfde14_start
	.long LDIFF_SYM328
Lfde14_start:

	.long 0
	.align 3
	.quad System_Drawing_PointF_get_Y

LDIFF_SYM329=Lme_e - System_Drawing_PointF_get_Y
	.long LDIFF_SYM329
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde14_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Drawing.PointF:op_Equality"
	.asciz "System_Drawing_PointF_op_Equality_System_Drawing_PointF_System_Drawing_PointF"

	.byte 0,0
	.quad System_Drawing_PointF_op_Equality_System_Drawing_PointF_System_Drawing_PointF
	.quad Lme_f

	.byte 2,118,16,3
	.asciz "left"

LDIFF_SYM330=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM330
	.byte 2,141,16,3
	.asciz "right"

LDIFF_SYM331=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM331
	.byte 3,141,208,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM332=Lfde15_end - Lfde15_start
	.long LDIFF_SYM332
Lfde15_start:

	.long 0
	.align 3
	.quad System_Drawing_PointF_op_Equality_System_Drawing_PointF_System_Drawing_PointF

LDIFF_SYM333=Lme_f - System_Drawing_PointF_op_Equality_System_Drawing_PointF_System_Drawing_PointF
	.long LDIFF_SYM333
	.long 0
	.byte 12,31,0,68,14,160,1,157,20,158,19,68,13,29
	.align 3
Lfde15_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Drawing.PointF:Equals"
	.asciz "System_Drawing_PointF_Equals_object"

	.byte 0,0
	.quad System_Drawing_PointF_Equals_object
	.quad Lme_10

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM334=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM334
	.byte 2,141,32,3
	.asciz "obj"

LDIFF_SYM335=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM335
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM336=Lfde16_end - Lfde16_start
	.long LDIFF_SYM336
Lfde16_start:

	.long 0
	.align 3
	.quad System_Drawing_PointF_Equals_object

LDIFF_SYM337=Lme_10 - System_Drawing_PointF_Equals_object
	.long LDIFF_SYM337
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,152,4,68,154,3
	.align 3
Lfde16_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Drawing.PointF:Equals"
	.asciz "System_Drawing_PointF_Equals_System_Drawing_PointF"

	.byte 0,0
	.quad System_Drawing_PointF_Equals_System_Drawing_PointF
	.quad Lme_11

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM338=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM338
	.byte 2,141,16,3
	.asciz "other"

LDIFF_SYM339=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM339
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM340=Lfde17_end - Lfde17_start
	.long LDIFF_SYM340
Lfde17_start:

	.long 0
	.align 3
	.quad System_Drawing_PointF_Equals_System_Drawing_PointF

LDIFF_SYM341=Lme_11 - System_Drawing_PointF_Equals_System_Drawing_PointF
	.long LDIFF_SYM341
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29
	.align 3
Lfde17_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Drawing.PointF:GetHashCode"
	.asciz "System_Drawing_PointF_GetHashCode"

	.byte 0,0
	.quad System_Drawing_PointF_GetHashCode
	.quad Lme_12

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM342=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM342
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM343=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM343
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM344=Lfde18_end - Lfde18_start
	.long LDIFF_SYM344
Lfde18_start:

	.long 0
	.align 3
	.quad System_Drawing_PointF_GetHashCode

LDIFF_SYM345=Lme_12 - System_Drawing_PointF_GetHashCode
	.long LDIFF_SYM345
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,154,4
	.align 3
Lfde18_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Drawing.PointF:ToString"
	.asciz "System_Drawing_PointF_ToString"

	.byte 0,0
	.quad System_Drawing_PointF_ToString
	.quad Lme_13

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM346=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM346
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM347=Lfde19_end - Lfde19_start
	.long LDIFF_SYM347
Lfde19_start:

	.long 0
	.align 3
	.quad System_Drawing_PointF_ToString

LDIFF_SYM348=Lme_13 - System_Drawing_PointF_ToString
	.long LDIFF_SYM348
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29
	.align 3
Lfde19_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_25:

	.byte 5
	.asciz "System_Drawing_RectangleF"

	.byte 32,16
LDIFF_SYM349=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM349
	.byte 2,35,0,6
	.asciz "x"

LDIFF_SYM350=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM350
	.byte 2,35,0,6
	.asciz "y"

LDIFF_SYM351=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM351
	.byte 2,35,4,6
	.asciz "width"

LDIFF_SYM352=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM352
	.byte 2,35,8,6
	.asciz "height"

LDIFF_SYM353=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM353
	.byte 2,35,12,0,7
	.asciz "System_Drawing_RectangleF"

LDIFF_SYM354=LTDIE_25 - Ldebug_info_start
	.long LDIFF_SYM354
LTDIE_25_POINTER:

	.byte 13
LDIFF_SYM355=LTDIE_25 - Ldebug_info_start
	.long LDIFF_SYM355
LTDIE_25_REFERENCE:

	.byte 14
LDIFF_SYM356=LTDIE_25 - Ldebug_info_start
	.long LDIFF_SYM356
	.byte 2
	.asciz "System.Drawing.RectangleF:get_X"
	.asciz "System_Drawing_RectangleF_get_X"

	.byte 0,0
	.quad System_Drawing_RectangleF_get_X
	.quad Lme_14

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM357=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM357
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM358=Lfde20_end - Lfde20_start
	.long LDIFF_SYM358
Lfde20_start:

	.long 0
	.align 3
	.quad System_Drawing_RectangleF_get_X

LDIFF_SYM359=Lme_14 - System_Drawing_RectangleF_get_X
	.long LDIFF_SYM359
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde20_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Drawing.RectangleF:get_Y"
	.asciz "System_Drawing_RectangleF_get_Y"

	.byte 0,0
	.quad System_Drawing_RectangleF_get_Y
	.quad Lme_15

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM360=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM360
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM361=Lfde21_end - Lfde21_start
	.long LDIFF_SYM361
Lfde21_start:

	.long 0
	.align 3
	.quad System_Drawing_RectangleF_get_Y

LDIFF_SYM362=Lme_15 - System_Drawing_RectangleF_get_Y
	.long LDIFF_SYM362
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde21_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Drawing.RectangleF:get_Width"
	.asciz "System_Drawing_RectangleF_get_Width"

	.byte 0,0
	.quad System_Drawing_RectangleF_get_Width
	.quad Lme_16

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM363=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM363
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM364=Lfde22_end - Lfde22_start
	.long LDIFF_SYM364
Lfde22_start:

	.long 0
	.align 3
	.quad System_Drawing_RectangleF_get_Width

LDIFF_SYM365=Lme_16 - System_Drawing_RectangleF_get_Width
	.long LDIFF_SYM365
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde22_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Drawing.RectangleF:get_Height"
	.asciz "System_Drawing_RectangleF_get_Height"

	.byte 0,0
	.quad System_Drawing_RectangleF_get_Height
	.quad Lme_17

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM366=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM366
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM367=Lfde23_end - Lfde23_start
	.long LDIFF_SYM367
Lfde23_start:

	.long 0
	.align 3
	.quad System_Drawing_RectangleF_get_Height

LDIFF_SYM368=Lme_17 - System_Drawing_RectangleF_get_Height
	.long LDIFF_SYM368
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde23_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Drawing.RectangleF:Equals"
	.asciz "System_Drawing_RectangleF_Equals_object"

	.byte 0,0
	.quad System_Drawing_RectangleF_Equals_object
	.quad Lme_18

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM369=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM369
	.byte 2,141,32,3
	.asciz "obj"

LDIFF_SYM370=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM370
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM371=Lfde24_end - Lfde24_start
	.long LDIFF_SYM371
Lfde24_start:

	.long 0
	.align 3
	.quad System_Drawing_RectangleF_Equals_object

LDIFF_SYM372=Lme_18 - System_Drawing_RectangleF_Equals_object
	.long LDIFF_SYM372
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,152,6,68,154,5
	.align 3
Lfde24_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Drawing.RectangleF:Equals"
	.asciz "System_Drawing_RectangleF_Equals_System_Drawing_RectangleF"

	.byte 0,0
	.quad System_Drawing_RectangleF_Equals_System_Drawing_RectangleF
	.quad Lme_19

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM373=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM373
	.byte 2,141,16,3
	.asciz "other"

LDIFF_SYM374=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM374
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM375=Lfde25_end - Lfde25_start
	.long LDIFF_SYM375
Lfde25_start:

	.long 0
	.align 3
	.quad System_Drawing_RectangleF_Equals_System_Drawing_RectangleF

LDIFF_SYM376=Lme_19 - System_Drawing_RectangleF_Equals_System_Drawing_RectangleF
	.long LDIFF_SYM376
	.long 0
	.byte 12,31,0,68,14,112,157,14,158,13,68,13,29
	.align 3
Lfde25_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Drawing.RectangleF:op_Equality"
	.asciz "System_Drawing_RectangleF_op_Equality_System_Drawing_RectangleF_System_Drawing_RectangleF"

	.byte 0,0
	.quad System_Drawing_RectangleF_op_Equality_System_Drawing_RectangleF_System_Drawing_RectangleF
	.quad Lme_1a

	.byte 2,118,16,3
	.asciz "left"

LDIFF_SYM377=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM377
	.byte 2,141,16,3
	.asciz "right"

LDIFF_SYM378=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM378
	.byte 3,141,208,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM379=Lfde26_end - Lfde26_start
	.long LDIFF_SYM379
Lfde26_start:

	.long 0
	.align 3
	.quad System_Drawing_RectangleF_op_Equality_System_Drawing_RectangleF_System_Drawing_RectangleF

LDIFF_SYM380=Lme_1a - System_Drawing_RectangleF_op_Equality_System_Drawing_RectangleF_System_Drawing_RectangleF
	.long LDIFF_SYM380
	.long 0
	.byte 12,31,0,68,14,160,1,157,20,158,19,68,13,29
	.align 3
Lfde26_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Drawing.RectangleF:GetHashCode"
	.asciz "System_Drawing_RectangleF_GetHashCode"

	.byte 0,0
	.quad System_Drawing_RectangleF_GetHashCode
	.quad Lme_1b

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM381=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM381
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM382=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM382
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM383=Lfde27_end - Lfde27_start
	.long LDIFF_SYM383
Lfde27_start:

	.long 0
	.align 3
	.quad System_Drawing_RectangleF_GetHashCode

LDIFF_SYM384=Lme_1b - System_Drawing_RectangleF_GetHashCode
	.long LDIFF_SYM384
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,154,6
	.align 3
Lfde27_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Drawing.RectangleF:ToString"
	.asciz "System_Drawing_RectangleF_ToString"

	.byte 0,0
	.quad System_Drawing_RectangleF_ToString
	.quad Lme_1c

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM385=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM385
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM386=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM386
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM387=Lfde28_end - Lfde28_start
	.long LDIFF_SYM387
Lfde28_start:

	.long 0
	.align 3
	.quad System_Drawing_RectangleF_ToString

LDIFF_SYM388=Lme_1c - System_Drawing_RectangleF_ToString
	.long LDIFF_SYM388
	.long 0
	.byte 12,31,0,68,14,144,1,157,18,158,17,68,13,29,68,154,16
	.align 3
Lfde28_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_26:

	.byte 5
	.asciz "System_Drawing_SizeF"

	.byte 24,16
LDIFF_SYM389=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM389
	.byte 2,35,0,6
	.asciz "width"

LDIFF_SYM390=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM390
	.byte 2,35,0,6
	.asciz "height"

LDIFF_SYM391=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM391
	.byte 2,35,4,0,7
	.asciz "System_Drawing_SizeF"

LDIFF_SYM392=LTDIE_26 - Ldebug_info_start
	.long LDIFF_SYM392
LTDIE_26_POINTER:

	.byte 13
LDIFF_SYM393=LTDIE_26 - Ldebug_info_start
	.long LDIFF_SYM393
LTDIE_26_REFERENCE:

	.byte 14
LDIFF_SYM394=LTDIE_26 - Ldebug_info_start
	.long LDIFF_SYM394
	.byte 2
	.asciz "System.Drawing.SizeF:.ctor"
	.asciz "System_Drawing_SizeF__ctor_System_Drawing_SizeF"

	.byte 0,0
	.quad System_Drawing_SizeF__ctor_System_Drawing_SizeF
	.quad Lme_1d

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM395=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM395
	.byte 1,106,3
	.asciz "size"

LDIFF_SYM396=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM396
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM397=Lfde29_end - Lfde29_start
	.long LDIFF_SYM397
Lfde29_start:

	.long 0
	.align 3
	.quad System_Drawing_SizeF__ctor_System_Drawing_SizeF

LDIFF_SYM398=Lme_1d - System_Drawing_SizeF__ctor_System_Drawing_SizeF
	.long LDIFF_SYM398
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,154,10
	.align 3
Lfde29_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Drawing.SizeF:.ctor"
	.asciz "System_Drawing_SizeF__ctor_System_Drawing_PointF"

	.byte 0,0
	.quad System_Drawing_SizeF__ctor_System_Drawing_PointF
	.quad Lme_1e

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM399=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM399
	.byte 1,106,3
	.asciz "pt"

LDIFF_SYM400=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM400
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM401=Lfde30_end - Lfde30_start
	.long LDIFF_SYM401
Lfde30_start:

	.long 0
	.align 3
	.quad System_Drawing_SizeF__ctor_System_Drawing_PointF

LDIFF_SYM402=Lme_1e - System_Drawing_SizeF__ctor_System_Drawing_PointF
	.long LDIFF_SYM402
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,154,10
	.align 3
Lfde30_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Drawing.SizeF:.ctor"
	.asciz "System_Drawing_SizeF__ctor_single_single"

	.byte 0,0
	.quad System_Drawing_SizeF__ctor_single_single
	.quad Lme_1f

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM403=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM403
	.byte 1,106,3
	.asciz "width"

LDIFF_SYM404=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM404
	.byte 2,141,24,3
	.asciz "height"

LDIFF_SYM405=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM405
	.byte 2,141,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM406=Lfde31_end - Lfde31_start
	.long LDIFF_SYM406
Lfde31_start:

	.long 0
	.align 3
	.quad System_Drawing_SizeF__ctor_single_single

LDIFF_SYM407=Lme_1f - System_Drawing_SizeF__ctor_single_single
	.long LDIFF_SYM407
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,154,4
	.align 3
Lfde31_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Drawing.SizeF:op_Equality"
	.asciz "System_Drawing_SizeF_op_Equality_System_Drawing_SizeF_System_Drawing_SizeF"

	.byte 0,0
	.quad System_Drawing_SizeF_op_Equality_System_Drawing_SizeF_System_Drawing_SizeF
	.quad Lme_20

	.byte 2,118,16,3
	.asciz "sz1"

LDIFF_SYM408=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM408
	.byte 2,141,16,3
	.asciz "sz2"

LDIFF_SYM409=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM409
	.byte 3,141,208,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM410=Lfde32_end - Lfde32_start
	.long LDIFF_SYM410
Lfde32_start:

	.long 0
	.align 3
	.quad System_Drawing_SizeF_op_Equality_System_Drawing_SizeF_System_Drawing_SizeF

LDIFF_SYM411=Lme_20 - System_Drawing_SizeF_op_Equality_System_Drawing_SizeF_System_Drawing_SizeF
	.long LDIFF_SYM411
	.long 0
	.byte 12,31,0,68,14,160,1,157,20,158,19,68,13,29
	.align 3
Lfde32_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Drawing.SizeF:get_Width"
	.asciz "System_Drawing_SizeF_get_Width"

	.byte 0,0
	.quad System_Drawing_SizeF_get_Width
	.quad Lme_21

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM412=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM412
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM413=Lfde33_end - Lfde33_start
	.long LDIFF_SYM413
Lfde33_start:

	.long 0
	.align 3
	.quad System_Drawing_SizeF_get_Width

LDIFF_SYM414=Lme_21 - System_Drawing_SizeF_get_Width
	.long LDIFF_SYM414
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde33_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Drawing.SizeF:get_Height"
	.asciz "System_Drawing_SizeF_get_Height"

	.byte 0,0
	.quad System_Drawing_SizeF_get_Height
	.quad Lme_22

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM415=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM415
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM416=Lfde34_end - Lfde34_start
	.long LDIFF_SYM416
Lfde34_start:

	.long 0
	.align 3
	.quad System_Drawing_SizeF_get_Height

LDIFF_SYM417=Lme_22 - System_Drawing_SizeF_get_Height
	.long LDIFF_SYM417
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde34_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Drawing.SizeF:Equals"
	.asciz "System_Drawing_SizeF_Equals_object"

	.byte 0,0
	.quad System_Drawing_SizeF_Equals_object
	.quad Lme_23

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM418=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM418
	.byte 2,141,32,3
	.asciz "obj"

LDIFF_SYM419=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM419
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM420=Lfde35_end - Lfde35_start
	.long LDIFF_SYM420
Lfde35_start:

	.long 0
	.align 3
	.quad System_Drawing_SizeF_Equals_object

LDIFF_SYM421=Lme_23 - System_Drawing_SizeF_Equals_object
	.long LDIFF_SYM421
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,152,4,68,154,3
	.align 3
Lfde35_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Drawing.SizeF:Equals"
	.asciz "System_Drawing_SizeF_Equals_System_Drawing_SizeF"

	.byte 0,0
	.quad System_Drawing_SizeF_Equals_System_Drawing_SizeF
	.quad Lme_24

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM422=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM422
	.byte 2,141,16,3
	.asciz "other"

LDIFF_SYM423=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM423
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM424=Lfde36_end - Lfde36_start
	.long LDIFF_SYM424
Lfde36_start:

	.long 0
	.align 3
	.quad System_Drawing_SizeF_Equals_System_Drawing_SizeF

LDIFF_SYM425=Lme_24 - System_Drawing_SizeF_Equals_System_Drawing_SizeF
	.long LDIFF_SYM425
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29
	.align 3
Lfde36_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Drawing.SizeF:GetHashCode"
	.asciz "System_Drawing_SizeF_GetHashCode"

	.byte 0,0
	.quad System_Drawing_SizeF_GetHashCode
	.quad Lme_25

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM426=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM426
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM427=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM427
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM428=Lfde37_end - Lfde37_start
	.long LDIFF_SYM428
Lfde37_start:

	.long 0
	.align 3
	.quad System_Drawing_SizeF_GetHashCode

LDIFF_SYM429=Lme_25 - System_Drawing_SizeF_GetHashCode
	.long LDIFF_SYM429
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,154,4
	.align 3
Lfde37_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Drawing.SizeF:ToString"
	.asciz "System_Drawing_SizeF_ToString"

	.byte 0,0
	.quad System_Drawing_SizeF_ToString
	.quad Lme_26

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM430=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM430
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM431=Lfde38_end - Lfde38_start
	.long LDIFF_SYM431
Lfde38_start:

	.long 0
	.align 3
	.quad System_Drawing_SizeF_ToString

LDIFF_SYM432=Lme_26 - System_Drawing_SizeF_ToString
	.long LDIFF_SYM432
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29
	.align 3
Lfde38_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "(wrapper_other)_System.Drawing.PointF:StructureToPtr"
	.asciz "wrapper_other_System_Drawing_PointF_StructureToPtr_object_intptr_bool"

	.byte 0,0
	.quad wrapper_other_System_Drawing_PointF_StructureToPtr_object_intptr_bool
	.quad Lme_2b

	.byte 2,118,16,3
	.asciz "param0"

LDIFF_SYM433=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM433
	.byte 2,141,16,3
	.asciz "param1"

LDIFF_SYM434=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM434
	.byte 2,141,24,3
	.asciz "param2"

LDIFF_SYM435=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM435
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM436=Lfde39_end - Lfde39_start
	.long LDIFF_SYM436
Lfde39_start:

	.long 0
	.align 3
	.quad wrapper_other_System_Drawing_PointF_StructureToPtr_object_intptr_bool

LDIFF_SYM437=Lme_2b - wrapper_other_System_Drawing_PointF_StructureToPtr_object_intptr_bool
	.long LDIFF_SYM437
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde39_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "(wrapper_other)_System.Drawing.PointF:PtrToStructure"
	.asciz "wrapper_other_System_Drawing_PointF_PtrToStructure_intptr_object"

	.byte 0,0
	.quad wrapper_other_System_Drawing_PointF_PtrToStructure_intptr_object
	.quad Lme_2c

	.byte 2,118,16,3
	.asciz "param0"

LDIFF_SYM438=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM438
	.byte 2,141,16,3
	.asciz "param1"

LDIFF_SYM439=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM439
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM440=Lfde40_end - Lfde40_start
	.long LDIFF_SYM440
Lfde40_start:

	.long 0
	.align 3
	.quad wrapper_other_System_Drawing_PointF_PtrToStructure_intptr_object

LDIFF_SYM441=Lme_2c - wrapper_other_System_Drawing_PointF_PtrToStructure_intptr_object
	.long LDIFF_SYM441
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde40_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "(wrapper_other)_System.Drawing.RectangleF:StructureToPtr"
	.asciz "wrapper_other_System_Drawing_RectangleF_StructureToPtr_object_intptr_bool"

	.byte 0,0
	.quad wrapper_other_System_Drawing_RectangleF_StructureToPtr_object_intptr_bool
	.quad Lme_2d

	.byte 2,118,16,3
	.asciz "param0"

LDIFF_SYM442=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM442
	.byte 2,141,16,3
	.asciz "param1"

LDIFF_SYM443=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM443
	.byte 2,141,24,3
	.asciz "param2"

LDIFF_SYM444=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM444
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM445=Lfde41_end - Lfde41_start
	.long LDIFF_SYM445
Lfde41_start:

	.long 0
	.align 3
	.quad wrapper_other_System_Drawing_RectangleF_StructureToPtr_object_intptr_bool

LDIFF_SYM446=Lme_2d - wrapper_other_System_Drawing_RectangleF_StructureToPtr_object_intptr_bool
	.long LDIFF_SYM446
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde41_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "(wrapper_other)_System.Drawing.RectangleF:PtrToStructure"
	.asciz "wrapper_other_System_Drawing_RectangleF_PtrToStructure_intptr_object"

	.byte 0,0
	.quad wrapper_other_System_Drawing_RectangleF_PtrToStructure_intptr_object
	.quad Lme_2e

	.byte 2,118,16,3
	.asciz "param0"

LDIFF_SYM447=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM447
	.byte 2,141,16,3
	.asciz "param1"

LDIFF_SYM448=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM448
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM449=Lfde42_end - Lfde42_start
	.long LDIFF_SYM449
Lfde42_start:

	.long 0
	.align 3
	.quad wrapper_other_System_Drawing_RectangleF_PtrToStructure_intptr_object

LDIFF_SYM450=Lme_2e - wrapper_other_System_Drawing_RectangleF_PtrToStructure_intptr_object
	.long LDIFF_SYM450
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde42_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "(wrapper_other)_System.Drawing.SizeF:StructureToPtr"
	.asciz "wrapper_other_System_Drawing_SizeF_StructureToPtr_object_intptr_bool"

	.byte 0,0
	.quad wrapper_other_System_Drawing_SizeF_StructureToPtr_object_intptr_bool
	.quad Lme_2f

	.byte 2,118,16,3
	.asciz "param0"

LDIFF_SYM451=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM451
	.byte 2,141,16,3
	.asciz "param1"

LDIFF_SYM452=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM452
	.byte 2,141,24,3
	.asciz "param2"

LDIFF_SYM453=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM453
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM454=Lfde43_end - Lfde43_start
	.long LDIFF_SYM454
Lfde43_start:

	.long 0
	.align 3
	.quad wrapper_other_System_Drawing_SizeF_StructureToPtr_object_intptr_bool

LDIFF_SYM455=Lme_2f - wrapper_other_System_Drawing_SizeF_StructureToPtr_object_intptr_bool
	.long LDIFF_SYM455
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde43_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "(wrapper_other)_System.Drawing.SizeF:PtrToStructure"
	.asciz "wrapper_other_System_Drawing_SizeF_PtrToStructure_intptr_object"

	.byte 0,0
	.quad wrapper_other_System_Drawing_SizeF_PtrToStructure_intptr_object
	.quad Lme_30

	.byte 2,118,16,3
	.asciz "param0"

LDIFF_SYM456=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM456
	.byte 2,141,16,3
	.asciz "param1"

LDIFF_SYM457=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM457
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM458=Lfde44_end - Lfde44_start
	.long LDIFF_SYM458
Lfde44_start:

	.long 0
	.align 3
	.quad wrapper_other_System_Drawing_SizeF_PtrToStructure_intptr_object

LDIFF_SYM459=Lme_30 - wrapper_other_System_Drawing_SizeF_PtrToStructure_intptr_object
	.long LDIFF_SYM459
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde44_end:

.section __DWARF, __debug_info,regular,debug

	.byte 0
Ldebug_info_end:
.text
	.align 3
mem_end:
