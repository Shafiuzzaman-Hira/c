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
void reach_error() { __assert_fail("0", "Req1_Prop1_Batch17PS_CN_10.c", 13, "reach_error"); }
void __VERIFIER_assert(int cond) { if(!(cond)) { ERROR: {reach_error();abort();} } return; }
void assume_abort_if_not(int cond) { if(!cond) { abort(); } }
unsigned char isInitial = 0;
unsigned char var_1_1 = 25;
unsigned char var_1_2 = 25;
unsigned char var_1_3 = 0;
unsigned char var_1_4 = 0;
signed long int var_1_5 = 4;
unsigned char var_1_7 = 0;
unsigned char var_1_8 = 1;
unsigned char var_1_9 = 0;
unsigned char var_1_10 = 0;
double var_1_11 = 7.3;
double var_1_12 = 1.25;
double var_1_13 = 128.8;
signed char var_1_14 = -1;
signed char var_1_15 = 10;
signed short int var_1_16 = 8;
unsigned long int var_1_18 = 128;
unsigned long int var_1_19 = 3963666122;
float var_1_20 = 15.875;
float var_1_21 = 15.5;
signed long int var_1_22 = -128;
signed long int var_1_23 = 32;
signed long int var_1_24 = 4;
unsigned char var_1_25 = 0;
unsigned char var_1_26 = 0;
unsigned char var_1_27 = 4;
unsigned char var_1_28 = 4;
unsigned char var_1_29 = 25;
float var_1_30 = 0.0;
float var_1_31 = 4.75;
unsigned char last_1_var_1_8 = 1;
signed char last_1_var_1_14 = -1;
void initially(void) {
}
void step(void) {
 var_1_20 = var_1_21;
 var_1_22 = var_1_23;
 var_1_24 = var_1_23;
 var_1_25 = var_1_26;
 var_1_27 = var_1_28;
 if ((- var_1_20) > ((var_1_30 - var_1_31) - 3.75f)) {
  var_1_29 = var_1_28;
 }
 unsigned char stepLocal_0 = last_1_var_1_8;
 if (stepLocal_0 && last_1_var_1_8) {
  if (last_1_var_1_8) {
   var_1_5 = (((((last_1_var_1_14) < 0 ) ? -(last_1_var_1_14) : (last_1_var_1_14))) - ((((var_1_4) < (var_1_2)) ? (var_1_4) : (var_1_2))));
  } else {
   var_1_5 = 8;
  }
 }
 if (var_1_5 < var_1_3) {
  var_1_8 = ((var_1_7 || (last_1_var_1_8 || var_1_9)) && var_1_10);
 } else {
  var_1_8 = (! var_1_10);
 }
 var_1_1 = (50 + ((((var_1_2) < (((((var_1_3) < (var_1_4)) ? (var_1_3) : (var_1_4))))) ? (var_1_2) : (((((var_1_3) < (var_1_4)) ? (var_1_3) : (var_1_4)))))));
 if ((64.4f + 1.5f) <= var_1_13) {
  if (var_1_1 >= var_1_4) {
   var_1_14 = var_1_15;
  }
 }
 unsigned char stepLocal_3 = var_1_9 && var_1_8;
 if (stepLocal_3 || (var_1_8 && var_1_10)) {
  var_1_18 = (var_1_19 - (((((1991720936u - var_1_1)) < (var_1_2)) ? ((1991720936u - var_1_1)) : (var_1_2))));
 } else {
  var_1_18 = var_1_2;
 }
 signed long int stepLocal_1 = 8 + var_1_14;
 if (var_1_4 == stepLocal_1) {
  var_1_11 = ((((var_1_12) > (var_1_13)) ? (var_1_12) : (var_1_13)));
 }
 unsigned long int stepLocal_2 = var_1_18 * (var_1_15 & var_1_1);
 if (var_1_12 >= 9.6) {
  if (var_1_10) {
   var_1_16 = (2 - var_1_1);
  } else {
   if (stepLocal_2 <= var_1_3) {
    var_1_16 = var_1_18;
   } else {
    var_1_16 = var_1_4;
   }
  }
 }
}
void updateVariables() {
 var_1_2 = __VERIFIER_nondet_uchar();
 assume_abort_if_not(var_1_2 >= 0);
 assume_abort_if_not(var_1_2 <= 127);
 var_1_3 = __VERIFIER_nondet_uchar();
 assume_abort_if_not(var_1_3 >= 0);
 assume_abort_if_not(var_1_3 <= 127);
 var_1_4 = __VERIFIER_nondet_uchar();
 assume_abort_if_not(var_1_4 >= 0);
 assume_abort_if_not(var_1_4 <= 127);
 var_1_7 = __VERIFIER_nondet_uchar();
 assume_abort_if_not(var_1_7 >= 0);
 assume_abort_if_not(var_1_7 <= 1);
 var_1_9 = __VERIFIER_nondet_uchar();
 assume_abort_if_not(var_1_9 >= 1);
 assume_abort_if_not(var_1_9 <= 1);
 var_1_10 = __VERIFIER_nondet_uchar();
 assume_abort_if_not(var_1_10 >= 1);
 assume_abort_if_not(var_1_10 <= 1);
 var_1_12 = __VERIFIER_nondet_double();
 assume_abort_if_not((var_1_12 >= -922337.2036854765600e+13F && var_1_12 <= -1.0e-20F) || (var_1_12 <= 9223372.036854765600e+12F && var_1_12 >= 1.0e-20F ));
 var_1_13 = __VERIFIER_nondet_double();
 assume_abort_if_not((var_1_13 >= -922337.2036854765600e+13F && var_1_13 <= -1.0e-20F) || (var_1_13 <= 9223372.036854765600e+12F && var_1_13 >= 1.0e-20F ));
 var_1_15 = __VERIFIER_nondet_char();
 assume_abort_if_not(var_1_15 >= -127);
 assume_abort_if_not(var_1_15 <= 126);
 var_1_19 = __VERIFIER_nondet_ulong();
 assume_abort_if_not(var_1_19 >= 2147483647);
 assume_abort_if_not(var_1_19 <= 4294967294);
 var_1_21 = __VERIFIER_nondet_float();
 assume_abort_if_not((var_1_21 >= -922337.2036854765600e+13F && var_1_21 <= -1.0e-20F) || (var_1_21 <= 9223372.036854765600e+12F && var_1_21 >= 1.0e-20F ));
 var_1_23 = __VERIFIER_nondet_long();
 assume_abort_if_not(var_1_23 >= -2147483647);
 assume_abort_if_not(var_1_23 <= 2147483646);
 var_1_26 = __VERIFIER_nondet_uchar();
 assume_abort_if_not(var_1_26 >= 0);
 assume_abort_if_not(var_1_26 <= 0);
 var_1_28 = __VERIFIER_nondet_uchar();
 assume_abort_if_not(var_1_28 >= 0);
 assume_abort_if_not(var_1_28 <= 254);
 var_1_30 = __VERIFIER_nondet_float();
 assume_abort_if_not((var_1_30 >= 4611686.018427387900e+12F && var_1_30 <= -1.0e-20F) || (var_1_30 <= 9223372.036854776000e+12F && var_1_30 >= 1.0e-20F ));
 var_1_31 = __VERIFIER_nondet_float();
 assume_abort_if_not((var_1_31 >= 0.0F && var_1_31 <= -1.0e-20F) || (var_1_31 <= 4611686.018427387900e+12F && var_1_31 >= 1.0e-20F ));
}
void updateLastVariables() {
 last_1_var_1_8 = var_1_8;
 last_1_var_1_14 = var_1_14;
}
int property() {
 return ((((((var_1_1 == ((unsigned char) (50 + ((((var_1_2) < (((((var_1_3) < (var_1_4)) ? (var_1_3) : (var_1_4))))) ? (var_1_2) : (((((var_1_3) < (var_1_4)) ? (var_1_3) : (var_1_4))))))))) && ((last_1_var_1_8 && last_1_var_1_8) ? (last_1_var_1_8 ? (var_1_5 == ((signed long int) (((((last_1_var_1_14) < 0 ) ? -(last_1_var_1_14) : (last_1_var_1_14))) - ((((var_1_4) < (var_1_2)) ? (var_1_4) : (var_1_2)))))) : (var_1_5 == ((signed long int) 8))) : 1)) && ((var_1_5 < var_1_3) ? (var_1_8 == ((unsigned char) ((var_1_7 || (last_1_var_1_8 || var_1_9)) && var_1_10))) : (var_1_8 == ((unsigned char) (! var_1_10))))) && ((var_1_4 == (8 + var_1_14)) ? (var_1_11 == ((double) ((((var_1_12) > (var_1_13)) ? (var_1_12) : (var_1_13))))) : 1)) && (((64.4f + 1.5f) <= var_1_13) ? ((var_1_1 >= var_1_4) ? (var_1_14 == ((signed char) var_1_15)) : 1) : 1)) && ((var_1_12 >= 9.6) ? (var_1_10 ? (var_1_16 == ((signed short int) (2 - var_1_1))) : (((var_1_18 * (var_1_15 & var_1_1)) <= var_1_3) ? (var_1_16 == ((signed short int) var_1_18)) : (var_1_16 == ((signed short int) var_1_4)))) : 1)) && (((var_1_9 && var_1_8) || (var_1_8 && var_1_10)) ? (var_1_18 == ((unsigned long int) (var_1_19 - (((((1991720936u - var_1_1)) < (var_1_2)) ? ((1991720936u - var_1_1)) : (var_1_2)))))) : (var_1_18 == ((unsigned long int) var_1_2)))
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
