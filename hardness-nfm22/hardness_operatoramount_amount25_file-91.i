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
void reach_error() { __assert_fail("0", "Req1_Prop1_Batch91Amount25.c", 13, "reach_error"); }
void __VERIFIER_assert(int cond) { if(!(cond)) { ERROR: {reach_error();abort();} } return; }
void assume_abort_if_not(int cond) { if(!cond) { abort(); } }
unsigned char isInitial = 0;
unsigned long int var_1_1 = 100000000;
signed short int var_1_5 = 1;
signed short int var_1_8 = -128;
signed short int var_1_9 = 1;
float var_1_10 = 25.8;
unsigned char var_1_11 = 0;
unsigned char var_1_12 = 1;
float var_1_13 = 16.45;
unsigned long int var_1_14 = 200;
unsigned short int var_1_15 = 32;
unsigned short int var_1_16 = 256;
void initially(void) {
}
void step(void) {
 var_1_15 = var_1_16;
 var_1_14 = var_1_15;
 if (var_1_11) {
  if (var_1_12) {
   if ((var_1_15 & var_1_14) == var_1_15) {
    var_1_10 = var_1_13;
   } else {
    var_1_10 = var_1_13;
   }
  } else {
   var_1_10 = var_1_13;
  }
 } else {
  var_1_10 = var_1_13;
 }
 if (var_1_10 >= 50.4f) {
  var_1_1 = ((((var_1_15) > (var_1_15)) ? (var_1_15) : (var_1_15)));
 }
 if (var_1_15 == (var_1_14 * var_1_15)) {
  if (var_1_10 >= (var_1_10 + var_1_10)) {
   var_1_5 = ((((var_1_8) > (var_1_9)) ? (var_1_8) : (var_1_9)));
  } else {
   var_1_5 = var_1_8;
  }
 } else {
  var_1_5 = var_1_8;
 }
}
void updateVariables() {
 var_1_8 = __VERIFIER_nondet_short();
 assume_abort_if_not(var_1_8 >= -32767);
 assume_abort_if_not(var_1_8 <= 32766);
 var_1_9 = __VERIFIER_nondet_short();
 assume_abort_if_not(var_1_9 >= -32767);
 assume_abort_if_not(var_1_9 <= 32766);
 var_1_11 = __VERIFIER_nondet_uchar();
 assume_abort_if_not(var_1_11 >= 0);
 assume_abort_if_not(var_1_11 <= 1);
 var_1_12 = __VERIFIER_nondet_uchar();
 assume_abort_if_not(var_1_12 >= 0);
 assume_abort_if_not(var_1_12 <= 1);
 var_1_13 = __VERIFIER_nondet_float();
 assume_abort_if_not((var_1_13 >= -922337.2036854765600e+13F && var_1_13 <= -1.0e-20F) || (var_1_13 <= 9223372.036854765600e+12F && var_1_13 >= 1.0e-20F ));
 var_1_16 = __VERIFIER_nondet_ushort();
 assume_abort_if_not(var_1_16 >= 0);
 assume_abort_if_not(var_1_16 <= 65534);
}
void updateLastVariables() {
}
int property() {
 return (((((var_1_10 >= 50.4f) ? (var_1_1 == ((unsigned long int) ((((var_1_15) > (var_1_15)) ? (var_1_15) : (var_1_15))))) : 1) && ((var_1_15 == (var_1_14 * var_1_15)) ? ((var_1_10 >= (var_1_10 + var_1_10)) ? (var_1_5 == ((signed short int) ((((var_1_8) > (var_1_9)) ? (var_1_8) : (var_1_9))))) : (var_1_5 == ((signed short int) var_1_8))) : (var_1_5 == ((signed short int) var_1_8)))) && (var_1_11 ? (var_1_12 ? (((var_1_15 & var_1_14) == var_1_15) ? (var_1_10 == ((float) var_1_13)) : (var_1_10 == ((float) var_1_13))) : (var_1_10 == ((float) var_1_13))) : (var_1_10 == ((float) var_1_13)))) && (var_1_14 == ((unsigned long int) var_1_15))) && (var_1_15 == ((unsigned short int) var_1_16))
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
