// This file is part of the SV-Benchmarks collection of verification tasks:
// https://gitlab.com/sosy-lab/benchmarking/sv-benchmarks
//
// SPDX-FileCopyrightText: 2022 Jana (Philipp) Berger
//
// SPDX-License-Identifier: GPL-3.0-or-later

extern unsigned long __VERIFIER_nondet_ulong();
extern long __VERIFIER_nondet_long();
extern unsigned char __VERIFIER_nondet_uchar();
extern char __VERIFIER_nondet_char();
extern unsigned short __VERIFIER_nondet_ushort();
extern short __VERIFIER_nondet_short();
extern float __VERIFIER_nondet_float();
extern double __VERIFIER_nondet_double();
extern void abort(void);
extern void __assert_fail(const char *, const char *, unsigned int, const char *) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));
void reach_error() { __assert_fail("0", "Req1_Prop1_Batch1225_1loop.c", 13, "reach_error"); }
void __VERIFIER_assert(int cond) { if(!(cond)) { ERROR: {reach_error();abort();} } return; }
void assume_abort_if_not(int cond) { if(!cond) { abort(); } }
unsigned char isInitial = 0;
unsigned char var_1_1 = 0;
signed long int var_1_2 = -8;
signed long int var_1_3 = 128;
unsigned char var_1_5 = 0;
float var_1_6 = 128.625;
float var_1_7 = 2.625;
float var_1_8 = 25.5;
float var_1_9 = 4.75;
float var_1_10 = 16.4;
float var_1_11 = 0.2;
float var_1_12 = 499.1;
unsigned char var_1_13 = 0;
signed long int var_1_14 = -8;
unsigned char var_1_15 = 1;
unsigned char last_1_var_1_13 = 0;
void initially(void) {
}
void step(void) {
 signed long int stepLocal_1 = var_1_3;
 signed long int stepLocal_0 = var_1_2;
 if (! (-50 < var_1_2)) {
  if (stepLocal_0 != var_1_3) {
   if (stepLocal_1 <= var_1_2) {
    var_1_1 = (last_1_var_1_13 && var_1_5);
   }
  } else {
   var_1_1 = var_1_5;
  }
 }
 if (var_1_2 > (var_1_3 / var_1_14)) {
  if (var_1_1) {
   var_1_13 = (! var_1_15);
  } else {
   var_1_13 = 0;
  }
 } else {
  var_1_13 = var_1_5;
 }
 if (var_1_13) {
  var_1_6 = (((((((((var_1_7) < (var_1_8)) ? (var_1_7) : (var_1_8))) - var_1_9)) > (var_1_10)) ? ((((((var_1_7) < (var_1_8)) ? (var_1_7) : (var_1_8))) - var_1_9)) : (var_1_10)));
 }
 var_1_11 = (((((2.5f) < (((((31.75f) > (var_1_12)) ? (31.75f) : (var_1_12))))) ? (2.5f) : (((((31.75f) > (var_1_12)) ? (31.75f) : (var_1_12)))))) + 0.125f);
}
void updateVariables() {
 var_1_2 = __VERIFIER_nondet_long();
 assume_abort_if_not(var_1_2 >= -2147483648);
 assume_abort_if_not(var_1_2 <= 2147483647);
 var_1_3 = __VERIFIER_nondet_long();
 assume_abort_if_not(var_1_3 >= -2147483648);
 assume_abort_if_not(var_1_3 <= 2147483647);
 var_1_5 = __VERIFIER_nondet_uchar();
 assume_abort_if_not(var_1_5 >= 0);
 assume_abort_if_not(var_1_5 <= 0);
 var_1_7 = __VERIFIER_nondet_float();
 assume_abort_if_not((var_1_7 >= 0.0F && var_1_7 <= -1.0e-20F) || (var_1_7 <= 9223372.036854765600e+12F && var_1_7 >= 1.0e-20F ));
 var_1_8 = __VERIFIER_nondet_float();
 assume_abort_if_not((var_1_8 >= 0.0F && var_1_8 <= -1.0e-20F) || (var_1_8 <= 9223372.036854765600e+12F && var_1_8 >= 1.0e-20F ));
 var_1_9 = __VERIFIER_nondet_float();
 assume_abort_if_not((var_1_9 >= 0.0F && var_1_9 <= -1.0e-20F) || (var_1_9 <= 9223372.036854765600e+12F && var_1_9 >= 1.0e-20F ));
 var_1_10 = __VERIFIER_nondet_float();
 assume_abort_if_not((var_1_10 >= -922337.2036854765600e+13F && var_1_10 <= -1.0e-20F) || (var_1_10 <= 9223372.036854765600e+12F && var_1_10 >= 1.0e-20F ));
 var_1_12 = __VERIFIER_nondet_float();
 assume_abort_if_not((var_1_12 >= -461168.6018427382800e+13F && var_1_12 <= -1.0e-20F) || (var_1_12 <= 4611686.018427382800e+12F && var_1_12 >= 1.0e-20F ));
 var_1_14 = __VERIFIER_nondet_long();
 assume_abort_if_not(var_1_14 >= -2147483648);
 assume_abort_if_not(var_1_14 <= 2147483647);
 assume_abort_if_not(var_1_14 != 0);
 var_1_15 = __VERIFIER_nondet_uchar();
 assume_abort_if_not(var_1_15 >= 1);
 assume_abort_if_not(var_1_15 <= 1);
}
void updateLastVariables() {
 last_1_var_1_13 = var_1_13;
}
int property() {
 return ((((! (-50 < var_1_2)) ? ((var_1_2 != var_1_3) ? ((var_1_3 <= var_1_2) ? (var_1_1 == ((unsigned char) (last_1_var_1_13 && var_1_5))) : 1) : (var_1_1 == ((unsigned char) var_1_5))) : 1) && (var_1_13 ? (var_1_6 == ((float) (((((((((var_1_7) < (var_1_8)) ? (var_1_7) : (var_1_8))) - var_1_9)) > (var_1_10)) ? ((((((var_1_7) < (var_1_8)) ? (var_1_7) : (var_1_8))) - var_1_9)) : (var_1_10))))) : 1)) && (var_1_11 == ((float) (((((2.5f) < (((((31.75f) > (var_1_12)) ? (31.75f) : (var_1_12))))) ? (2.5f) : (((((31.75f) > (var_1_12)) ? (31.75f) : (var_1_12)))))) + 0.125f)))) && ((var_1_2 > (var_1_3 / var_1_14)) ? (var_1_1 ? (var_1_13 == ((unsigned char) (! var_1_15))) : (var_1_13 == ((unsigned char) 0))) : (var_1_13 == ((unsigned char) var_1_5)))
;
}
int main(void) {
 isInitial = 1;
 initially();
 int k_loop;
 for (k_loop = 0; k_loop < 1; k_loop++) {
  updateLastVariables();
  updateVariables();
  step();
  __VERIFIER_assert(property());
  isInitial = 0;
 }
 return 0;
}
