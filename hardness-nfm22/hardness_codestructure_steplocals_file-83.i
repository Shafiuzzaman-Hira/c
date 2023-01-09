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
void reach_error() { __assert_fail("0", "Req1_Prop1_Batch83stepLocals.c", 13, "reach_error"); }
void __VERIFIER_assert(int cond) { if(!(cond)) { ERROR: {reach_error();abort();} } return; }
void assume_abort_if_not(int cond) { if(!cond) { abort(); } }
unsigned char isInitial = 0;
signed long int var_1_1 = -25;
unsigned char var_1_2 = 0;
signed long int var_1_3 = 1230640054;
signed long int var_1_4 = 32;
signed long int var_1_5 = 128;
signed long int var_1_6 = 1508873667;
unsigned char var_1_7 = 64;
unsigned char var_1_8 = 200;
unsigned char var_1_9 = 16;
unsigned char var_1_10 = 0;
unsigned char var_1_11 = 8;
float var_1_12 = 15.4;
float var_1_13 = 10000.2;
float var_1_14 = 0.8;
float var_1_15 = 32.75;
float var_1_16 = 10000000000000.375;
float var_1_17 = 16.4;
float var_1_18 = 8.5;
float var_1_19 = 64.75;
unsigned char var_1_20 = 16;
signed char var_1_22 = 0;
unsigned char var_1_23 = 16;
void initially(void) {
}
void step(void) {
 if (var_1_2) {
  var_1_1 = ((var_1_3 - var_1_4) - var_1_5);
 } else {
  var_1_1 = (((((var_1_3) > ((var_1_6 - var_1_4))) ? (var_1_3) : ((var_1_6 - var_1_4)))) - var_1_5);
 }
 var_1_7 = ((var_1_8 - var_1_9) - (100 - (var_1_10 + var_1_11)));
 if (((((var_1_13) > (var_1_14)) ? (var_1_13) : (var_1_14))) <= (- (var_1_15 / 4.9f))) {
  var_1_12 = 31.5f;
 }
 var_1_16 = (var_1_17 + ((((var_1_18) < 0 ) ? -(var_1_18) : (var_1_18))));
 signed long int stepLocal_1 = var_1_4 ^ var_1_10;
 signed long int stepLocal_0 = var_1_9 % (var_1_8 - var_1_20);
 if (stepLocal_0 > ((((var_1_5) < 0 ) ? -(var_1_5) : (var_1_5)))) {
  if ((var_1_3 ^ var_1_5) <= stepLocal_1) {
   var_1_19 = var_1_17;
  }
 }
 if ((var_1_11 % var_1_20) < var_1_1) {
  var_1_22 = ((((10) > (var_1_10)) ? (10) : (var_1_10)));
 }
 if ((3886175339u - var_1_20) <= (var_1_9 / var_1_3)) {
  if (var_1_10 > var_1_7) {
   var_1_23 = ((((var_1_20) < ((var_1_8 - var_1_9))) ? (var_1_20) : ((var_1_8 - var_1_9))));
  } else {
   var_1_23 = (((((var_1_20) > (64)) ? (var_1_20) : (64))) + var_1_11);
  }
 } else {
  var_1_23 = var_1_20;
 }
}
void updateVariables() {
 var_1_2 = __VERIFIER_nondet_uchar();
 assume_abort_if_not(var_1_2 >= 0);
 assume_abort_if_not(var_1_2 <= 1);
 var_1_3 = __VERIFIER_nondet_long();
 assume_abort_if_not(var_1_3 >= 1073741822);
 assume_abort_if_not(var_1_3 <= 2147483646);
 var_1_4 = __VERIFIER_nondet_long();
 assume_abort_if_not(var_1_4 >= 0);
 assume_abort_if_not(var_1_4 <= 1073741823);
 var_1_5 = __VERIFIER_nondet_long();
 assume_abort_if_not(var_1_5 >= 0);
 assume_abort_if_not(var_1_5 <= 2147483646);
 var_1_6 = __VERIFIER_nondet_long();
 assume_abort_if_not(var_1_6 >= 1073741822);
 assume_abort_if_not(var_1_6 <= 2147483646);
 var_1_8 = __VERIFIER_nondet_uchar();
 assume_abort_if_not(var_1_8 >= 190);
 assume_abort_if_not(var_1_8 <= 254);
 var_1_9 = __VERIFIER_nondet_uchar();
 assume_abort_if_not(var_1_9 >= 0);
 assume_abort_if_not(var_1_9 <= 63);
 var_1_10 = __VERIFIER_nondet_uchar();
 assume_abort_if_not(var_1_10 >= 0);
 assume_abort_if_not(var_1_10 <= 32);
 var_1_11 = __VERIFIER_nondet_uchar();
 assume_abort_if_not(var_1_11 >= 0);
 assume_abort_if_not(var_1_11 <= 31);
 var_1_13 = __VERIFIER_nondet_float();
 assume_abort_if_not((var_1_13 >= -922337.2036854776000e+13F && var_1_13 <= -1.0e-20F) || (var_1_13 <= 9223372.036854776000e+12F && var_1_13 >= 1.0e-20F ));
 var_1_14 = __VERIFIER_nondet_float();
 assume_abort_if_not((var_1_14 >= -922337.2036854776000e+13F && var_1_14 <= -1.0e-20F) || (var_1_14 <= 9223372.036854776000e+12F && var_1_14 >= 1.0e-20F ));
 var_1_15 = __VERIFIER_nondet_float();
 assume_abort_if_not((var_1_15 >= -922337.2036854776000e+13F && var_1_15 <= -1.0e-20F) || (var_1_15 <= 9223372.036854776000e+12F && var_1_15 >= 1.0e-20F ));
 var_1_17 = __VERIFIER_nondet_float();
 assume_abort_if_not((var_1_17 >= -461168.6018427382800e+13F && var_1_17 <= -1.0e-20F) || (var_1_17 <= 4611686.018427382800e+12F && var_1_17 >= 1.0e-20F ));
 var_1_18 = __VERIFIER_nondet_float();
 assume_abort_if_not((var_1_18 >= -461168.6018427382800e+13F && var_1_18 <= -1.0e-20F) || (var_1_18 <= 4611686.018427382800e+12F && var_1_18 >= 1.0e-20F ));
 var_1_20 = __VERIFIER_nondet_uchar();
 assume_abort_if_not(var_1_20 >= 1);
 assume_abort_if_not(var_1_20 <= 126);
 assume_abort_if_not(var_1_20 != 127);
}
void updateLastVariables() {
}
int property() {
 return ((((((var_1_2 ? (var_1_1 == ((signed long int) ((var_1_3 - var_1_4) - var_1_5))) : (var_1_1 == ((signed long int) (((((var_1_3) > ((var_1_6 - var_1_4))) ? (var_1_3) : ((var_1_6 - var_1_4)))) - var_1_5)))) && (var_1_7 == ((unsigned char) ((var_1_8 - var_1_9) - (100 - (var_1_10 + var_1_11)))))) && ((((((var_1_13) > (var_1_14)) ? (var_1_13) : (var_1_14))) <= (- (var_1_15 / 4.9f))) ? (var_1_12 == ((float) 31.5f)) : 1)) && (var_1_16 == ((float) (var_1_17 + ((((var_1_18) < 0 ) ? -(var_1_18) : (var_1_18))))))) && (((var_1_9 % (var_1_8 - var_1_20)) > ((((var_1_5) < 0 ) ? -(var_1_5) : (var_1_5)))) ? (((var_1_3 ^ var_1_5) <= (var_1_4 ^ var_1_10)) ? (var_1_19 == ((float) var_1_17)) : 1) : 1)) && (((var_1_11 % var_1_20) < var_1_1) ? (var_1_22 == ((signed char) ((((10) > (var_1_10)) ? (10) : (var_1_10))))) : 1)) && (((3886175339u - var_1_20) <= (var_1_9 / var_1_3)) ? ((var_1_10 > var_1_7) ? (var_1_23 == ((unsigned char) ((((var_1_20) < ((var_1_8 - var_1_9))) ? (var_1_20) : ((var_1_8 - var_1_9)))))) : (var_1_23 == ((unsigned char) (((((var_1_20) > (64)) ? (var_1_20) : (64))) + var_1_11)))) : (var_1_23 == ((unsigned char) var_1_20)))
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