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
void reach_error() { __assert_fail("0", "Req1_Prop1_Batch14no_floats.c", 13, "reach_error"); }
void __VERIFIER_assert(int cond) { if(!(cond)) { ERROR: {reach_error();abort();} } return; }
void assume_abort_if_not(int cond) { if(!cond) { abort(); } }
unsigned char isInitial = 0;
signed long int var_1_1 = 1000000;
unsigned char var_1_2 = 0;
unsigned char var_1_3 = 1;
signed short int var_1_5 = -64;
signed short int var_1_6 = -64;
signed short int var_1_7 = 10;
signed short int var_1_8 = 8;
unsigned char var_1_9 = 0;
unsigned char var_1_10 = 1;
unsigned char var_1_11 = 0;
unsigned short int var_1_12 = 2;
signed long int var_1_13 = 32;
signed long int var_1_14 = 15;
signed long int var_1_15 = 256;
signed long int var_1_16 = 8;
unsigned short int var_1_17 = 57581;
unsigned char last_1_var_1_9 = 0;
void initially(void) {
}
void step(void) {
 if (last_1_var_1_9) {
  var_1_5 = var_1_6;
 } else {
  var_1_5 = ((var_1_7 + 16) - var_1_8);
 }
 if ((var_1_13 / var_1_14) <= var_1_15) {
  if ((var_1_16 - 2.3) > var_1_14) {
   var_1_12 = (var_1_17 - var_1_7);
  } else {
   var_1_12 = ((((var_1_7) > (((((var_1_17 - var_1_8) < 0 ) ? -(var_1_17 - var_1_8) : (var_1_17 - var_1_8))))) ? (var_1_7) : (((((var_1_17 - var_1_8) < 0 ) ? -(var_1_17 - var_1_8) : (var_1_17 - var_1_8))))));
  }
 } else {
  var_1_12 = var_1_8;
 }
 if (((var_1_5 >= var_1_12) && var_1_2) && var_1_3) {
  var_1_9 = (! var_1_10);
 } else {
  var_1_9 = (! (var_1_11 || var_1_10));
 }
 unsigned char stepLocal_0 = var_1_9;
 if (stepLocal_0 && var_1_9) {
  var_1_1 = var_1_5;
 }
}
void updateVariables() {
 var_1_2 = __VERIFIER_nondet_uchar();
 assume_abort_if_not(var_1_2 >= 0);
 assume_abort_if_not(var_1_2 <= 1);
 var_1_3 = __VERIFIER_nondet_uchar();
 assume_abort_if_not(var_1_3 >= 0);
 assume_abort_if_not(var_1_3 <= 1);
 var_1_6 = __VERIFIER_nondet_short();
 assume_abort_if_not(var_1_6 >= -32767);
 assume_abort_if_not(var_1_6 <= 32766);
 var_1_7 = __VERIFIER_nondet_short();
 assume_abort_if_not(var_1_7 >= 0);
 assume_abort_if_not(var_1_7 <= 16383);
 var_1_8 = __VERIFIER_nondet_short();
 assume_abort_if_not(var_1_8 >= 0);
 assume_abort_if_not(var_1_8 <= 32766);
 var_1_10 = __VERIFIER_nondet_uchar();
 assume_abort_if_not(var_1_10 >= 1);
 assume_abort_if_not(var_1_10 <= 1);
 var_1_11 = __VERIFIER_nondet_uchar();
 assume_abort_if_not(var_1_11 >= 0);
 assume_abort_if_not(var_1_11 <= 1);
 var_1_13 = __VERIFIER_nondet_long();
 assume_abort_if_not(var_1_13 >= -2147483648);
 assume_abort_if_not(var_1_13 <= 2147483647);
 var_1_14 = __VERIFIER_nondet_long();
 assume_abort_if_not(var_1_14 >= -2147483648);
 assume_abort_if_not(var_1_14 <= 2147483647);
 assume_abort_if_not(var_1_14 != 0);
 var_1_15 = __VERIFIER_nondet_long();
 assume_abort_if_not(var_1_15 >= -2147483648);
 assume_abort_if_not(var_1_15 <= 2147483647);
 var_1_16 = __VERIFIER_nondet_long();
 assume_abort_if_not(var_1_16 >= 0);
 assume_abort_if_not(var_1_16 <= 2147483647);
 var_1_17 = __VERIFIER_nondet_ushort();
 assume_abort_if_not(var_1_17 >= 32767);
 assume_abort_if_not(var_1_17 <= 65534);
}
void updateLastVariables() {
 last_1_var_1_9 = var_1_9;
}
int property() {
 return ((((var_1_9 && var_1_9) ? (var_1_1 == ((signed long int) var_1_5)) : 1) && (last_1_var_1_9 ? (var_1_5 == ((signed short int) var_1_6)) : (var_1_5 == ((signed short int) ((var_1_7 + 16) - var_1_8))))) && ((((var_1_5 >= var_1_12) && var_1_2) && var_1_3) ? (var_1_9 == ((unsigned char) (! var_1_10))) : (var_1_9 == ((unsigned char) (! (var_1_11 || var_1_10)))))) && (((var_1_13 / var_1_14) <= var_1_15) ? (((var_1_16 - 2.3) > var_1_14) ? (var_1_12 == ((unsigned short int) (var_1_17 - var_1_7))) : (var_1_12 == ((unsigned short int) ((((var_1_7) > (((((var_1_17 - var_1_8) < 0 ) ? -(var_1_17 - var_1_8) : (var_1_17 - var_1_8))))) ? (var_1_7) : (((((var_1_17 - var_1_8) < 0 ) ? -(var_1_17 - var_1_8) : (var_1_17 - var_1_8))))))))) : (var_1_12 == ((unsigned short int) var_1_8)))
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
