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
void reach_error() { __assert_fail("0", "Req1_Prop1_Batch21Amount25.c", 13, "reach_error"); }
void __VERIFIER_assert(int cond) { if(!(cond)) { ERROR: {reach_error();abort();} } return; }
void assume_abort_if_not(int cond) { if(!cond) { abort(); } }
unsigned char isInitial = 0;
unsigned short int var_1_1 = 32;
unsigned char var_1_7 = 1;
signed char var_1_8 = -32;
signed char var_1_9 = -8;
unsigned char var_1_10 = 2;
double var_1_11 = 15.6;
double var_1_12 = 15.4;
double var_1_13 = 32.2;
unsigned char var_1_14 = 5;
unsigned short int last_1_var_1_1 = 32;
signed char last_1_var_1_8 = -32;
unsigned char last_1_var_1_10 = 2;
void initially(void) {
}
void step(void) {
 signed long int stepLocal_2 = (((last_1_var_1_8) < (last_1_var_1_8)) ? (last_1_var_1_8) : (last_1_var_1_8));
 unsigned char stepLocal_1 = var_1_7;
 if (((((var_1_11) < (var_1_12)) ? (var_1_11) : (var_1_12))) <= var_1_13) {
  if (stepLocal_1 && (last_1_var_1_8 >= var_1_9)) {
   if (last_1_var_1_1 <= stepLocal_2) {
    var_1_10 = var_1_14;
   }
  }
 } else {
  var_1_10 = var_1_14;
 }
 signed long int stepLocal_0 = ((((- last_1_var_1_10)) > (last_1_var_1_10)) ? ((- last_1_var_1_10)) : (last_1_var_1_10));
 if (last_1_var_1_10 < stepLocal_0) {
  var_1_8 = ((((var_1_9) < 0 ) ? -(var_1_9) : (var_1_9)));
 } else {
  var_1_8 = var_1_9;
 }
 if ((var_1_10 + ((((var_1_10) > (var_1_10)) ? (var_1_10) : (var_1_10)))) < (var_1_10 * var_1_8)) {
  if (var_1_7) {
   var_1_1 = var_1_10;
  }
 } else {
  var_1_1 = var_1_10;
 }
}
void updateVariables() {
 var_1_7 = __VERIFIER_nondet_uchar();
 assume_abort_if_not(var_1_7 >= 0);
 assume_abort_if_not(var_1_7 <= 1);
 var_1_9 = __VERIFIER_nondet_char();
 assume_abort_if_not(var_1_9 >= -126);
 assume_abort_if_not(var_1_9 <= 126);
 var_1_11 = __VERIFIER_nondet_double();
 assume_abort_if_not((var_1_11 >= -922337.2036854776000e+13F && var_1_11 <= -1.0e-20F) || (var_1_11 <= 9223372.036854776000e+12F && var_1_11 >= 1.0e-20F ));
 var_1_12 = __VERIFIER_nondet_double();
 assume_abort_if_not((var_1_12 >= -922337.2036854776000e+13F && var_1_12 <= -1.0e-20F) || (var_1_12 <= 9223372.036854776000e+12F && var_1_12 >= 1.0e-20F ));
 var_1_13 = __VERIFIER_nondet_double();
 assume_abort_if_not((var_1_13 >= -922337.2036854776000e+13F && var_1_13 <= -1.0e-20F) || (var_1_13 <= 9223372.036854776000e+12F && var_1_13 >= 1.0e-20F ));
 var_1_14 = __VERIFIER_nondet_uchar();
 assume_abort_if_not(var_1_14 >= 0);
 assume_abort_if_not(var_1_14 <= 254);
}
void updateLastVariables() {
 last_1_var_1_1 = var_1_1;
 last_1_var_1_8 = var_1_8;
 last_1_var_1_10 = var_1_10;
}
int property() {
 return ((((var_1_10 + ((((var_1_10) > (var_1_10)) ? (var_1_10) : (var_1_10)))) < (var_1_10 * var_1_8)) ? (var_1_7 ? (var_1_1 == ((unsigned short int) var_1_10)) : 1) : (var_1_1 == ((unsigned short int) var_1_10))) && ((last_1_var_1_10 < (((((- last_1_var_1_10)) > (last_1_var_1_10)) ? ((- last_1_var_1_10)) : (last_1_var_1_10)))) ? (var_1_8 == ((signed char) ((((var_1_9) < 0 ) ? -(var_1_9) : (var_1_9))))) : (var_1_8 == ((signed char) var_1_9)))) && ((((((var_1_11) < (var_1_12)) ? (var_1_11) : (var_1_12))) <= var_1_13) ? ((var_1_7 && (last_1_var_1_8 >= var_1_9)) ? ((last_1_var_1_1 <= ((((last_1_var_1_8) < (last_1_var_1_8)) ? (last_1_var_1_8) : (last_1_var_1_8)))) ? (var_1_10 == ((unsigned char) var_1_14)) : 1) : 1) : (var_1_10 == ((unsigned char) var_1_14)))
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
