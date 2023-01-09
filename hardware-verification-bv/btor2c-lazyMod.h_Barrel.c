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
  typedef unsigned char SORT_3;  // BV with 2 bits
  const SORT_3 mask_SORT_3 = (SORT_3)-1 >> (sizeof(SORT_3) * 8 - 2);
  const SORT_3 msb_SORT_3 = (SORT_3)1 << (2 - 1);
  // Initializing constants ...
  const SORT_3 var_4 = 0;
  const SORT_1 var_78 = 1;
  // Collecting input declarations ...
  SORT_1 input_2;
  // Collecting state declarations ...
  SORT_3 state_5 = __VERIFIER_nondet_uchar() & mask_SORT_3;
  SORT_3 state_8 = __VERIFIER_nondet_uchar() & mask_SORT_3;
  SORT_3 state_25 = __VERIFIER_nondet_uchar() & mask_SORT_3;
  SORT_3 state_43 = __VERIFIER_nondet_uchar() & mask_SORT_3;
  // Initializing states ...
  SORT_3 init_6_arg_1 = var_4;
  state_5 = init_6_arg_1;
  SORT_3 init_9_arg_1 = var_4;
  state_8 = init_9_arg_1;
  SORT_3 init_26_arg_1 = var_4;
  state_25 = init_26_arg_1;
  SORT_3 init_44_arg_1 = var_4;
  state_43 = init_44_arg_1;
  for (;;) {
    // Getting external input values ...
    input_2 = __VERIFIER_nondet_uchar();
    // Assuming invariants ...
    // Asserting properties ...
    SORT_3 var_7_arg_0 = state_5;
    SORT_3 var_7_arg_1 = var_4;
    SORT_1 var_7 = var_7_arg_0 != var_7_arg_1;
    SORT_3 var_10_arg_0 = state_8;
    SORT_3 var_10_arg_1 = var_4;
    SORT_1 var_10 = var_10_arg_0 == var_10_arg_1;
    SORT_1 var_11_arg_0 = var_7;
    SORT_1 var_11_arg_1 = var_10;
    SORT_1 var_11 = var_11_arg_0 | var_11_arg_1;
    SORT_3 var_12_arg_0 = state_5;
    SORT_3 var_12_arg_1 = var_4;
    SORT_1 var_12 = var_12_arg_0 != var_12_arg_1;
    SORT_3 var_13_arg_0 = state_8;
    SORT_3 var_13_arg_1 = var_4;
    SORT_1 var_13 = var_13_arg_0 == var_13_arg_1;
    SORT_1 var_14_arg_0 = var_12;
    SORT_1 var_14_arg_1 = var_13;
    SORT_1 var_14 = var_14_arg_0 | var_14_arg_1;
    SORT_1 var_15_arg_0 = var_11;
    SORT_1 var_15_arg_1 = var_14;
    SORT_1 var_15 = var_15_arg_0 & var_15_arg_1;
    SORT_3 var_16_arg_0 = state_5;
    SORT_3 var_16_arg_1 = var_4;
    SORT_1 var_16 = var_16_arg_0 != var_16_arg_1;
    SORT_3 var_17_arg_0 = state_8;
    SORT_3 var_17_arg_1 = var_4;
    SORT_1 var_17 = var_17_arg_0 == var_17_arg_1;
    SORT_1 var_18_arg_0 = var_16;
    SORT_1 var_18_arg_1 = var_17;
    SORT_1 var_18 = var_18_arg_0 | var_18_arg_1;
    SORT_1 var_19_arg_0 = var_15;
    SORT_1 var_19_arg_1 = var_18;
    SORT_1 var_19 = var_19_arg_0 & var_19_arg_1;
    SORT_3 var_20_arg_0 = state_5;
    SORT_3 var_20_arg_1 = var_4;
    SORT_1 var_20 = var_20_arg_0 != var_20_arg_1;
    SORT_3 var_21_arg_0 = state_8;
    SORT_3 var_21_arg_1 = var_4;
    SORT_1 var_21 = var_21_arg_0 == var_21_arg_1;
    SORT_1 var_22_arg_0 = var_20;
    SORT_1 var_22_arg_1 = var_21;
    SORT_1 var_22 = var_22_arg_0 | var_22_arg_1;
    SORT_1 var_23_arg_0 = var_19;
    SORT_1 var_23_arg_1 = var_22;
    SORT_1 var_23 = var_23_arg_0 & var_23_arg_1;
    SORT_3 var_24_arg_0 = state_8;
    SORT_3 var_24_arg_1 = var_4;
    SORT_1 var_24 = var_24_arg_0 != var_24_arg_1;
    SORT_3 var_27_arg_0 = state_25;
    SORT_3 var_27_arg_1 = var_4;
    SORT_1 var_27 = var_27_arg_0 == var_27_arg_1;
    SORT_1 var_28_arg_0 = var_24;
    SORT_1 var_28_arg_1 = var_27;
    SORT_1 var_28 = var_28_arg_0 | var_28_arg_1;
    SORT_1 var_29_arg_0 = var_23;
    SORT_1 var_29_arg_1 = var_28;
    SORT_1 var_29 = var_29_arg_0 & var_29_arg_1;
    SORT_3 var_30_arg_0 = state_8;
    SORT_3 var_30_arg_1 = var_4;
    SORT_1 var_30 = var_30_arg_0 != var_30_arg_1;
    SORT_3 var_31_arg_0 = state_25;
    SORT_3 var_31_arg_1 = var_4;
    SORT_1 var_31 = var_31_arg_0 == var_31_arg_1;
    SORT_1 var_32_arg_0 = var_30;
    SORT_1 var_32_arg_1 = var_31;
    SORT_1 var_32 = var_32_arg_0 | var_32_arg_1;
    SORT_1 var_33_arg_0 = var_29;
    SORT_1 var_33_arg_1 = var_32;
    SORT_1 var_33 = var_33_arg_0 & var_33_arg_1;
    SORT_3 var_34_arg_0 = state_8;
    SORT_3 var_34_arg_1 = var_4;
    SORT_1 var_34 = var_34_arg_0 != var_34_arg_1;
    SORT_3 var_35_arg_0 = state_25;
    SORT_3 var_35_arg_1 = var_4;
    SORT_1 var_35 = var_35_arg_0 == var_35_arg_1;
    SORT_1 var_36_arg_0 = var_34;
    SORT_1 var_36_arg_1 = var_35;
    SORT_1 var_36 = var_36_arg_0 | var_36_arg_1;
    SORT_1 var_37_arg_0 = var_33;
    SORT_1 var_37_arg_1 = var_36;
    SORT_1 var_37 = var_37_arg_0 & var_37_arg_1;
    SORT_3 var_38_arg_0 = state_8;
    SORT_3 var_38_arg_1 = var_4;
    SORT_1 var_38 = var_38_arg_0 != var_38_arg_1;
    SORT_3 var_39_arg_0 = state_25;
    SORT_3 var_39_arg_1 = var_4;
    SORT_1 var_39 = var_39_arg_0 == var_39_arg_1;
    SORT_1 var_40_arg_0 = var_38;
    SORT_1 var_40_arg_1 = var_39;
    SORT_1 var_40 = var_40_arg_0 | var_40_arg_1;
    SORT_1 var_41_arg_0 = var_37;
    SORT_1 var_41_arg_1 = var_40;
    SORT_1 var_41 = var_41_arg_0 & var_41_arg_1;
    SORT_3 var_42_arg_0 = state_25;
    SORT_3 var_42_arg_1 = var_4;
    SORT_1 var_42 = var_42_arg_0 != var_42_arg_1;
    SORT_3 var_45_arg_0 = state_43;
    SORT_3 var_45_arg_1 = var_4;
    SORT_1 var_45 = var_45_arg_0 == var_45_arg_1;
    SORT_1 var_46_arg_0 = var_42;
    SORT_1 var_46_arg_1 = var_45;
    SORT_1 var_46 = var_46_arg_0 | var_46_arg_1;
    SORT_1 var_47_arg_0 = var_41;
    SORT_1 var_47_arg_1 = var_46;
    SORT_1 var_47 = var_47_arg_0 & var_47_arg_1;
    SORT_3 var_48_arg_0 = state_25;
    SORT_3 var_48_arg_1 = var_4;
    SORT_1 var_48 = var_48_arg_0 != var_48_arg_1;
    SORT_3 var_49_arg_0 = state_43;
    SORT_3 var_49_arg_1 = var_4;
    SORT_1 var_49 = var_49_arg_0 == var_49_arg_1;
    SORT_1 var_50_arg_0 = var_48;
    SORT_1 var_50_arg_1 = var_49;
    SORT_1 var_50 = var_50_arg_0 | var_50_arg_1;
    SORT_1 var_51_arg_0 = var_47;
    SORT_1 var_51_arg_1 = var_50;
    SORT_1 var_51 = var_51_arg_0 & var_51_arg_1;
    SORT_3 var_52_arg_0 = state_25;
    SORT_3 var_52_arg_1 = var_4;
    SORT_1 var_52 = var_52_arg_0 != var_52_arg_1;
    SORT_3 var_53_arg_0 = state_43;
    SORT_3 var_53_arg_1 = var_4;
    SORT_1 var_53 = var_53_arg_0 == var_53_arg_1;
    SORT_1 var_54_arg_0 = var_52;
    SORT_1 var_54_arg_1 = var_53;
    SORT_1 var_54 = var_54_arg_0 | var_54_arg_1;
    SORT_1 var_55_arg_0 = var_51;
    SORT_1 var_55_arg_1 = var_54;
    SORT_1 var_55 = var_55_arg_0 & var_55_arg_1;
    SORT_3 var_56_arg_0 = state_25;
    SORT_3 var_56_arg_1 = var_4;
    SORT_1 var_56 = var_56_arg_0 != var_56_arg_1;
    SORT_3 var_57_arg_0 = state_43;
    SORT_3 var_57_arg_1 = var_4;
    SORT_1 var_57 = var_57_arg_0 == var_57_arg_1;
    SORT_1 var_58_arg_0 = var_56;
    SORT_1 var_58_arg_1 = var_57;
    SORT_1 var_58 = var_58_arg_0 | var_58_arg_1;
    SORT_1 var_59_arg_0 = var_55;
    SORT_1 var_59_arg_1 = var_58;
    SORT_1 var_59 = var_59_arg_0 & var_59_arg_1;
    SORT_3 var_60_arg_0 = state_43;
    SORT_3 var_60_arg_1 = var_4;
    SORT_1 var_60 = var_60_arg_0 != var_60_arg_1;
    SORT_3 var_61_arg_0 = state_5;
    SORT_3 var_61_arg_1 = var_4;
    SORT_1 var_61 = var_61_arg_0 == var_61_arg_1;
    SORT_1 var_62_arg_0 = var_60;
    SORT_1 var_62_arg_1 = var_61;
    SORT_1 var_62 = var_62_arg_0 | var_62_arg_1;
    SORT_1 var_63_arg_0 = var_59;
    SORT_1 var_63_arg_1 = var_62;
    SORT_1 var_63 = var_63_arg_0 & var_63_arg_1;
    SORT_3 var_64_arg_0 = state_43;
    SORT_3 var_64_arg_1 = var_4;
    SORT_1 var_64 = var_64_arg_0 != var_64_arg_1;
    SORT_3 var_65_arg_0 = state_5;
    SORT_3 var_65_arg_1 = var_4;
    SORT_1 var_65 = var_65_arg_0 == var_65_arg_1;
    SORT_1 var_66_arg_0 = var_64;
    SORT_1 var_66_arg_1 = var_65;
    SORT_1 var_66 = var_66_arg_0 | var_66_arg_1;
    SORT_1 var_67_arg_0 = var_63;
    SORT_1 var_67_arg_1 = var_66;
    SORT_1 var_67 = var_67_arg_0 & var_67_arg_1;
    SORT_3 var_68_arg_0 = state_43;
    SORT_3 var_68_arg_1 = var_4;
    SORT_1 var_68 = var_68_arg_0 != var_68_arg_1;
    SORT_3 var_69_arg_0 = state_5;
    SORT_3 var_69_arg_1 = var_4;
    SORT_1 var_69 = var_69_arg_0 == var_69_arg_1;
    SORT_1 var_70_arg_0 = var_68;
    SORT_1 var_70_arg_1 = var_69;
    SORT_1 var_70 = var_70_arg_0 | var_70_arg_1;
    SORT_1 var_71_arg_0 = var_67;
    SORT_1 var_71_arg_1 = var_70;
    SORT_1 var_71 = var_71_arg_0 & var_71_arg_1;
    SORT_3 var_72_arg_0 = state_43;
    SORT_3 var_72_arg_1 = var_4;
    SORT_1 var_72 = var_72_arg_0 != var_72_arg_1;
    SORT_3 var_73_arg_0 = state_5;
    SORT_3 var_73_arg_1 = var_4;
    SORT_1 var_73 = var_73_arg_0 == var_73_arg_1;
    SORT_1 var_74_arg_0 = var_72;
    SORT_1 var_74_arg_1 = var_73;
    SORT_1 var_74 = var_74_arg_0 | var_74_arg_1;
    SORT_1 var_75_arg_0 = var_71;
    SORT_1 var_75_arg_1 = var_74;
    SORT_1 var_75 = var_75_arg_0 & var_75_arg_1;
    SORT_1 var_79_arg_0 = var_75;
    SORT_1 var_79 = ~var_79_arg_0;
    SORT_1 var_80_arg_0 = var_78;
    SORT_1 var_80_arg_1 = var_79;
    SORT_1 var_80 = var_80_arg_0 & var_80_arg_1;
    var_80 = var_80 & mask_SORT_1;
    SORT_1 bad_81_arg_0 = var_80;
    __VERIFIER_assert(!(bad_81_arg_0));
    // Computing next states ...
    SORT_3 next_83_arg_1 = state_8;
    SORT_3 next_84_arg_1 = state_25;
    SORT_3 next_85_arg_1 = state_43;
    SORT_3 next_86_arg_1 = state_8;
    // Assigning next states ...
    state_5 = next_83_arg_1;
    state_8 = next_84_arg_1;
    state_25 = next_85_arg_1;
    state_43 = next_86_arg_1;
  }
  return 0;
}