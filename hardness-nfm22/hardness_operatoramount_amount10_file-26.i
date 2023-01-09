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
void reach_error() { __assert_fail("0", "Req1_Prop1_Batch26Amount10.c", 13, "reach_error"); }
void __VERIFIER_assert(int cond) { if(!(cond)) { ERROR: {reach_error();abort();} } return; }
void assume_abort_if_not(int cond) { if(!cond) { abort(); } }
unsigned char isInitial = 0;
unsigned long int var_1_1 = 32;
unsigned char var_1_2 = 1;
unsigned long int var_1_3 = 4;
unsigned long int var_1_4 = 64;
unsigned long int var_1_5 = 32;
unsigned long int var_1_6 = 1908995780;
unsigned long int var_1_7 = 0;
double var_1_8 = 1.7;
double var_1_9 = 1.7;
signed short int var_1_10 = -32;
signed short int var_1_11 = -16;
void initially(void) {
}
void step(void) {
 if (var_1_2) {
  var_1_1 = ((((var_1_3) > ((var_1_4 + var_1_5))) ? (var_1_3) : ((var_1_4 + var_1_5))));
 } else {
  var_1_1 = (3164264966u - ((((var_1_5) < ((var_1_6 - var_1_7))) ? (var_1_5) : ((var_1_6 - var_1_7)))));
 }
 var_1_8 = var_1_9;
 var_1_10 = var_1_11;
}
void updateVariables() {
 var_1_2 = __VERIFIER_nondet_uchar();
 assume_abort_if_not(var_1_2 >= 0);
 assume_abort_if_not(var_1_2 <= 1);
 var_1_3 = __VERIFIER_nondet_ulong();
 assume_abort_if_not(var_1_3 >= 0);
 assume_abort_if_not(var_1_3 <= 4294967294);
 var_1_4 = __VERIFIER_nondet_ulong();
 assume_abort_if_not(var_1_4 >= 0);
 assume_abort_if_not(var_1_4 <= 2147483647);
 var_1_5 = __VERIFIER_nondet_ulong();
 assume_abort_if_not(var_1_5 >= 0);
 assume_abort_if_not(var_1_5 <= 2147483647);
 var_1_6 = __VERIFIER_nondet_ulong();
 assume_abort_if_not(var_1_6 >= 1073741823);
 assume_abort_if_not(var_1_6 <= 2147483647);
 var_1_7 = __VERIFIER_nondet_ulong();
 assume_abort_if_not(var_1_7 >= 0);
 assume_abort_if_not(var_1_7 <= 1073741823);
 var_1_9 = __VERIFIER_nondet_double();
 assume_abort_if_not((var_1_9 >= -922337.2036854765600e+13F && var_1_9 <= -1.0e-20F) || (var_1_9 <= 9223372.036854765600e+12F && var_1_9 >= 1.0e-20F ));
 var_1_11 = __VERIFIER_nondet_short();
 assume_abort_if_not(var_1_11 >= -32767);
 assume_abort_if_not(var_1_11 <= 32766);
}
void updateLastVariables() {
}
int property() {
 return ((var_1_2 ? (var_1_1 == ((unsigned long int) ((((var_1_3) > ((var_1_4 + var_1_5))) ? (var_1_3) : ((var_1_4 + var_1_5)))))) : (var_1_1 == ((unsigned long int) (3164264966u - ((((var_1_5) < ((var_1_6 - var_1_7))) ? (var_1_5) : ((var_1_6 - var_1_7)))))))) && (var_1_8 == ((double) var_1_9))) && (var_1_10 == ((signed short int) var_1_11))
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
