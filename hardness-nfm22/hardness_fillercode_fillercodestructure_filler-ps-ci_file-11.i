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
void reach_error() { __assert_fail("0", "Req1_Prop1_Batch11Filler_PS_CI.c", 13, "reach_error"); }
void __VERIFIER_assert(int cond) { if(!(cond)) { ERROR: {reach_error();abort();} } return; }
void assume_abort_if_not(int cond) { if(!cond) { abort(); } }
unsigned char isInitial = 0;
unsigned char var_1_1 = 1;
unsigned char var_1_2 = 0;
unsigned char var_1_3 = 0;
signed char var_1_4 = 5;
signed char var_1_7 = 0;
signed char var_1_8 = 16;
signed char var_1_9 = 4;
unsigned long int var_1_10 = 128;
unsigned long int var_1_11 = 1422462314;
signed short int var_1_12 = 8;
signed short int var_1_15 = -50;
unsigned long int var_1_16 = 1;
unsigned long int var_1_17 = 3609236770;
unsigned long int var_1_18 = 2902762324;
double var_1_19 = 3.8;
double var_1_20 = 255.75;
unsigned short int var_1_21 = 0;
signed char var_1_22 = -8;
signed long int var_1_23 = -32;
unsigned char var_1_25 = 10;
unsigned char var_1_27 = 128;
float var_1_30 = 31.3;
float var_1_32 = 15.25;
double var_1_33 = 128.8;
signed char var_1_34 = 4;
signed char var_1_35 = 1;
unsigned char var_1_36 = 16;
unsigned long int last_1_var_1_10 = 128;
unsigned long int last_1_var_1_16 = 1;
double last_1_var_1_19 = 3.8;
void initially(void) {
}
void step(void) {
 var_1_22 = ((((-25) < 0 ) ? -(-25) : (-25)));
 if (var_1_7 > var_1_12) {
  if ((~ var_1_7) <= 128) {
   var_1_23 = var_1_12;
  } else {
   var_1_23 = var_1_12;
  }
 }
 if (var_1_18 <= ((((var_1_9) < ((var_1_12 >> var_1_7))) ? (var_1_9) : ((var_1_12 >> var_1_7))))) {
  var_1_25 = (var_1_27 - var_1_7);
 } else {
  if (var_1_3) {
   var_1_25 = var_1_7;
  }
 }
 if (var_1_1) {
  var_1_30 = ((((var_1_20) < ((1.625f + ((((var_1_32) < 0 ) ? -(var_1_32) : (var_1_32)))))) ? (var_1_20) : ((1.625f + ((((var_1_32) < 0 ) ? -(var_1_32) : (var_1_32)))))));
 }
 if (var_1_9 >= var_1_8) {
  if ((var_1_27 >> (var_1_34 + var_1_35)) <= var_1_7) {
   if (var_1_34 >= var_1_8) {
    if (var_1_20 <= ((((var_1_32) < 0 ) ? -(var_1_32) : (var_1_32)))) {
     var_1_33 = ((((var_1_32) > (var_1_20)) ? (var_1_32) : (var_1_20)));
    }
   } else {
    var_1_33 = ((((var_1_20) > (var_1_32)) ? (var_1_20) : (var_1_32)));
   }
  } else {
   var_1_33 = var_1_20;
  }
 }
 if (var_1_27 >= (var_1_9 + var_1_9)) {
  if ((-0.95f * ((((var_1_19) < 0 ) ? -(var_1_19) : (var_1_19)))) > var_1_20) {
   var_1_36 = (var_1_27 - var_1_35);
  } else {
   if (var_1_19 > 128.5f) {
    var_1_36 = var_1_9;
   }
  }
 } else {
  var_1_36 = var_1_9;
 }
 unsigned long int stepLocal_1 = last_1_var_1_16;
 unsigned long int stepLocal_0 = last_1_var_1_16;
 if (stepLocal_1 != last_1_var_1_10) {
  if (var_1_8 <= stepLocal_0) {
   if ((- last_1_var_1_19) >= last_1_var_1_19) {
    var_1_12 = var_1_8;
   }
  }
 } else {
  var_1_12 = var_1_9;
 }
 if (var_1_12 == var_1_12) {
  var_1_4 = ((8 + ((((var_1_7) > (var_1_8)) ? (var_1_7) : (var_1_8)))) - var_1_9);
 }
 var_1_1 = (var_1_2 || (! var_1_3));
 var_1_10 = (4027026809u - (((((var_1_11) < 0 ) ? -(var_1_11) : (var_1_11))) - var_1_7));
 var_1_19 = ((((((((var_1_20) < 0 ) ? -(var_1_20) : (var_1_20)))) < (1.4)) ? (((((var_1_20) < 0 ) ? -(var_1_20) : (var_1_20)))) : (1.4)));
 if (var_1_1) {
  if (var_1_19 >= var_1_19) {
   if (! var_1_3) {
    var_1_15 = var_1_8;
   }
  } else {
   var_1_15 = var_1_7;
  }
 } else {
  var_1_15 = 5;
 }
 if (var_1_19 != var_1_19) {
  var_1_16 = (((((var_1_11) < (var_1_7)) ? (var_1_11) : (var_1_7))) + var_1_8);
 } else {
  if (var_1_4 > var_1_12) {
   var_1_16 = (var_1_17 - (var_1_11 - var_1_8));
  } else {
   var_1_16 = (((((var_1_17) > (var_1_18)) ? (var_1_17) : (var_1_18))) - var_1_9);
  }
 }
 unsigned char stepLocal_2 = var_1_1;
 if ((var_1_16 == (var_1_8 - var_1_9)) && stepLocal_2) {
  var_1_21 = var_1_9;
 }
}
void updateVariables() {
 var_1_2 = __VERIFIER_nondet_uchar();
 assume_abort_if_not(var_1_2 >= 0);
 assume_abort_if_not(var_1_2 <= 1);
 var_1_3 = __VERIFIER_nondet_uchar();
 assume_abort_if_not(var_1_3 >= 0);
 assume_abort_if_not(var_1_3 <= 0);
 var_1_7 = __VERIFIER_nondet_char();
 assume_abort_if_not(var_1_7 >= 0);
 assume_abort_if_not(var_1_7 <= 63);
 var_1_8 = __VERIFIER_nondet_char();
 assume_abort_if_not(var_1_8 >= 0);
 assume_abort_if_not(var_1_8 <= 63);
 var_1_9 = __VERIFIER_nondet_char();
 assume_abort_if_not(var_1_9 >= 0);
 assume_abort_if_not(var_1_9 <= 126);
 var_1_11 = __VERIFIER_nondet_ulong();
 assume_abort_if_not(var_1_11 >= 1073741823);
 assume_abort_if_not(var_1_11 <= 2147483647);
 var_1_17 = __VERIFIER_nondet_ulong();
 assume_abort_if_not(var_1_17 >= 2147483647);
 assume_abort_if_not(var_1_17 <= 4294967294);
 var_1_18 = __VERIFIER_nondet_ulong();
 assume_abort_if_not(var_1_18 >= 2147483647);
 assume_abort_if_not(var_1_18 <= 4294967294);
 var_1_20 = __VERIFIER_nondet_double();
 assume_abort_if_not((var_1_20 >= -922337.2036854765600e+13F && var_1_20 <= -1.0e-20F) || (var_1_20 <= 9223372.036854765600e+12F && var_1_20 >= 1.0e-20F ));
 var_1_27 = __VERIFIER_nondet_uchar();
 assume_abort_if_not(var_1_27 >= 127);
 assume_abort_if_not(var_1_27 <= 254);
 var_1_32 = __VERIFIER_nondet_float();
 assume_abort_if_not((var_1_32 >= -461168.6018427382800e+13F && var_1_32 <= -1.0e-20F) || (var_1_32 <= 4611686.018427382800e+12F && var_1_32 >= 1.0e-20F ));
 var_1_34 = __VERIFIER_nondet_char();
 assume_abort_if_not(var_1_34 >= 0);
 assume_abort_if_not(var_1_34 <= 5);
 var_1_35 = __VERIFIER_nondet_char();
 assume_abort_if_not(var_1_35 >= 0);
 assume_abort_if_not(var_1_35 <= 4);
}
void updateLastVariables() {
 last_1_var_1_10 = var_1_10;
 last_1_var_1_16 = var_1_16;
 last_1_var_1_19 = var_1_19;
}
int property() {
 return (((((((var_1_1 == ((unsigned char) (var_1_2 || (! var_1_3)))) && ((var_1_12 == var_1_12) ? (var_1_4 == ((signed char) ((8 + ((((var_1_7) > (var_1_8)) ? (var_1_7) : (var_1_8)))) - var_1_9))) : 1)) && (var_1_10 == ((unsigned long int) (4027026809u - (((((var_1_11) < 0 ) ? -(var_1_11) : (var_1_11))) - var_1_7))))) && ((last_1_var_1_16 != last_1_var_1_10) ? ((var_1_8 <= last_1_var_1_16) ? (((- last_1_var_1_19) >= last_1_var_1_19) ? (var_1_12 == ((signed short int) var_1_8)) : 1) : 1) : (var_1_12 == ((signed short int) var_1_9)))) && (var_1_1 ? ((var_1_19 >= var_1_19) ? ((! var_1_3) ? (var_1_15 == ((signed short int) var_1_8)) : 1) : (var_1_15 == ((signed short int) var_1_7))) : (var_1_15 == ((signed short int) 5)))) && ((var_1_19 != var_1_19) ? (var_1_16 == ((unsigned long int) (((((var_1_11) < (var_1_7)) ? (var_1_11) : (var_1_7))) + var_1_8))) : ((var_1_4 > var_1_12) ? (var_1_16 == ((unsigned long int) (var_1_17 - (var_1_11 - var_1_8)))) : (var_1_16 == ((unsigned long int) (((((var_1_17) > (var_1_18)) ? (var_1_17) : (var_1_18))) - var_1_9)))))) && (var_1_19 == ((double) ((((((((var_1_20) < 0 ) ? -(var_1_20) : (var_1_20)))) < (1.4)) ? (((((var_1_20) < 0 ) ? -(var_1_20) : (var_1_20)))) : (1.4)))))) && (((var_1_16 == (var_1_8 - var_1_9)) && var_1_1) ? (var_1_21 == ((unsigned short int) var_1_9)) : 1)
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
