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
void reach_error() { __assert_fail("0", "Req1_Prop1_Batch63Amount25.c", 13, "reach_error"); }
void __VERIFIER_assert(int cond) { if(!(cond)) { ERROR: {reach_error();abort();} } return; }
void assume_abort_if_not(int cond) { if(!cond) { abort(); } }
unsigned char isInitial = 0;
unsigned char var_1_1 = 0;
float var_1_2 = 8.3;
float var_1_3 = 2.25;
float var_1_4 = 10.3;
unsigned char var_1_5 = 1;
unsigned char var_1_6 = 0;
signed long int var_1_7 = 128;
float var_1_8 = 9.8;
signed long int var_1_9 = -256;
unsigned short int var_1_10 = 5;
signed char var_1_11 = 8;
signed long int var_1_12 = 2;
unsigned short int var_1_13 = 32;
unsigned short int var_1_14 = 1;
unsigned short int last_1_var_1_10 = 5;
void initially(void) {
}
void step(void) {
 if (var_1_4 <= (((((var_1_2) < (var_1_3)) ? (var_1_2) : (var_1_3))) * var_1_8)) {
  var_1_7 = ((((-200) > (last_1_var_1_10)) ? (-200) : (last_1_var_1_10)));
 } else {
  var_1_7 = last_1_var_1_10;
 }
 if (var_1_8 > var_1_4) {
  if (! var_1_6) {
   if ((var_1_9 / ((((var_1_11) > (-64)) ? (var_1_11) : (-64)))) < (var_1_7 / var_1_12)) {
    var_1_10 = var_1_13;
   } else {
    var_1_10 = var_1_13;
   }
  } else {
   var_1_10 = var_1_14;
  }
 }
 if (((((1.1f) < (var_1_2)) ? (1.1f) : (var_1_2))) > (var_1_3 * var_1_4)) {
  var_1_1 = (var_1_5 && var_1_6);
 }
}
void updateVariables() {
 var_1_2 = __VERIFIER_nondet_float();
 assume_abort_if_not((var_1_2 >= -922337.2036854776000e+13F && var_1_2 <= -1.0e-20F) || (var_1_2 <= 9223372.036854776000e+12F && var_1_2 >= 1.0e-20F ));
 var_1_3 = __VERIFIER_nondet_float();
 assume_abort_if_not((var_1_3 >= -922337.2036854776000e+13F && var_1_3 <= -1.0e-20F) || (var_1_3 <= 9223372.036854776000e+12F && var_1_3 >= 1.0e-20F ));
 var_1_4 = __VERIFIER_nondet_float();
 assume_abort_if_not((var_1_4 >= -922337.2036854776000e+13F && var_1_4 <= -1.0e-20F) || (var_1_4 <= 9223372.036854776000e+12F && var_1_4 >= 1.0e-20F ));
 var_1_5 = __VERIFIER_nondet_uchar();
 assume_abort_if_not(var_1_5 >= 0);
 assume_abort_if_not(var_1_5 <= 1);
 var_1_6 = __VERIFIER_nondet_uchar();
 assume_abort_if_not(var_1_6 >= 0);
 assume_abort_if_not(var_1_6 <= 0);
 var_1_8 = __VERIFIER_nondet_float();
 assume_abort_if_not((var_1_8 >= -922337.2036854776000e+13F && var_1_8 <= -1.0e-20F) || (var_1_8 <= 9223372.036854776000e+12F && var_1_8 >= 1.0e-20F ));
 var_1_9 = __VERIFIER_nondet_long();
 assume_abort_if_not(var_1_9 >= -2147483647);
 assume_abort_if_not(var_1_9 <= 2147483646);
 var_1_11 = __VERIFIER_nondet_char();
 assume_abort_if_not(var_1_11 >= -128);
 assume_abort_if_not(var_1_11 <= 127);
 assume_abort_if_not(var_1_11 != 0);
 var_1_12 = __VERIFIER_nondet_long();
 assume_abort_if_not(var_1_12 >= -2147483648);
 assume_abort_if_not(var_1_12 <= 2147483647);
 assume_abort_if_not(var_1_12 != 0);
 var_1_13 = __VERIFIER_nondet_ushort();
 assume_abort_if_not(var_1_13 >= 0);
 assume_abort_if_not(var_1_13 <= 65534);
 var_1_14 = __VERIFIER_nondet_ushort();
 assume_abort_if_not(var_1_14 >= 0);
 assume_abort_if_not(var_1_14 <= 65534);
}
void updateLastVariables() {
 last_1_var_1_10 = var_1_10;
}
int property() {
 return (((((((1.1f) < (var_1_2)) ? (1.1f) : (var_1_2))) > (var_1_3 * var_1_4)) ? (var_1_1 == ((unsigned char) (var_1_5 && var_1_6))) : 1) && ((var_1_4 <= (((((var_1_2) < (var_1_3)) ? (var_1_2) : (var_1_3))) * var_1_8)) ? (var_1_7 == ((signed long int) ((((-200) > (last_1_var_1_10)) ? (-200) : (last_1_var_1_10))))) : (var_1_7 == ((signed long int) last_1_var_1_10)))) && ((var_1_8 > var_1_4) ? ((! var_1_6) ? (((var_1_9 / ((((var_1_11) > (-64)) ? (var_1_11) : (-64)))) < (var_1_7 / var_1_12)) ? (var_1_10 == ((unsigned short int) var_1_13)) : (var_1_10 == ((unsigned short int) var_1_13))) : (var_1_10 == ((unsigned short int) var_1_14))) : 1)
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
