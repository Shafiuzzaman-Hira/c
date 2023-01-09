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
  typedef unsigned int SORT_1;  // BV with 32 bits
  const SORT_1 mask_SORT_1 = (SORT_1)-1 >> (sizeof(SORT_1) * 8 - 32);
  const SORT_1 msb_SORT_1 = (SORT_1)1 << (32 - 1);
  typedef unsigned char SORT_3;  // BV with 1 bits
  const SORT_3 mask_SORT_3 = (SORT_3)-1 >> (sizeof(SORT_3) * 8 - 1);
  const SORT_3 msb_SORT_3 = (SORT_3)1 << (1 - 1);
  typedef unsigned char SORT_16;  // BV with 2 bits
  const SORT_16 mask_SORT_16 = (SORT_16)-1 >> (sizeof(SORT_16) * 8 - 2);
  const SORT_16 msb_SORT_16 = (SORT_16)1 << (2 - 1);
  typedef unsigned char SORT_59;  // BV with 3 bits
  const SORT_59 mask_SORT_59 = (SORT_59)-1 >> (sizeof(SORT_59) * 8 - 3);
  const SORT_59 msb_SORT_59 = (SORT_59)1 << (3 - 1);
  // Initializing constants ...
  const SORT_16 var_17 = 0;
  const SORT_16 var_20 = 3;
  const SORT_3 var_22 = 1;
  const SORT_3 var_36 = 0;
  const SORT_16 var_77 = 2;
  const SORT_16 var_80 = 1;
  const SORT_59 var_92 = 0;
  // Collecting input declarations ...
  SORT_1 input_2;
  SORT_3 input_4;
  SORT_1 input_5;
  SORT_3 input_6;
  SORT_3 input_7;
  SORT_3 input_8;
  SORT_1 input_9;
  SORT_3 input_10;
  SORT_3 input_11;
  SORT_1 input_12;
  SORT_3 input_13;
  SORT_3 input_14;
  SORT_3 input_15;
  SORT_1 input_32;
  SORT_3 input_34;
  SORT_1 input_39;
  SORT_3 input_41;
  SORT_1 input_47;
  SORT_1 input_53;
  SORT_1 input_55;
  SORT_1 input_57;
  SORT_59 input_60;
  SORT_59 input_66;
  SORT_1 input_69;
  SORT_3 input_73;
  // Collecting state declarations ...
  SORT_16 state_18 = __VERIFIER_nondet_uchar() & mask_SORT_16;
  SORT_3 state_23 = __VERIFIER_nondet_uchar() & mask_SORT_3;
  SORT_3 state_37 = __VERIFIER_nondet_uchar() & mask_SORT_3;
  SORT_3 state_43 = __VERIFIER_nondet_uchar() & mask_SORT_3;
  SORT_3 state_45 = __VERIFIER_nondet_uchar() & mask_SORT_3;
  SORT_3 state_49 = __VERIFIER_nondet_uchar() & mask_SORT_3;
  SORT_3 state_51 = __VERIFIER_nondet_uchar() & mask_SORT_3;
  SORT_3 state_62 = __VERIFIER_nondet_uchar() & mask_SORT_3;
  SORT_3 state_64 = __VERIFIER_nondet_uchar() & mask_SORT_3;
  SORT_3 state_71 = __VERIFIER_nondet_uchar() & mask_SORT_3;
  // Initializing states ...
  SORT_16 init_19_arg_1 = var_17;
  state_18 = init_19_arg_1;
  SORT_3 init_24_arg_1 = var_22;
  state_23 = init_24_arg_1;
  SORT_3 init_38_arg_1 = var_36;
  state_37 = init_38_arg_1;
  SORT_3 init_44_arg_1 = var_36;
  state_43 = init_44_arg_1;
  SORT_3 init_46_arg_1 = var_36;
  state_45 = init_46_arg_1;
  SORT_3 init_50_arg_1 = var_36;
  state_49 = init_50_arg_1;
  SORT_3 init_52_arg_1 = var_36;
  state_51 = init_52_arg_1;
  SORT_3 init_63_arg_1 = var_36;
  state_62 = init_63_arg_1;
  SORT_3 init_65_arg_1 = var_36;
  state_64 = init_65_arg_1;
  SORT_3 init_72_arg_1 = var_36;
  state_71 = init_72_arg_1;
  for (;;) {
    // Getting external input values ...
    input_2 = __VERIFIER_nondet_uint();
    input_4 = __VERIFIER_nondet_uchar();
    input_5 = __VERIFIER_nondet_uint();
    input_6 = __VERIFIER_nondet_uchar();
    input_7 = __VERIFIER_nondet_uchar();
    input_7 = input_7 & mask_SORT_3;
    input_8 = __VERIFIER_nondet_uchar();
    input_8 = input_8 & mask_SORT_3;
    input_9 = __VERIFIER_nondet_uint();
    input_10 = __VERIFIER_nondet_uchar();
    input_10 = input_10 & mask_SORT_3;
    input_11 = __VERIFIER_nondet_uchar();
    input_11 = input_11 & mask_SORT_3;
    input_12 = __VERIFIER_nondet_uint();
    input_13 = __VERIFIER_nondet_uchar();
    input_14 = __VERIFIER_nondet_uchar();
    input_15 = __VERIFIER_nondet_uchar();
    input_32 = __VERIFIER_nondet_uint();
    input_34 = __VERIFIER_nondet_uchar();
    input_39 = __VERIFIER_nondet_uint();
    input_41 = __VERIFIER_nondet_uchar();
    input_47 = __VERIFIER_nondet_uint();
    input_53 = __VERIFIER_nondet_uint();
    input_55 = __VERIFIER_nondet_uint();
    input_57 = __VERIFIER_nondet_uint();
    input_60 = __VERIFIER_nondet_uchar();
    input_66 = __VERIFIER_nondet_uchar();
    input_69 = __VERIFIER_nondet_uint();
    input_73 = __VERIFIER_nondet_uchar();
    // Assuming invariants ...
    // Asserting properties ...
    SORT_16 var_21_arg_0 = state_18;
    SORT_16 var_21_arg_1 = var_20;
    SORT_3 var_21 = var_21_arg_0 != var_21_arg_1;
    SORT_3 var_25_arg_0 = state_23;
    SORT_3 var_25_arg_1 = var_22;
    SORT_3 var_25 = var_25_arg_0 == var_25_arg_1;
    SORT_3 var_26_arg_0 = var_21;
    SORT_3 var_26_arg_1 = var_25;
    SORT_3 var_26 = var_26_arg_0 | var_26_arg_1;
    SORT_3 var_29_arg_0 = var_26;
    SORT_3 var_29 = ~var_29_arg_0;
    SORT_3 var_30_arg_0 = var_22;
    SORT_3 var_30_arg_1 = var_29;
    SORT_3 var_30 = var_30_arg_0 & var_30_arg_1;
    var_30 = var_30 & mask_SORT_3;
    SORT_3 bad_31_arg_0 = var_30;
    __VERIFIER_assert(!(bad_31_arg_0));
    // Computing next states ...
    SORT_16 var_104_arg_0 = state_18;
    SORT_16 var_104_arg_1 = var_77;
    SORT_3 var_104 = var_104_arg_0 == var_104_arg_1;
    SORT_16 var_102_arg_0 = state_18;
    SORT_16 var_102_arg_1 = var_20;
    SORT_3 var_102 = var_102_arg_0 == var_102_arg_1;
    SORT_3 var_105_arg_0 = var_104;
    SORT_3 var_105_arg_1 = var_102;
    SORT_3 var_105 = var_105_arg_0 | var_105_arg_1;
    var_105 = var_105 & mask_SORT_3;
    SORT_3 var_97_arg_0 = state_51;
    var_97_arg_0 = var_97_arg_0 & mask_SORT_3;
    SORT_59 var_97 = var_97_arg_0;
    SORT_59 var_98_arg_0 = var_97;
    SORT_59 var_98_arg_1 = var_92;
    SORT_3 var_98 = var_98_arg_0 == var_98_arg_1;
    SORT_3 var_99_arg_0 = var_98;
    SORT_16 var_99_arg_1 = var_17;
    SORT_16 var_99_arg_2 = state_18;
    SORT_16 var_99 = var_99_arg_0 ? var_99_arg_1 : var_99_arg_2;
    SORT_3 var_100_arg_0 = state_49;
    SORT_16 var_100_arg_1 = state_18;
    SORT_16 var_100_arg_2 = var_99;
    SORT_16 var_100 = var_100_arg_0 ? var_100_arg_1 : var_100_arg_2;
    SORT_3 var_101_arg_0 = state_64;
    SORT_16 var_101_arg_1 = state_18;
    SORT_16 var_101_arg_2 = var_100;
    SORT_16 var_101 = var_101_arg_0 ? var_101_arg_1 : var_101_arg_2;
    SORT_3 var_95_arg_0 = state_62;
    SORT_3 var_95_arg_1 = var_22;
    SORT_3 var_95 = var_95_arg_0 == var_95_arg_1;
    SORT_3 var_91_arg_0 = state_51;
    var_91_arg_0 = var_91_arg_0 & mask_SORT_3;
    SORT_59 var_91 = var_91_arg_0;
    SORT_59 var_93_arg_0 = var_91;
    SORT_59 var_93_arg_1 = var_92;
    SORT_3 var_93 = var_93_arg_0 == var_93_arg_1;
    SORT_3 var_94_arg_0 = var_93;
    SORT_16 var_94_arg_1 = var_17;
    SORT_16 var_94_arg_2 = state_18;
    SORT_16 var_94 = var_94_arg_0 ? var_94_arg_1 : var_94_arg_2;
    SORT_3 var_96_arg_0 = var_95;
    SORT_16 var_96_arg_1 = state_18;
    SORT_16 var_96_arg_2 = var_94;
    SORT_16 var_96 = var_96_arg_0 ? var_96_arg_1 : var_96_arg_2;
    SORT_3 var_103_arg_0 = var_102;
    SORT_16 var_103_arg_1 = var_101;
    SORT_16 var_103_arg_2 = var_96;
    SORT_16 var_103 = var_103_arg_0 ? var_103_arg_1 : var_103_arg_2;
    SORT_16 var_89_arg_0 = state_18;
    SORT_16 var_89_arg_1 = var_80;
    SORT_3 var_89 = var_89_arg_0 == var_89_arg_1;
    SORT_3 var_87_arg_0 = state_62;
    SORT_3 var_87_arg_1 = var_22;
    SORT_3 var_87 = var_87_arg_0 == var_87_arg_1;
    SORT_3 var_85_arg_0 = state_51;
    SORT_3 var_85_arg_1 = var_36;
    SORT_3 var_85 = var_85_arg_0 == var_85_arg_1;
    SORT_3 var_86_arg_0 = var_85;
    SORT_16 var_86_arg_1 = var_17;
    SORT_16 var_86_arg_2 = state_18;
    SORT_16 var_86 = var_86_arg_0 ? var_86_arg_1 : var_86_arg_2;
    SORT_3 var_88_arg_0 = var_87;
    SORT_16 var_88_arg_1 = state_18;
    SORT_16 var_88_arg_2 = var_86;
    SORT_16 var_88 = var_88_arg_0 ? var_88_arg_1 : var_88_arg_2;
    SORT_16 var_83_arg_0 = state_18;
    SORT_16 var_83_arg_1 = var_17;
    SORT_3 var_83 = var_83_arg_0 == var_83_arg_1;
    SORT_3 var_81_arg_0 = state_43;
    SORT_3 var_81 = ~var_81_arg_0;
    var_81 = var_81 & mask_SORT_3;
    SORT_3 var_78_arg_0 = state_37;
    SORT_3 var_78 = ~var_78_arg_0;
    var_78 = var_78 & mask_SORT_3;
    SORT_3 var_75_arg_0 = state_71;
    SORT_3 var_75 = ~var_75_arg_0;
    var_75 = var_75 & mask_SORT_3;
    SORT_3 var_76_arg_0 = var_75;
    SORT_16 var_76_arg_1 = var_20;
    SORT_16 var_76_arg_2 = state_18;
    SORT_16 var_76 = var_76_arg_0 ? var_76_arg_1 : var_76_arg_2;
    SORT_3 var_79_arg_0 = var_78;
    SORT_16 var_79_arg_1 = var_77;
    SORT_16 var_79_arg_2 = var_76;
    SORT_16 var_79 = var_79_arg_0 ? var_79_arg_1 : var_79_arg_2;
    SORT_3 var_82_arg_0 = var_81;
    SORT_16 var_82_arg_1 = var_80;
    SORT_16 var_82_arg_2 = var_79;
    SORT_16 var_82 = var_82_arg_0 ? var_82_arg_1 : var_82_arg_2;
    SORT_3 var_84_arg_0 = var_83;
    SORT_16 var_84_arg_1 = var_82;
    SORT_16 var_84_arg_2 = state_18;
    SORT_16 var_84 = var_84_arg_0 ? var_84_arg_1 : var_84_arg_2;
    SORT_3 var_90_arg_0 = var_89;
    SORT_16 var_90_arg_1 = var_88;
    SORT_16 var_90_arg_2 = var_84;
    SORT_16 var_90 = var_90_arg_0 ? var_90_arg_1 : var_90_arg_2;
    SORT_3 var_106_arg_0 = var_105;
    SORT_16 var_106_arg_1 = var_103;
    SORT_16 var_106_arg_2 = var_90;
    SORT_16 var_106 = var_106_arg_0 ? var_106_arg_1 : var_106_arg_2;
    SORT_3 var_107_arg_0 = state_45;
    SORT_16 var_107_arg_1 = var_106;
    SORT_16 var_107_arg_2 = state_18;
    SORT_16 var_107 = var_107_arg_0 ? var_107_arg_1 : var_107_arg_2;
    var_107 = var_107 & mask_SORT_16;
    SORT_16 next_108_arg_1 = var_107;
    SORT_16 var_114_arg_0 = state_18;
    SORT_16 var_114_arg_1 = var_20;
    SORT_3 var_114 = var_114_arg_0 == var_114_arg_1;
    SORT_16 var_109_arg_0 = state_18;
    SORT_16 var_109_arg_1 = var_20;
    SORT_3 var_109 = var_109_arg_0 != var_109_arg_1;
    SORT_3 var_110_arg_0 = var_109;
    SORT_3 var_110_arg_1 = var_22;
    SORT_3 var_110_arg_2 = state_23;
    SORT_3 var_110 = var_110_arg_0 ? var_110_arg_1 : var_110_arg_2;
    SORT_3 var_111_arg_0 = var_98;
    SORT_3 var_111_arg_1 = var_36;
    SORT_3 var_111_arg_2 = var_22;
    SORT_3 var_111 = var_111_arg_0 ? var_111_arg_1 : var_111_arg_2;
    SORT_3 var_112_arg_0 = state_49;
    SORT_3 var_112_arg_1 = var_110;
    SORT_3 var_112_arg_2 = var_111;
    SORT_3 var_112 = var_112_arg_0 ? var_112_arg_1 : var_112_arg_2;
    SORT_3 var_113_arg_0 = state_64;
    SORT_3 var_113_arg_1 = var_110;
    SORT_3 var_113_arg_2 = var_112;
    SORT_3 var_113 = var_113_arg_0 ? var_113_arg_1 : var_113_arg_2;
    SORT_3 var_115_arg_0 = var_114;
    SORT_3 var_115_arg_1 = var_113;
    SORT_3 var_115_arg_2 = var_110;
    SORT_3 var_115 = var_115_arg_0 ? var_115_arg_1 : var_115_arg_2;
    SORT_3 var_116_arg_0 = state_45;
    SORT_3 var_116_arg_1 = var_115;
    SORT_3 var_116_arg_2 = state_23;
    SORT_3 var_116 = var_116_arg_0 ? var_116_arg_1 : var_116_arg_2;
    var_116 = var_116 & mask_SORT_3;
    SORT_3 next_117_arg_1 = var_116;
    SORT_3 next_118_arg_1 = input_4;
    SORT_3 next_119_arg_1 = input_6;
    SORT_3 next_120_arg_1 = input_7;
    SORT_16 var_128_arg_0 = state_18;
    SORT_16 var_128_arg_1 = var_20;
    SORT_3 var_128 = var_128_arg_0 == var_128_arg_1;
    SORT_3 var_126_arg_0 = state_49;
    SORT_3 var_126_arg_1 = var_36;
    SORT_3 var_126_arg_2 = state_49;
    SORT_3 var_126 = var_126_arg_0 ? var_126_arg_1 : var_126_arg_2;
    SORT_3 var_127_arg_0 = state_64;
    SORT_3 var_127_arg_1 = var_22;
    SORT_3 var_127_arg_2 = var_126;
    SORT_3 var_127 = var_127_arg_0 ? var_127_arg_1 : var_127_arg_2;
    SORT_16 var_124_arg_0 = state_18;
    SORT_16 var_124_arg_1 = var_17;
    SORT_3 var_124 = var_124_arg_0 == var_124_arg_1;
    SORT_3 var_121_arg_0 = var_75;
    SORT_3 var_121_arg_1 = var_36;
    SORT_3 var_121_arg_2 = state_49;
    SORT_3 var_121 = var_121_arg_0 ? var_121_arg_1 : var_121_arg_2;
    SORT_3 var_122_arg_0 = var_78;
    SORT_3 var_122_arg_1 = state_49;
    SORT_3 var_122_arg_2 = var_121;
    SORT_3 var_122 = var_122_arg_0 ? var_122_arg_1 : var_122_arg_2;
    SORT_3 var_123_arg_0 = var_81;
    SORT_3 var_123_arg_1 = state_49;
    SORT_3 var_123_arg_2 = var_122;
    SORT_3 var_123 = var_123_arg_0 ? var_123_arg_1 : var_123_arg_2;
    SORT_3 var_125_arg_0 = var_124;
    SORT_3 var_125_arg_1 = var_123;
    SORT_3 var_125_arg_2 = state_49;
    SORT_3 var_125 = var_125_arg_0 ? var_125_arg_1 : var_125_arg_2;
    SORT_3 var_129_arg_0 = var_128;
    SORT_3 var_129_arg_1 = var_127;
    SORT_3 var_129_arg_2 = var_125;
    SORT_3 var_129 = var_129_arg_0 ? var_129_arg_1 : var_129_arg_2;
    SORT_3 var_130_arg_0 = state_45;
    SORT_3 var_130_arg_1 = var_129;
    SORT_3 var_130_arg_2 = state_49;
    SORT_3 var_130 = var_130_arg_0 ? var_130_arg_1 : var_130_arg_2;
    var_130 = var_130 & mask_SORT_3;
    SORT_3 next_131_arg_1 = var_130;
    SORT_3 next_132_arg_1 = input_8;
    SORT_3 next_133_arg_1 = input_10;
    SORT_3 next_134_arg_1 = input_11;
    SORT_3 next_135_arg_1 = input_13;
    // Assigning next states ...
    state_18 = next_108_arg_1;
    state_23 = next_117_arg_1;
    state_37 = next_118_arg_1;
    state_43 = next_119_arg_1;
    state_45 = next_120_arg_1;
    state_49 = next_131_arg_1;
    state_51 = next_132_arg_1;
    state_62 = next_133_arg_1;
    state_64 = next_134_arg_1;
    state_71 = next_135_arg_1;
  }
  return 0;
}