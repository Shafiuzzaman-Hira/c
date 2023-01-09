// This file is part of the SV-Benchmarks collection of verification tasks:
// https://gitlab.com/sosy-lab/benchmarking/sv-benchmarks
//
// SPDX-FileCopyrightText: 2020 Aman Goel
// SPDX-FileCopyrightText: 2022 The SV-Benchmarks Community
//
// SPDX-License-Identifier: GPL-3.0-or-later

// This C program is converted from Btor2 by Btor2C version bfcfb8b
//   with arguments: { architecture=64, lazy_modulo=true, use_memmove=false, unroll_inner_loops=false, shortest_type=true, diff_type=true, decimal_constant=true, zero_init=false, sra_extend_sign=true }
// Comments from the original Btor2 file:
// ; source: https://github.com/aman-goel/avr/tree/92362931700b66684418a991d018c9fbdbebc06f/tests
// ; BTOR description generated by Yosys 0.9+431 (git sha1 4a3b5437, clang 4.0.1-6 -fPIC -Os) for module main.
extern void abort(void);
void reach_error() {}
extern unsigned char __VERIFIER_nondet_uchar();
extern unsigned short __VERIFIER_nondet_ushort();
extern unsigned int __VERIFIER_nondet_uint();
extern unsigned long __VERIFIER_nondet_ulong();
void __VERIFIER_assert(int cond) { if (!(cond)) { ERROR: { reach_error(); abort(); } } }
void assume_abort_if_not(int cond) { if (!cond) { abort(); } }
int main() {
  // Defining sorts ...
  typedef unsigned char SORT_1;  // BV with 1 bits
  const SORT_1 mask_SORT_1 = (SORT_1)-1 >> (sizeof(SORT_1) * 8 - 1);
  const SORT_1 msb_SORT_1 = (SORT_1)1 << (1 - 1);
  typedef unsigned char SORT_3;  // BV with 8 bits
  const SORT_3 mask_SORT_3 = (SORT_3)-1 >> (sizeof(SORT_3) * 8 - 8);
  const SORT_3 msb_SORT_3 = (SORT_3)1 << (8 - 1);
  typedef unsigned int SORT_10;  // BV with 32 bits
  const SORT_10 mask_SORT_10 = (SORT_10)-1 >> (sizeof(SORT_10) * 8 - 32);
  const SORT_10 msb_SORT_10 = (SORT_10)1 << (32 - 1);
  typedef unsigned char SORT_31;  // BV with 4 bits
  const SORT_31 mask_SORT_31 = (SORT_31)-1 >> (sizeof(SORT_31) * 8 - 4);
  const SORT_31 msb_SORT_31 = (SORT_31)1 << (4 - 1);
  typedef unsigned short SORT_67;  // BV with 10 bits
  const SORT_67 mask_SORT_67 = (SORT_67)-1 >> (sizeof(SORT_67) * 8 - 10);
  const SORT_67 msb_SORT_67 = (SORT_67)1 << (10 - 1);
  // Initializing constants ...
  const SORT_1 var_7 = 0;
  const SORT_10 var_12 = 0;
  const SORT_1 var_21 = 1;
  const SORT_67 var_68 = 0;
  const SORT_10 var_119 = 104;
  const SORT_10 var_136 = 1;
  // Collecting input declarations ...
  SORT_1 input_2;
  SORT_3 input_4;
  SORT_1 input_5;
  SORT_1 input_6;
  SORT_1 input_29;
  SORT_31 input_32;
  SORT_31 input_34;
  SORT_1 input_36;
  SORT_1 input_38;
  SORT_1 input_44;
  SORT_1 input_46;
  SORT_1 input_48;
  SORT_3 input_52;
  SORT_1 input_55;
  SORT_1 input_63;
  SORT_1 input_73;
  SORT_1 input_79;
  SORT_1 input_81;
  SORT_1 input_95;
  SORT_1 input_101;
  SORT_1 input_107;
  SORT_1 input_113;
  SORT_1 input_114;
  SORT_1 input_115;
  SORT_67 input_134;
  SORT_1 input_143;
  SORT_1 input_144;
  SORT_1 input_145;
  // Collecting state declarations ...
  SORT_1 state_8 = __VERIFIER_nondet_uchar() & mask_SORT_1;
  SORT_1 state_14 = __VERIFIER_nondet_uchar() & mask_SORT_1;
  SORT_1 state_25 = __VERIFIER_nondet_uchar() & mask_SORT_1;
  SORT_1 state_27 = __VERIFIER_nondet_uchar() & mask_SORT_1;
  SORT_1 state_40 = __VERIFIER_nondet_uchar() & mask_SORT_1;
  SORT_1 state_42 = __VERIFIER_nondet_uchar() & mask_SORT_1;
  SORT_1 state_50 = __VERIFIER_nondet_uchar() & mask_SORT_1;
  SORT_1 state_57 = __VERIFIER_nondet_uchar() & mask_SORT_1;
  SORT_1 state_59 = __VERIFIER_nondet_uchar() & mask_SORT_1;
  SORT_1 state_61 = __VERIFIER_nondet_uchar() & mask_SORT_1;
  SORT_1 state_65 = __VERIFIER_nondet_uchar() & mask_SORT_1;
  SORT_67 state_69 = __VERIFIER_nondet_ushort() & mask_SORT_67;
  SORT_1 state_71 = __VERIFIER_nondet_uchar() & mask_SORT_1;
  // Initializing states ...
  SORT_1 init_9_arg_1 = var_7;
  state_8 = init_9_arg_1;
  SORT_1 init_15_arg_1 = var_7;
  state_14 = init_15_arg_1;
  SORT_1 init_26_arg_1 = var_7;
  state_25 = init_26_arg_1;
  SORT_1 init_28_arg_1 = var_7;
  state_27 = init_28_arg_1;
  SORT_1 init_41_arg_1 = var_7;
  state_40 = init_41_arg_1;
  SORT_1 init_43_arg_1 = var_7;
  state_42 = init_43_arg_1;
  SORT_1 init_51_arg_1 = var_21;
  state_50 = init_51_arg_1;
  SORT_1 init_58_arg_1 = var_7;
  state_57 = init_58_arg_1;
  SORT_1 init_60_arg_1 = var_7;
  state_59 = init_60_arg_1;
  SORT_1 init_62_arg_1 = var_7;
  state_61 = init_62_arg_1;
  SORT_1 init_66_arg_1 = var_7;
  state_65 = init_66_arg_1;
  SORT_67 init_70_arg_1 = var_68;
  state_69 = init_70_arg_1;
  SORT_1 init_72_arg_1 = var_7;
  state_71 = init_72_arg_1;
  for (;;) {
    // Getting external input values ...
    input_2 = __VERIFIER_nondet_uchar();
    input_4 = __VERIFIER_nondet_uchar();
    input_5 = __VERIFIER_nondet_uchar();
    input_6 = __VERIFIER_nondet_uchar();
    input_29 = __VERIFIER_nondet_uchar();
    input_32 = __VERIFIER_nondet_uchar();
    input_34 = __VERIFIER_nondet_uchar();
    input_36 = __VERIFIER_nondet_uchar();
    input_38 = __VERIFIER_nondet_uchar();
    input_44 = __VERIFIER_nondet_uchar();
    input_46 = __VERIFIER_nondet_uchar();
    input_48 = __VERIFIER_nondet_uchar();
    input_52 = __VERIFIER_nondet_uchar();
    input_55 = __VERIFIER_nondet_uchar();
    input_63 = __VERIFIER_nondet_uchar();
    input_73 = __VERIFIER_nondet_uchar();
    input_79 = __VERIFIER_nondet_uchar();
    input_81 = __VERIFIER_nondet_uchar();
    input_95 = __VERIFIER_nondet_uchar();
    input_101 = __VERIFIER_nondet_uchar();
    input_107 = __VERIFIER_nondet_uchar();
    input_113 = __VERIFIER_nondet_uchar();
    input_114 = __VERIFIER_nondet_uchar();
    input_115 = __VERIFIER_nondet_uchar();
    input_134 = __VERIFIER_nondet_ushort();
    input_143 = __VERIFIER_nondet_uchar();
    input_144 = __VERIFIER_nondet_uchar();
    input_145 = __VERIFIER_nondet_uchar();
    // Assuming invariants ...
    // Asserting properties ...
    SORT_1 var_11_arg_0 = state_8;
    var_11_arg_0 = var_11_arg_0 & mask_SORT_1;
    SORT_10 var_11 = var_11_arg_0;
    SORT_10 var_13_arg_0 = var_11;
    SORT_10 var_13_arg_1 = var_12;
    SORT_1 var_13 = var_13_arg_0 == var_13_arg_1;
    SORT_1 var_16_arg_0 = state_14;
    var_16_arg_0 = var_16_arg_0 & mask_SORT_1;
    SORT_10 var_16 = var_16_arg_0;
    SORT_10 var_17_arg_0 = var_16;
    SORT_10 var_17_arg_1 = var_12;
    SORT_1 var_17 = var_17_arg_0 == var_17_arg_1;
    SORT_1 var_18_arg_0 = var_13;
    SORT_1 var_18_arg_1 = var_17;
    SORT_1 var_18 = var_18_arg_0 | var_18_arg_1;
    SORT_1 var_22_arg_0 = var_18;
    SORT_1 var_22 = ~var_22_arg_0;
    SORT_1 var_23_arg_0 = var_21;
    SORT_1 var_23_arg_1 = var_22;
    SORT_1 var_23 = var_23_arg_0 & var_23_arg_1;
    var_23 = var_23 & mask_SORT_1;
    SORT_1 bad_24_arg_0 = var_23;
    __VERIFIER_assert(!(bad_24_arg_0));
    // Computing next states ...
    SORT_1 var_74_arg_0 = state_40;
    SORT_1 var_74_arg_1 = var_7;
    SORT_1 var_74 = var_74_arg_0 == var_74_arg_1;
    SORT_1 var_75_arg_0 = var_74;
    SORT_1 var_75_arg_1 = var_7;
    SORT_1 var_75_arg_2 = input_73;
    SORT_1 var_75 = var_75_arg_0 ? var_75_arg_1 : var_75_arg_2;
    SORT_1 var_76_arg_0 = state_40;
    SORT_1 var_76_arg_1 = state_8;
    SORT_1 var_76_arg_2 = var_75;
    SORT_1 var_76 = var_76_arg_0 ? var_76_arg_1 : var_76_arg_2;
    SORT_1 next_77_arg_1 = var_76;
    SORT_1 var_80_arg_0 = state_71;
    SORT_1 var_80_arg_1 = var_21;
    SORT_1 var_80_arg_2 = state_65;
    SORT_1 var_80 = var_80_arg_0 ? var_80_arg_1 : var_80_arg_2;
    SORT_1 var_82_arg_0 = var_80;
    SORT_1 var_82 = ~var_82_arg_0;
    var_82 = var_82 & mask_SORT_1;
    SORT_1 var_83_arg_0 = var_82;
    SORT_1 var_83_arg_1 = var_21;
    SORT_1 var_83_arg_2 = var_80;
    SORT_1 var_83 = var_83_arg_0 ? var_83_arg_1 : var_83_arg_2;
    SORT_1 var_84_arg_0 = state_42;
    SORT_1 var_84_arg_1 = var_83;
    SORT_1 var_84_arg_2 = input_81;
    SORT_1 var_84 = var_84_arg_0 ? var_84_arg_1 : var_84_arg_2;
    SORT_1 var_85_arg_0 = state_42;
    SORT_1 var_85_arg_1 = var_84;
    SORT_1 var_85_arg_2 = var_80;
    SORT_1 var_85 = var_85_arg_0 ? var_85_arg_1 : var_85_arg_2;
    SORT_1 var_86_arg_0 = var_85;
    SORT_1 var_86 = ~var_86_arg_0;
    SORT_1 var_87_arg_0 = input_5;
    SORT_1 var_87 = ~var_87_arg_0;
    SORT_1 var_88_arg_0 = var_86;
    SORT_1 var_88_arg_1 = var_87;
    SORT_1 var_88 = var_88_arg_0 | var_88_arg_1;
    var_88 = var_88 & mask_SORT_1;
    SORT_1 var_78_arg_0 = state_71;
    SORT_1 var_78_arg_1 = var_7;
    SORT_1 var_78_arg_2 = state_14;
    SORT_1 var_78 = var_78_arg_0 ? var_78_arg_1 : var_78_arg_2;
    SORT_1 var_89_arg_0 = var_88;
    SORT_1 var_89_arg_1 = var_78;
    SORT_1 var_89_arg_2 = var_21;
    SORT_1 var_89 = var_89_arg_0 ? var_89_arg_1 : var_89_arg_2;
    SORT_1 var_90_arg_0 = state_57;
    SORT_1 var_90_arg_1 = var_89;
    SORT_1 var_90_arg_2 = input_79;
    SORT_1 var_90 = var_90_arg_0 ? var_90_arg_1 : var_90_arg_2;
    SORT_1 var_91_arg_0 = state_57;
    SORT_1 var_91_arg_1 = var_90;
    SORT_1 var_91_arg_2 = var_78;
    SORT_1 var_91 = var_91_arg_0 ? var_91_arg_1 : var_91_arg_2;
    var_91 = var_91 & mask_SORT_1;
    SORT_1 next_92_arg_1 = var_91;
    SORT_1 var_93_arg_0 = state_25;
    SORT_1 var_93_arg_1 = var_7;
    SORT_1 var_93_arg_2 = var_21;
    SORT_1 var_93 = var_93_arg_0 ? var_93_arg_1 : var_93_arg_2;
    var_93 = var_93 & mask_SORT_1;
    SORT_1 next_94_arg_1 = var_93;
    SORT_1 var_97_arg_0 = state_27;
    SORT_1 var_97_arg_1 = var_7;
    SORT_1 var_97 = var_97_arg_0 == var_97_arg_1;
    SORT_1 var_96_arg_0 = state_59;
    SORT_1 var_96_arg_1 = var_21;
    SORT_1 var_96_arg_2 = var_7;
    SORT_1 var_96 = var_96_arg_0 ? var_96_arg_1 : var_96_arg_2;
    SORT_1 var_98_arg_0 = var_97;
    SORT_1 var_98_arg_1 = var_96;
    SORT_1 var_98_arg_2 = input_95;
    SORT_1 var_98 = var_98_arg_0 ? var_98_arg_1 : var_98_arg_2;
    SORT_1 var_99_arg_0 = state_27;
    SORT_1 var_99_arg_1 = var_7;
    SORT_1 var_99_arg_2 = var_98;
    SORT_1 var_99 = var_99_arg_0 ? var_99_arg_1 : var_99_arg_2;
    var_99 = var_99 & mask_SORT_1;
    SORT_1 next_100_arg_1 = var_99;
    SORT_1 var_103_arg_0 = state_40;
    SORT_1 var_103_arg_1 = var_7;
    SORT_1 var_103 = var_103_arg_0 == var_103_arg_1;
    SORT_1 var_102_arg_0 = state_61;
    SORT_1 var_102_arg_1 = var_21;
    SORT_1 var_102_arg_2 = var_7;
    SORT_1 var_102 = var_102_arg_0 ? var_102_arg_1 : var_102_arg_2;
    SORT_1 var_104_arg_0 = var_103;
    SORT_1 var_104_arg_1 = var_102;
    SORT_1 var_104_arg_2 = input_101;
    SORT_1 var_104 = var_104_arg_0 ? var_104_arg_1 : var_104_arg_2;
    SORT_1 var_105_arg_0 = state_40;
    SORT_1 var_105_arg_1 = var_7;
    SORT_1 var_105_arg_2 = var_104;
    SORT_1 var_105 = var_105_arg_0 ? var_105_arg_1 : var_105_arg_2;
    var_105 = var_105 & mask_SORT_1;
    SORT_1 next_106_arg_1 = var_105;
    SORT_1 var_109_arg_0 = state_40;
    SORT_1 var_109_arg_1 = var_7;
    SORT_1 var_109 = var_109_arg_0 == var_109_arg_1;
    SORT_1 var_108_arg_0 = state_61;
    SORT_1 var_108_arg_1 = var_21;
    SORT_1 var_108_arg_2 = state_42;
    SORT_1 var_108 = var_108_arg_0 ? var_108_arg_1 : var_108_arg_2;
    SORT_1 var_110_arg_0 = var_109;
    SORT_1 var_110_arg_1 = var_108;
    SORT_1 var_110_arg_2 = input_107;
    SORT_1 var_110 = var_110_arg_0 ? var_110_arg_1 : var_110_arg_2;
    SORT_1 var_111_arg_0 = state_40;
    SORT_1 var_111_arg_1 = var_7;
    SORT_1 var_111_arg_2 = var_110;
    SORT_1 var_111 = var_111_arg_0 ? var_111_arg_1 : var_111_arg_2;
    var_111 = var_111 & mask_SORT_1;
    SORT_1 next_112_arg_1 = var_111;
    SORT_67 var_118_arg_0 = state_69;
    var_118_arg_0 = var_118_arg_0 & mask_SORT_67;
    SORT_10 var_118 = var_118_arg_0;
    SORT_10 var_120_arg_0 = var_118;
    SORT_10 var_120_arg_1 = var_119;
    SORT_1 var_120 = var_120_arg_0 > var_120_arg_1;
    SORT_1 var_116_arg_0 = state_50;
    SORT_1 var_116_arg_1 = var_7;
    SORT_1 var_116 = var_116_arg_0 == var_116_arg_1;
    SORT_1 var_117_arg_0 = var_116;
    SORT_1 var_117_arg_1 = var_21;
    SORT_1 var_117_arg_2 = var_21;
    SORT_1 var_117 = var_117_arg_0 ? var_117_arg_1 : var_117_arg_2;
    SORT_1 var_121_arg_0 = var_120;
    SORT_1 var_121_arg_1 = var_117;
    SORT_1 var_121_arg_2 = input_115;
    SORT_1 var_121 = var_121_arg_0 ? var_121_arg_1 : var_121_arg_2;
    SORT_1 var_122_arg_0 = state_14;
    SORT_1 var_122_arg_1 = var_121;
    SORT_1 var_122_arg_2 = input_114;
    SORT_1 var_122 = var_122_arg_0 ? var_122_arg_1 : var_122_arg_2;
    SORT_1 var_123_arg_0 = var_120;
    SORT_1 var_123_arg_1 = var_122;
    SORT_1 var_123_arg_2 = state_50;
    SORT_1 var_123 = var_123_arg_0 ? var_123_arg_1 : var_123_arg_2;
    SORT_1 var_124_arg_0 = state_14;
    SORT_1 var_124_arg_1 = var_123;
    SORT_1 var_124_arg_2 = input_113;
    SORT_1 var_124 = var_124_arg_0 ? var_124_arg_1 : var_124_arg_2;
    SORT_1 var_125_arg_0 = state_14;
    SORT_1 var_125_arg_1 = var_124;
    SORT_1 var_125_arg_2 = state_50;
    SORT_1 var_125 = var_125_arg_0 ? var_125_arg_1 : var_125_arg_2;
    var_125 = var_125 & mask_SORT_1;
    SORT_1 next_126_arg_1 = var_125;
    SORT_1 var_127_arg_0 = state_40;
    SORT_1 var_127_arg_1 = var_21;
    SORT_1 var_127_arg_2 = state_57;
    SORT_1 var_127 = var_127_arg_0 ? var_127_arg_1 : var_127_arg_2;
    var_127 = var_127 & mask_SORT_1;
    SORT_1 next_128_arg_1 = var_127;
    SORT_1 var_129_arg_0 = state_25;
    SORT_1 var_129_arg_1 = state_59;
    SORT_1 var_129_arg_2 = state_59;
    SORT_1 var_129 = var_129_arg_0 ? var_129_arg_1 : var_129_arg_2;
    var_129 = var_129 & mask_SORT_1;
    SORT_1 next_130_arg_1 = var_129;
    SORT_1 var_131_arg_0 = state_27;
    SORT_1 var_131_arg_1 = var_21;
    SORT_1 var_131_arg_2 = state_61;
    SORT_1 var_131 = var_131_arg_0 ? var_131_arg_1 : var_131_arg_2;
    var_131 = var_131 & mask_SORT_1;
    SORT_1 next_132_arg_1 = var_131;
    SORT_1 next_133_arg_1 = var_85;
    SORT_67 var_135_arg_0 = state_69;
    var_135_arg_0 = var_135_arg_0 & mask_SORT_67;
    SORT_10 var_135 = var_135_arg_0;
    SORT_10 var_137_arg_0 = var_135;
    SORT_10 var_137_arg_1 = var_136;
    SORT_10 var_137 = var_137_arg_0 + var_137_arg_1;
    SORT_10 var_138_arg_0 = var_137;
    SORT_67 var_138 = var_138_arg_0 >> 0;
    SORT_1 var_139_arg_0 = var_120;
    SORT_67 var_139_arg_1 = var_68;
    SORT_67 var_139_arg_2 = var_138;
    SORT_67 var_139 = var_139_arg_0 ? var_139_arg_1 : var_139_arg_2;
    SORT_1 var_140_arg_0 = state_14;
    SORT_67 var_140_arg_1 = var_139;
    SORT_67 var_140_arg_2 = input_134;
    SORT_67 var_140 = var_140_arg_0 ? var_140_arg_1 : var_140_arg_2;
    SORT_1 var_141_arg_0 = state_14;
    SORT_67 var_141_arg_1 = var_140;
    SORT_67 var_141_arg_2 = state_69;
    SORT_67 var_141 = var_141_arg_0 ? var_141_arg_1 : var_141_arg_2;
    SORT_67 next_142_arg_1 = var_141;
    SORT_1 var_146_arg_0 = state_50;
    SORT_1 var_146_arg_1 = var_7;
    SORT_1 var_146 = var_146_arg_0 == var_146_arg_1;
    SORT_1 var_147_arg_0 = var_146;
    SORT_1 var_147_arg_1 = var_7;
    SORT_1 var_147_arg_2 = var_7;
    SORT_1 var_147 = var_147_arg_0 ? var_147_arg_1 : var_147_arg_2;
    SORT_1 var_148_arg_0 = var_120;
    SORT_1 var_148_arg_1 = var_147;
    SORT_1 var_148_arg_2 = input_145;
    SORT_1 var_148 = var_148_arg_0 ? var_148_arg_1 : var_148_arg_2;
    SORT_1 var_149_arg_0 = state_14;
    SORT_1 var_149_arg_1 = var_148;
    SORT_1 var_149_arg_2 = input_144;
    SORT_1 var_149 = var_149_arg_0 ? var_149_arg_1 : var_149_arg_2;
    SORT_1 var_150_arg_0 = var_120;
    SORT_1 var_150_arg_1 = var_149;
    SORT_1 var_150_arg_2 = var_7;
    SORT_1 var_150 = var_150_arg_0 ? var_150_arg_1 : var_150_arg_2;
    SORT_1 var_151_arg_0 = state_14;
    SORT_1 var_151_arg_1 = var_150;
    SORT_1 var_151_arg_2 = input_143;
    SORT_1 var_151 = var_151_arg_0 ? var_151_arg_1 : var_151_arg_2;
    SORT_1 var_152_arg_0 = state_14;
    SORT_1 var_152_arg_1 = var_151;
    SORT_1 var_152_arg_2 = var_7;
    SORT_1 var_152 = var_152_arg_0 ? var_152_arg_1 : var_152_arg_2;
    var_152 = var_152 & mask_SORT_1;
    SORT_1 next_153_arg_1 = var_152;
    // Assigning next states ...
    state_8 = next_77_arg_1;
    state_14 = next_92_arg_1;
    state_25 = next_94_arg_1;
    state_27 = next_100_arg_1;
    state_40 = next_106_arg_1;
    state_42 = next_112_arg_1;
    state_50 = next_126_arg_1;
    state_57 = next_128_arg_1;
    state_59 = next_130_arg_1;
    state_61 = next_132_arg_1;
    state_65 = next_133_arg_1;
    state_69 = next_142_arg_1;
    state_71 = next_153_arg_1;
  }
  return 0;
}