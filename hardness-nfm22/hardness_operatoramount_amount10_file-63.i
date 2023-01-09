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
void reach_error() { __assert_fail("0", "Req1_Prop1_Batch63Amount10.c", 13, "reach_error"); }
void __VERIFIER_assert(int cond) { if(!(cond)) { ERROR: {reach_error();abort();} } return; }
void assume_abort_if_not(int cond) { if(!cond) { abort(); } }
unsigned char isInitial = 0;
double var_1_1 = 2.2;
signed long int var_1_2 = 32;
signed long int var_1_3 = 5;
signed long int var_1_4 = 5;
double var_1_6 = 63.2;
double var_1_7 = 25.2;
unsigned long int var_1_8 = 128;
void initially(void) {
}
void step(void) {
 var_1_8 = var_1_4;
 signed long int stepLocal_0 = ((((var_1_2) > (var_1_3)) ? (var_1_2) : (var_1_3))) - var_1_4;
 if (stepLocal_0 >= var_1_8) {
  var_1_1 = (((((var_1_6 - var_1_7) < 0 ) ? -(var_1_6 - var_1_7) : (var_1_6 - var_1_7))) - 0.8);
 } else {
  var_1_1 = var_1_7;
 }
}
void updateVariables() {
 var_1_2 = __VERIFIER_nondet_long();
 assume_abort_if_not(var_1_2 >= -1);
 assume_abort_if_not(var_1_2 <= 2147483647);
 var_1_3 = __VERIFIER_nondet_long();
 assume_abort_if_not(var_1_3 >= -1);
 assume_abort_if_not(var_1_3 <= 2147483647);
 var_1_4 = __VERIFIER_nondet_long();
 assume_abort_if_not(var_1_4 >= 0);
 assume_abort_if_not(var_1_4 <= 2147483647);
 var_1_6 = __VERIFIER_nondet_double();
 assume_abort_if_not((var_1_6 >= 0.0F && var_1_6 <= -1.0e-20F) || (var_1_6 <= 9223372.036854765600e+12F && var_1_6 >= 1.0e-20F ));
 var_1_7 = __VERIFIER_nondet_double();
 assume_abort_if_not((var_1_7 >= 0.0F && var_1_7 <= -1.0e-20F) || (var_1_7 <= 9223372.036854765600e+12F && var_1_7 >= 1.0e-20F ));
}
void updateLastVariables() {
}
int property() {
 return (((((((var_1_2) > (var_1_3)) ? (var_1_2) : (var_1_3))) - var_1_4) >= var_1_8) ? (var_1_1 == ((double) (((((var_1_6 - var_1_7) < 0 ) ? -(var_1_6 - var_1_7) : (var_1_6 - var_1_7))) - 0.8))) : (var_1_1 == ((double) var_1_7))) && (var_1_8 == ((unsigned long int) var_1_4))
;
}
int main(void) {
 isInitial = 1;
 initially();
 while (1) {
  updateLastVariables();
  updateVariables();
  step();
  __VERIFIER_assert(property());
  isInitial = 0;
 }
 return 0;
}
