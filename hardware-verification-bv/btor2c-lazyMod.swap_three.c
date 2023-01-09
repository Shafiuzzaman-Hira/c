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
  typedef unsigned int SORT_4;  // BV with 20 bits
  const SORT_4 mask_SORT_4 = (SORT_4)-1 >> (sizeof(SORT_4) * 8 - 20);
  const SORT_4 msb_SORT_4 = (SORT_4)1 << (20 - 1);
  typedef unsigned int SORT_8;  // BV with 32 bits
  const SORT_8 mask_SORT_8 = (SORT_8)-1 >> (sizeof(SORT_8) * 8 - 32);
  const SORT_8 msb_SORT_8 = (SORT_8)1 << (32 - 1);
  // Initializing constants ...
  const SORT_4 var_5 = 1;
  const SORT_8 var_10 = 1;
  const SORT_8 var_13 = 5;
  const SORT_8 var_17 = 7;
  const SORT_1 var_22 = 1;
  const SORT_4 var_26 = 5;
  const SORT_4 var_29 = 7;
  // Collecting input declarations ...
  SORT_1 input_2;
  SORT_1 input_3;
  // Collecting state declarations ...
  SORT_4 state_6 = __VERIFIER_nondet_uint() & mask_SORT_4;
  SORT_4 state_27 = __VERIFIER_nondet_uint() & mask_SORT_4;
  SORT_4 state_30 = __VERIFIER_nondet_uint() & mask_SORT_4;
  // Initializing states ...
  SORT_4 init_7_arg_1 = var_5;
  state_6 = init_7_arg_1;
  SORT_4 init_28_arg_1 = var_26;
  state_27 = init_28_arg_1;
  SORT_4 init_31_arg_1 = var_29;
  state_30 = init_31_arg_1;
  for (;;) {
    // Getting external input values ...
    input_2 = __VERIFIER_nondet_uchar();
    input_3 = __VERIFIER_nondet_uchar();
    // Assuming invariants ...
    // Asserting properties ...
    SORT_4 var_9_arg_0 = state_6;
    var_9_arg_0 = var_9_arg_0 & mask_SORT_4;
    SORT_8 var_9 = var_9_arg_0;
    SORT_8 var_11_arg_0 = var_9;
    SORT_8 var_11_arg_1 = var_10;
    SORT_1 var_11 = var_11_arg_0 == var_11_arg_1;
    SORT_4 var_12_arg_0 = state_6;
    var_12_arg_0 = var_12_arg_0 & mask_SORT_4;
    SORT_8 var_12 = var_12_arg_0;
    SORT_8 var_14_arg_0 = var_12;
    SORT_8 var_14_arg_1 = var_13;
    SORT_1 var_14 = var_14_arg_0 == var_14_arg_1;
    SORT_1 var_15_arg_0 = var_11;
    SORT_1 var_15_arg_1 = var_14;
    SORT_1 var_15 = var_15_arg_0 | var_15_arg_1;
    SORT_4 var_16_arg_0 = state_6;
    var_16_arg_0 = var_16_arg_0 & mask_SORT_4;
    SORT_8 var_16 = var_16_arg_0;
    SORT_8 var_18_arg_0 = var_16;
    SORT_8 var_18_arg_1 = var_17;
    SORT_1 var_18 = var_18_arg_0 == var_18_arg_1;
    SORT_1 var_19_arg_0 = var_15;
    SORT_1 var_19_arg_1 = var_18;
    SORT_1 var_19 = var_19_arg_0 | var_19_arg_1;
    SORT_1 var_23_arg_0 = var_19;
    SORT_1 var_23 = ~var_23_arg_0;
    SORT_1 var_24_arg_0 = var_22;
    SORT_1 var_24_arg_1 = var_23;
    SORT_1 var_24 = var_24_arg_0 & var_24_arg_1;
    var_24 = var_24 & mask_SORT_1;
    SORT_1 bad_25_arg_0 = var_24;
    __VERIFIER_assert(!(bad_25_arg_0));
    // Computing next states ...
    SORT_4 next_33_arg_1 = state_27;
    SORT_4 next_34_arg_1 = state_30;
    SORT_4 next_35_arg_1 = state_6;
    // Assigning next states ...
    state_6 = next_33_arg_1;
    state_27 = next_34_arg_1;
    state_30 = next_35_arg_1;
  }
  return 0;
}