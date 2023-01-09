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
  // Initializing constants ...
  const SORT_1 var_6 = 0;
  const SORT_1 var_16 = 1;
  const SORT_3 var_33 = 0;
  const SORT_3 var_36 = 27;
  const SORT_3 var_44 = 85;
  const SORT_3 var_47 = 67;
  const SORT_3 var_50 = 78;
  // Collecting input declarations ...
  SORT_1 input_2;
  SORT_3 input_4;
  SORT_1 input_5;
  SORT_3 input_39;
  // Collecting state declarations ...
  SORT_1 state_7 = __VERIFIER_nondet_uchar() & mask_SORT_1;
  SORT_1 state_9 = __VERIFIER_nondet_uchar() & mask_SORT_1;
  SORT_1 state_12 = __VERIFIER_nondet_uchar() & mask_SORT_1;
  SORT_1 state_17 = __VERIFIER_nondet_uchar() & mask_SORT_1;
  SORT_3 state_34 = __VERIFIER_nondet_uchar() & mask_SORT_3;
  SORT_3 state_42 = __VERIFIER_nondet_uchar() & mask_SORT_3;
  // Initializing states ...
  SORT_1 init_8_arg_1 = var_6;
  state_7 = init_8_arg_1;
  SORT_1 init_10_arg_1 = var_6;
  state_9 = init_10_arg_1;
  SORT_1 init_13_arg_1 = var_6;
  state_12 = init_13_arg_1;
  SORT_1 init_18_arg_1 = var_16;
  state_17 = init_18_arg_1;
  SORT_3 init_35_arg_1 = var_33;
  state_34 = init_35_arg_1;
  SORT_3 init_43_arg_1 = var_33;
  state_42 = init_43_arg_1;
  for (;;) {
    // Getting external input values ...
    input_2 = __VERIFIER_nondet_uchar();
    input_4 = __VERIFIER_nondet_uchar();
    input_5 = __VERIFIER_nondet_uchar();
    input_5 = input_5 & mask_SORT_1;
    input_39 = __VERIFIER_nondet_uchar();
    // Assuming invariants ...
    // Asserting properties ...
    SORT_1 var_11_arg_0 = state_7;
    SORT_1 var_11_arg_1 = state_9;
    SORT_1 var_11 = var_11_arg_0 & var_11_arg_1;
    SORT_1 var_14_arg_0 = state_7;
    SORT_1 var_14_arg_1 = state_12;
    SORT_1 var_14 = var_14_arg_0 & var_14_arg_1;
    SORT_1 var_15_arg_0 = var_11;
    SORT_1 var_15_arg_1 = var_14;
    SORT_1 var_15 = var_15_arg_0 | var_15_arg_1;
    SORT_1 var_19_arg_0 = state_7;
    SORT_1 var_19_arg_1 = state_17;
    SORT_1 var_19 = var_19_arg_0 & var_19_arg_1;
    SORT_1 var_20_arg_0 = var_15;
    SORT_1 var_20_arg_1 = var_19;
    SORT_1 var_20 = var_20_arg_0 | var_20_arg_1;
    SORT_1 var_21_arg_0 = state_9;
    SORT_1 var_21_arg_1 = state_12;
    SORT_1 var_21 = var_21_arg_0 & var_21_arg_1;
    SORT_1 var_22_arg_0 = var_20;
    SORT_1 var_22_arg_1 = var_21;
    SORT_1 var_22 = var_22_arg_0 | var_22_arg_1;
    SORT_1 var_23_arg_0 = state_9;
    SORT_1 var_23_arg_1 = state_17;
    SORT_1 var_23 = var_23_arg_0 & var_23_arg_1;
    SORT_1 var_24_arg_0 = var_22;
    SORT_1 var_24_arg_1 = var_23;
    SORT_1 var_24 = var_24_arg_0 | var_24_arg_1;
    SORT_1 var_25_arg_0 = state_12;
    SORT_1 var_25_arg_1 = state_17;
    SORT_1 var_25 = var_25_arg_0 & var_25_arg_1;
    SORT_1 var_26_arg_0 = var_24;
    SORT_1 var_26_arg_1 = var_25;
    SORT_1 var_26 = var_26_arg_0 | var_26_arg_1;
    SORT_1 var_27_arg_0 = var_26;
    SORT_1 var_27 = ~var_27_arg_0;
    SORT_1 var_30_arg_0 = var_27;
    SORT_1 var_30 = ~var_30_arg_0;
    SORT_1 var_31_arg_0 = var_16;
    SORT_1 var_31_arg_1 = var_30;
    SORT_1 var_31 = var_31_arg_0 & var_31_arg_1;
    var_31 = var_31 & mask_SORT_1;
    SORT_1 bad_32_arg_0 = var_31;
    __VERIFIER_assert(!(bad_32_arg_0));
    // Computing next states ...
    SORT_3 var_37_arg_0 = state_34;
    SORT_3 var_37_arg_1 = var_36;
    SORT_1 var_37 = var_37_arg_0 == var_37_arg_1;
    SORT_3 var_51_arg_0 = state_42;
    SORT_3 var_51_arg_1 = var_50;
    SORT_1 var_51 = var_51_arg_0 == var_51_arg_1;
    SORT_3 var_48_arg_0 = state_42;
    SORT_3 var_48_arg_1 = var_47;
    SORT_1 var_48 = var_48_arg_0 == var_48_arg_1;
    SORT_1 var_52_arg_0 = var_51;
    SORT_1 var_52_arg_1 = var_48;
    SORT_1 var_52 = var_52_arg_0 | var_52_arg_1;
    var_52 = var_52 & mask_SORT_1;
    SORT_1 var_49_arg_0 = var_48;
    SORT_1 var_49_arg_1 = var_6;
    SORT_1 var_49_arg_2 = var_6;
    SORT_1 var_49 = var_49_arg_0 ? var_49_arg_1 : var_49_arg_2;
    SORT_3 var_45_arg_0 = state_42;
    SORT_3 var_45_arg_1 = var_44;
    SORT_1 var_45 = var_45_arg_0 == var_45_arg_1;
    SORT_1 var_46_arg_0 = var_45;
    SORT_1 var_46_arg_1 = var_6;
    SORT_1 var_46_arg_2 = var_16;
    SORT_1 var_46 = var_46_arg_0 ? var_46_arg_1 : var_46_arg_2;
    SORT_1 var_53_arg_0 = var_52;
    SORT_1 var_53_arg_1 = var_49;
    SORT_1 var_53_arg_2 = var_46;
    SORT_1 var_53 = var_53_arg_0 ? var_53_arg_1 : var_53_arg_2;
    SORT_1 var_54_arg_0 = var_37;
    SORT_1 var_54_arg_1 = var_53;
    SORT_1 var_54_arg_2 = state_7;
    SORT_1 var_54 = var_54_arg_0 ? var_54_arg_1 : var_54_arg_2;
    SORT_1 var_55_arg_0 = input_5;
    SORT_1 var_55_arg_1 = var_6;
    SORT_1 var_55_arg_2 = var_54;
    SORT_1 var_55 = var_55_arg_0 ? var_55_arg_1 : var_55_arg_2;
    SORT_1 next_56_arg_1 = var_55;
    SORT_3 var_61_arg_0 = state_42;
    SORT_3 var_61_arg_1 = var_50;
    SORT_1 var_61 = var_61_arg_0 == var_61_arg_1;
    SORT_3 var_59_arg_0 = state_42;
    SORT_3 var_59_arg_1 = var_47;
    SORT_1 var_59 = var_59_arg_0 == var_59_arg_1;
    SORT_1 var_62_arg_0 = var_61;
    SORT_1 var_62_arg_1 = var_59;
    SORT_1 var_62 = var_62_arg_0 | var_62_arg_1;
    var_62 = var_62 & mask_SORT_1;
    SORT_1 var_60_arg_0 = var_59;
    SORT_1 var_60_arg_1 = var_6;
    SORT_1 var_60_arg_2 = var_6;
    SORT_1 var_60 = var_60_arg_0 ? var_60_arg_1 : var_60_arg_2;
    SORT_3 var_57_arg_0 = state_42;
    SORT_3 var_57_arg_1 = var_44;
    SORT_1 var_57 = var_57_arg_0 == var_57_arg_1;
    SORT_1 var_58_arg_0 = var_57;
    SORT_1 var_58_arg_1 = var_16;
    SORT_1 var_58_arg_2 = var_6;
    SORT_1 var_58 = var_58_arg_0 ? var_58_arg_1 : var_58_arg_2;
    SORT_1 var_63_arg_0 = var_62;
    SORT_1 var_63_arg_1 = var_60;
    SORT_1 var_63_arg_2 = var_58;
    SORT_1 var_63 = var_63_arg_0 ? var_63_arg_1 : var_63_arg_2;
    SORT_1 var_64_arg_0 = var_37;
    SORT_1 var_64_arg_1 = var_63;
    SORT_1 var_64_arg_2 = state_9;
    SORT_1 var_64 = var_64_arg_0 ? var_64_arg_1 : var_64_arg_2;
    SORT_1 var_65_arg_0 = input_5;
    SORT_1 var_65_arg_1 = var_6;
    SORT_1 var_65_arg_2 = var_64;
    SORT_1 var_65 = var_65_arg_0 ? var_65_arg_1 : var_65_arg_2;
    SORT_1 next_66_arg_1 = var_65;
    SORT_3 var_71_arg_0 = state_42;
    SORT_3 var_71_arg_1 = var_50;
    SORT_1 var_71 = var_71_arg_0 == var_71_arg_1;
    SORT_3 var_69_arg_0 = state_42;
    SORT_3 var_69_arg_1 = var_47;
    SORT_1 var_69 = var_69_arg_0 == var_69_arg_1;
    SORT_1 var_72_arg_0 = var_71;
    SORT_1 var_72_arg_1 = var_69;
    SORT_1 var_72 = var_72_arg_0 | var_72_arg_1;
    var_72 = var_72 & mask_SORT_1;
    SORT_1 var_70_arg_0 = var_69;
    SORT_1 var_70_arg_1 = var_16;
    SORT_1 var_70_arg_2 = var_6;
    SORT_1 var_70 = var_70_arg_0 ? var_70_arg_1 : var_70_arg_2;
    SORT_3 var_67_arg_0 = state_42;
    SORT_3 var_67_arg_1 = var_44;
    SORT_1 var_67 = var_67_arg_0 == var_67_arg_1;
    SORT_1 var_68_arg_0 = var_67;
    SORT_1 var_68_arg_1 = var_6;
    SORT_1 var_68_arg_2 = var_6;
    SORT_1 var_68 = var_68_arg_0 ? var_68_arg_1 : var_68_arg_2;
    SORT_1 var_73_arg_0 = var_72;
    SORT_1 var_73_arg_1 = var_70;
    SORT_1 var_73_arg_2 = var_68;
    SORT_1 var_73 = var_73_arg_0 ? var_73_arg_1 : var_73_arg_2;
    SORT_1 var_74_arg_0 = var_37;
    SORT_1 var_74_arg_1 = var_73;
    SORT_1 var_74_arg_2 = state_12;
    SORT_1 var_74 = var_74_arg_0 ? var_74_arg_1 : var_74_arg_2;
    SORT_1 var_75_arg_0 = input_5;
    SORT_1 var_75_arg_1 = var_6;
    SORT_1 var_75_arg_2 = var_74;
    SORT_1 var_75 = var_75_arg_0 ? var_75_arg_1 : var_75_arg_2;
    SORT_1 next_76_arg_1 = var_75;
    SORT_3 var_81_arg_0 = state_42;
    SORT_3 var_81_arg_1 = var_50;
    SORT_1 var_81 = var_81_arg_0 == var_81_arg_1;
    SORT_3 var_79_arg_0 = state_42;
    SORT_3 var_79_arg_1 = var_47;
    SORT_1 var_79 = var_79_arg_0 == var_79_arg_1;
    SORT_1 var_82_arg_0 = var_81;
    SORT_1 var_82_arg_1 = var_79;
    SORT_1 var_82 = var_82_arg_0 | var_82_arg_1;
    var_82 = var_82 & mask_SORT_1;
    SORT_1 var_80_arg_0 = var_79;
    SORT_1 var_80_arg_1 = var_6;
    SORT_1 var_80_arg_2 = var_16;
    SORT_1 var_80 = var_80_arg_0 ? var_80_arg_1 : var_80_arg_2;
    SORT_3 var_77_arg_0 = state_42;
    SORT_3 var_77_arg_1 = var_44;
    SORT_1 var_77 = var_77_arg_0 == var_77_arg_1;
    SORT_1 var_78_arg_0 = var_77;
    SORT_1 var_78_arg_1 = var_6;
    SORT_1 var_78_arg_2 = var_6;
    SORT_1 var_78 = var_78_arg_0 ? var_78_arg_1 : var_78_arg_2;
    SORT_1 var_83_arg_0 = var_82;
    SORT_1 var_83_arg_1 = var_80;
    SORT_1 var_83_arg_2 = var_78;
    SORT_1 var_83 = var_83_arg_0 ? var_83_arg_1 : var_83_arg_2;
    SORT_1 var_84_arg_0 = var_37;
    SORT_1 var_84_arg_1 = var_83;
    SORT_1 var_84_arg_2 = state_17;
    SORT_1 var_84 = var_84_arg_0 ? var_84_arg_1 : var_84_arg_2;
    SORT_1 var_85_arg_0 = input_5;
    SORT_1 var_85_arg_1 = var_16;
    SORT_1 var_85_arg_2 = var_84;
    SORT_1 var_85 = var_85_arg_0 ? var_85_arg_1 : var_85_arg_2;
    SORT_1 next_86_arg_1 = var_85;
    SORT_1 var_87_arg_0 = input_5;
    SORT_3 var_87_arg_1 = var_33;
    SORT_3 var_87_arg_2 = state_42;
    SORT_3 var_87 = var_87_arg_0 ? var_87_arg_1 : var_87_arg_2;
    var_87 = var_87 & mask_SORT_3;
    SORT_3 next_88_arg_1 = var_87;
    SORT_1 var_89_arg_0 = input_5;
    SORT_3 var_89_arg_1 = var_33;
    SORT_3 var_89_arg_2 = input_4;
    SORT_3 var_89 = var_89_arg_0 ? var_89_arg_1 : var_89_arg_2;
    var_89 = var_89 & mask_SORT_3;
    SORT_3 next_90_arg_1 = var_89;
    // Assigning next states ...
    state_7 = next_56_arg_1;
    state_9 = next_66_arg_1;
    state_12 = next_76_arg_1;
    state_17 = next_86_arg_1;
    state_34 = next_88_arg_1;
    state_42 = next_90_arg_1;
  }
  return 0;
}