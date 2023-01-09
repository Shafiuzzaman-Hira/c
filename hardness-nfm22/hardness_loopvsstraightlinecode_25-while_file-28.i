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
void reach_error() { __assert_fail("0", "Req1_Prop1_Batch2825_while.c", 13, "reach_error"); }
void __VERIFIER_assert(int cond) { if(!(cond)) { ERROR: {reach_error();abort();} } return; }
void assume_abort_if_not(int cond) { if(!cond) { abort(); } }
unsigned char isInitial = 0;
signed char var_1_1 = 1;
float var_1_2 = 63.75;
float var_1_3 = 255.75;
signed char var_1_5 = 10;
signed char var_1_6 = 4;
signed char var_1_7 = -10;
float var_1_8 = 4.75;
float var_1_9 = 99.5;
float var_1_10 = 255.9;
float var_1_11 = 24.85;
signed long int var_1_12 = -2;
signed long int var_1_13 = 1629954775;
signed long int var_1_14 = 1;
signed long int var_1_15 = 1928642731;
void initially(void) {
}
void step(void) {
 signed long int stepLocal_0 = -4;
 if (stepLocal_0 < var_1_6) {
  var_1_8 = ((((var_1_9) < (var_1_10)) ? (var_1_9) : (var_1_10)));
 }
 var_1_11 = ((((var_1_9) > (var_1_10)) ? (var_1_9) : (var_1_10)));
 signed long int stepLocal_1 = (((var_1_5) > (var_1_7)) ? (var_1_5) : (var_1_7));
 if ((var_1_6 | 5) <= stepLocal_1) {
  var_1_12 = (((((var_1_6) < ((var_1_13 - var_1_14))) ? (var_1_6) : ((var_1_13 - var_1_14)))) - (var_1_15 - ((((var_1_5) < 0 ) ? -(var_1_5) : (var_1_5)))));
 } else {
  var_1_12 = 4;
 }
 if ((var_1_2 - var_1_3) <= (- var_1_11)) {
  var_1_1 = (((((var_1_5 - var_1_6)) < (var_1_7)) ? ((var_1_5 - var_1_6)) : (var_1_7)));
 } else {
  var_1_1 = var_1_5;
 }
}
void updateVariables() {
 var_1_2 = __VERIFIER_nondet_float();
 assume_abort_if_not((var_1_2 >= 0.0F && var_1_2 <= -1.0e-20F) || (var_1_2 <= 9223372.036854776000e+12F && var_1_2 >= 1.0e-20F ));
 var_1_3 = __VERIFIER_nondet_float();
 assume_abort_if_not((var_1_3 >= 0.0F && var_1_3 <= -1.0e-20F) || (var_1_3 <= 9223372.036854776000e+12F && var_1_3 >= 1.0e-20F ));
 var_1_5 = __VERIFIER_nondet_char();
 assume_abort_if_not(var_1_5 >= -1);
 assume_abort_if_not(var_1_5 <= 126);
 var_1_6 = __VERIFIER_nondet_char();
 assume_abort_if_not(var_1_6 >= 0);
 assume_abort_if_not(var_1_6 <= 126);
 var_1_7 = __VERIFIER_nondet_char();
 assume_abort_if_not(var_1_7 >= -127);
 assume_abort_if_not(var_1_7 <= 126);
 var_1_9 = __VERIFIER_nondet_float();
 assume_abort_if_not((var_1_9 >= -922337.2036854765600e+13F && var_1_9 <= -1.0e-20F) || (var_1_9 <= 9223372.036854765600e+12F && var_1_9 >= 1.0e-20F ));
 var_1_10 = __VERIFIER_nondet_float();
 assume_abort_if_not((var_1_10 >= -922337.2036854765600e+13F && var_1_10 <= -1.0e-20F) || (var_1_10 <= 9223372.036854765600e+12F && var_1_10 >= 1.0e-20F ));
 var_1_13 = __VERIFIER_nondet_long();
 assume_abort_if_not(var_1_13 >= 1073741822);
 assume_abort_if_not(var_1_13 <= 2147483646);
 var_1_14 = __VERIFIER_nondet_long();
 assume_abort_if_not(var_1_14 >= 0);
 assume_abort_if_not(var_1_14 <= 1073741823);
 var_1_15 = __VERIFIER_nondet_long();
 assume_abort_if_not(var_1_15 >= 1073741823);
 assume_abort_if_not(var_1_15 <= 2147483646);
}
void updateLastVariables() {
}
int property() {
 return (((((var_1_2 - var_1_3) <= (- var_1_11)) ? (var_1_1 == ((signed char) (((((var_1_5 - var_1_6)) < (var_1_7)) ? ((var_1_5 - var_1_6)) : (var_1_7))))) : (var_1_1 == ((signed char) var_1_5))) && ((-4 < var_1_6) ? (var_1_8 == ((float) ((((var_1_9) < (var_1_10)) ? (var_1_9) : (var_1_10))))) : 1)) && (var_1_11 == ((float) ((((var_1_9) > (var_1_10)) ? (var_1_9) : (var_1_10)))))) && (((var_1_6 | 5) <= ((((var_1_5) > (var_1_7)) ? (var_1_5) : (var_1_7)))) ? (var_1_12 == ((signed long int) (((((var_1_6) < ((var_1_13 - var_1_14))) ? (var_1_6) : ((var_1_13 - var_1_14)))) - (var_1_15 - ((((var_1_5) < 0 ) ? -(var_1_5) : (var_1_5))))))) : (var_1_12 == ((signed long int) 4)))
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
