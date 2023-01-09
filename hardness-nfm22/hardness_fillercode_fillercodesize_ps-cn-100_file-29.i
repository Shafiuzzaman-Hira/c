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
void reach_error() { __assert_fail("0", "Req1_Prop1_Batch29PS_CN_100.c", 13, "reach_error"); }
void __VERIFIER_assert(int cond) { if(!(cond)) { ERROR: {reach_error();abort();} } return; }
void assume_abort_if_not(int cond) { if(!cond) { abort(); } }
unsigned char isInitial = 0;
unsigned char var_1_1 = 0;
unsigned char var_1_6 = 0;
unsigned char var_1_7 = 0;
signed short int var_1_8 = 0;
signed short int var_1_9 = 0;
signed short int var_1_10 = 8;
signed char var_1_11 = 1;
signed char var_1_12 = 32;
signed char var_1_13 = -2;
signed char var_1_14 = 8;
signed char var_1_15 = 0;
signed char var_1_16 = 10;
signed char var_1_17 = 32;
unsigned char var_1_18 = 0;
signed char var_1_19 = -1;
signed short int var_1_20 = 100;
signed short int var_1_22 = 29265;
float var_1_23 = 31.6;
float var_1_24 = 9.2;
float var_1_25 = 15.6;
float var_1_26 = 25.25;
unsigned long int var_1_27 = 256;
double var_1_29 = 15.86;
double var_1_30 = 64.25;
signed short int var_1_31 = 10;
unsigned char var_1_32 = 0;
unsigned char var_1_33 = 0;
signed short int var_1_34 = 16;
signed short int var_1_35 = 8;
signed short int var_1_36 = 1000;
signed short int var_1_37 = 64;
signed short int var_1_38 = 128;
float var_1_39 = 4.7;
unsigned short int var_1_40 = 100;
unsigned short int var_1_41 = 41069;
unsigned short int var_1_42 = 8;
double var_1_43 = 127.8;
double var_1_44 = 24.875;
double var_1_45 = 63.6;
double var_1_46 = 4.75;
unsigned long int var_1_47 = 25;
unsigned char var_1_48 = 0;
unsigned char var_1_49 = 1;
double var_1_50 = 0.2;
double var_1_51 = 24.75;
double var_1_52 = 63.5;
unsigned long int var_1_53 = 32;
unsigned char var_1_54 = 0;
unsigned char var_1_55 = 0;
unsigned char var_1_56 = 0;
float var_1_57 = 4.875;
unsigned char var_1_58 = 0;
void initially(void) {
}
void step(void) {
 var_1_29 = var_1_30;
 if (var_1_32 && var_1_33) {
  var_1_31 = ((((((((var_1_34 - var_1_35)) > (((((var_1_36) < 0 ) ? -(var_1_36) : (var_1_36))))) ? ((var_1_34 - var_1_35)) : (((((var_1_36) < 0 ) ? -(var_1_36) : (var_1_36)))))) < 0 ) ? -(((((var_1_34 - var_1_35)) > (((((var_1_36) < 0 ) ? -(var_1_36) : (var_1_36))))) ? ((var_1_34 - var_1_35)) : (((((var_1_36) < 0 ) ? -(var_1_36) : (var_1_36)))))) : (((((var_1_34 - var_1_35)) > (((((var_1_36) < 0 ) ? -(var_1_36) : (var_1_36))))) ? ((var_1_34 - var_1_35)) : (((((var_1_36) < 0 ) ? -(var_1_36) : (var_1_36))))))));
 } else {
  if (((((var_1_36) < 0 ) ? -(var_1_36) : (var_1_36))) > var_1_34) {
   if ((! var_1_33) && (var_1_30 > var_1_29)) {
    var_1_31 = (((((var_1_35) < (var_1_34)) ? (var_1_35) : (var_1_34))) - (var_1_37 + var_1_38));
   } else {
    var_1_31 = var_1_35;
   }
  }
 }
 if (var_1_29 < var_1_30) {
  if (var_1_31 > var_1_34) {
   var_1_39 = var_1_30;
  }
 } else {
  var_1_39 = 15.6f;
 }
 if ((! (var_1_33 && var_1_32)) || ((32u & var_1_35) >= var_1_37)) {
  var_1_40 = ((((var_1_41 - var_1_38) < 0 ) ? -(var_1_41 - var_1_38) : (var_1_41 - var_1_38)));
 }
 if (var_1_33) {
  var_1_42 = ((((((((var_1_38) < 0 ) ? -(var_1_38) : (var_1_38)))) > (((((var_1_37) < 0 ) ? -(var_1_37) : (var_1_37))))) ? (((((var_1_38) < 0 ) ? -(var_1_38) : (var_1_38)))) : (((((var_1_37) < 0 ) ? -(var_1_37) : (var_1_37))))));
 } else {
  var_1_42 = (var_1_37 + var_1_34);
 }
 if ((var_1_37 >> var_1_42) != (var_1_34 * var_1_40)) {
  var_1_43 = (10.125 + var_1_44);
 } else {
  if (((var_1_45 - var_1_46) * var_1_29) != var_1_39) {
   var_1_43 = ((((var_1_30) < 0 ) ? -(var_1_30) : (var_1_30)));
  } else {
   var_1_43 = var_1_30;
  }
 }
 if ((var_1_37 + var_1_40) < ((var_1_34 ^ var_1_42) ^ ((((var_1_35) < 0 ) ? -(var_1_35) : (var_1_35))))) {
  var_1_47 = (3720292576u - var_1_40);
 } else {
  var_1_47 = ((((var_1_42) < (var_1_34)) ? (var_1_42) : (var_1_34)));
 }
 if (var_1_32) {
  var_1_48 = var_1_49;
 }
 if (var_1_44 >= var_1_39) {
  if ((~ var_1_42) >= (var_1_35 / var_1_41)) {
   var_1_50 = (((((var_1_51 + var_1_52)) < (25.55)) ? ((var_1_51 + var_1_52)) : (25.55)));
  } else {
   var_1_50 = ((((var_1_30) > (var_1_44)) ? (var_1_30) : (var_1_44)));
  }
 }
 if (var_1_31 < var_1_47) {
  var_1_53 = ((((var_1_34) < (var_1_40)) ? (var_1_34) : (var_1_40)));
 } else {
  if (var_1_46 >= var_1_45) {
   var_1_53 = var_1_38;
  } else {
   var_1_53 = ((((var_1_34) < (var_1_38)) ? (var_1_34) : (var_1_38)));
  }
 }
 if (var_1_48 && var_1_32) {
  if ((var_1_37 & var_1_31) > var_1_38) {
   if (((((var_1_39) < 0 ) ? -(var_1_39) : (var_1_39))) > var_1_43) {
    var_1_54 = var_1_49;
   }
  }
 } else {
  var_1_54 = var_1_55;
 }
 var_1_56 = var_1_49;
 var_1_57 = var_1_51;
 var_1_58 = var_1_55;
 var_1_8 = (var_1_9 - (2 + var_1_10));
 if (var_1_22 != var_1_12) {
  if (var_1_10 <= var_1_17) {
   var_1_23 = (var_1_24 + ((((var_1_25) > (var_1_26)) ? (var_1_25) : (var_1_26))));
  }
 } else {
  var_1_23 = var_1_25;
 }
 if (! ((var_1_9 - var_1_22) > var_1_12)) {
  var_1_27 = var_1_15;
 }
 if (var_1_23 == var_1_23) {
  if (var_1_15 >= (var_1_27 / var_1_19)) {
   var_1_18 = var_1_7;
  }
 }
 if ((- ((((var_1_23) < (var_1_23)) ? (var_1_23) : (var_1_23)))) > (1.625 * var_1_23)) {
  var_1_20 = ((var_1_22 - (var_1_16 + var_1_15)) - var_1_10);
 } else {
  var_1_20 = var_1_19;
 }
 if (var_1_18) {
  var_1_1 = (((-128 <= var_1_20) || (var_1_23 >= var_1_23)) && var_1_6);
 } else {
  var_1_1 = var_1_7;
 }
 if (var_1_1) {
  var_1_11 = (var_1_12 + ((((var_1_13) < (var_1_14)) ? (var_1_13) : (var_1_14))));
 } else {
  if (var_1_27 >= var_1_14) {
   var_1_11 = ((var_1_15 + var_1_16) - var_1_17);
  } else {
   if (var_1_7) {
    var_1_11 = var_1_16;
   } else {
    var_1_11 = var_1_12;
   }
  }
 }
}
void updateVariables() {
 var_1_6 = __VERIFIER_nondet_uchar();
 assume_abort_if_not(var_1_6 >= 0);
 assume_abort_if_not(var_1_6 <= 0);
 var_1_7 = __VERIFIER_nondet_uchar();
 assume_abort_if_not(var_1_7 >= 1);
 assume_abort_if_not(var_1_7 <= 1);
 var_1_9 = __VERIFIER_nondet_short();
 assume_abort_if_not(var_1_9 >= -1);
 assume_abort_if_not(var_1_9 <= 32766);
 var_1_10 = __VERIFIER_nondet_short();
 assume_abort_if_not(var_1_10 >= 0);
 assume_abort_if_not(var_1_10 <= 16383);
 var_1_12 = __VERIFIER_nondet_char();
 assume_abort_if_not(var_1_12 >= -63);
 assume_abort_if_not(var_1_12 <= 63);
 var_1_13 = __VERIFIER_nondet_char();
 assume_abort_if_not(var_1_13 >= -63);
 assume_abort_if_not(var_1_13 <= 63);
 var_1_14 = __VERIFIER_nondet_char();
 assume_abort_if_not(var_1_14 >= -63);
 assume_abort_if_not(var_1_14 <= 63);
 var_1_15 = __VERIFIER_nondet_char();
 assume_abort_if_not(var_1_15 >= 0);
 assume_abort_if_not(var_1_15 <= 63);
 var_1_16 = __VERIFIER_nondet_char();
 assume_abort_if_not(var_1_16 >= 0);
 assume_abort_if_not(var_1_16 <= 63);
 var_1_17 = __VERIFIER_nondet_char();
 assume_abort_if_not(var_1_17 >= 0);
 assume_abort_if_not(var_1_17 <= 126);
 var_1_19 = __VERIFIER_nondet_char();
 assume_abort_if_not(var_1_19 >= -128);
 assume_abort_if_not(var_1_19 <= 127);
 assume_abort_if_not(var_1_19 != 0);
 var_1_22 = __VERIFIER_nondet_short();
 assume_abort_if_not(var_1_22 >= 16382);
 assume_abort_if_not(var_1_22 <= 32766);
 var_1_24 = __VERIFIER_nondet_float();
 assume_abort_if_not((var_1_24 >= -461168.6018427382800e+13F && var_1_24 <= -1.0e-20F) || (var_1_24 <= 4611686.018427382800e+12F && var_1_24 >= 1.0e-20F ));
 var_1_25 = __VERIFIER_nondet_float();
 assume_abort_if_not((var_1_25 >= -461168.6018427382800e+13F && var_1_25 <= -1.0e-20F) || (var_1_25 <= 4611686.018427382800e+12F && var_1_25 >= 1.0e-20F ));
 var_1_26 = __VERIFIER_nondet_float();
 assume_abort_if_not((var_1_26 >= -461168.6018427382800e+13F && var_1_26 <= -1.0e-20F) || (var_1_26 <= 4611686.018427382800e+12F && var_1_26 >= 1.0e-20F ));
 var_1_30 = __VERIFIER_nondet_double();
 assume_abort_if_not((var_1_30 >= -922337.2036854765600e+13F && var_1_30 <= -1.0e-20F) || (var_1_30 <= 9223372.036854765600e+12F && var_1_30 >= 1.0e-20F ));
 var_1_32 = __VERIFIER_nondet_uchar();
 assume_abort_if_not(var_1_32 >= 0);
 assume_abort_if_not(var_1_32 <= 1);
 var_1_33 = __VERIFIER_nondet_uchar();
 assume_abort_if_not(var_1_33 >= 0);
 assume_abort_if_not(var_1_33 <= 1);
 var_1_34 = __VERIFIER_nondet_short();
 assume_abort_if_not(var_1_34 >= 0);
 assume_abort_if_not(var_1_34 <= 32766);
 var_1_35 = __VERIFIER_nondet_short();
 assume_abort_if_not(var_1_35 >= 0);
 assume_abort_if_not(var_1_35 <= 32766);
 var_1_36 = __VERIFIER_nondet_short();
 assume_abort_if_not(var_1_36 >= -32766);
 assume_abort_if_not(var_1_36 <= 32766);
 var_1_37 = __VERIFIER_nondet_short();
 assume_abort_if_not(var_1_37 >= 0);
 assume_abort_if_not(var_1_37 <= 16383);
 var_1_38 = __VERIFIER_nondet_short();
 assume_abort_if_not(var_1_38 >= 0);
 assume_abort_if_not(var_1_38 <= 16383);
 var_1_41 = __VERIFIER_nondet_ushort();
 assume_abort_if_not(var_1_41 >= 32767);
 assume_abort_if_not(var_1_41 <= 65534);
 var_1_44 = __VERIFIER_nondet_double();
 assume_abort_if_not((var_1_44 >= -461168.6018427382800e+13F && var_1_44 <= -1.0e-20F) || (var_1_44 <= 4611686.018427382800e+12F && var_1_44 >= 1.0e-20F ));
 var_1_45 = __VERIFIER_nondet_double();
 assume_abort_if_not((var_1_45 >= 0.0F && var_1_45 <= -1.0e-20F) || (var_1_45 <= 9223372.036854776000e+12F && var_1_45 >= 1.0e-20F ));
 var_1_46 = __VERIFIER_nondet_double();
 assume_abort_if_not((var_1_46 >= 0.0F && var_1_46 <= -1.0e-20F) || (var_1_46 <= 9223372.036854776000e+12F && var_1_46 >= 1.0e-20F ));
 var_1_49 = __VERIFIER_nondet_uchar();
 assume_abort_if_not(var_1_49 >= 1);
 assume_abort_if_not(var_1_49 <= 1);
 var_1_51 = __VERIFIER_nondet_double();
 assume_abort_if_not((var_1_51 >= -461168.6018427382800e+13F && var_1_51 <= -1.0e-20F) || (var_1_51 <= 4611686.018427382800e+12F && var_1_51 >= 1.0e-20F ));
 var_1_52 = __VERIFIER_nondet_double();
 assume_abort_if_not((var_1_52 >= -461168.6018427382800e+13F && var_1_52 <= -1.0e-20F) || (var_1_52 <= 4611686.018427382800e+12F && var_1_52 >= 1.0e-20F ));
 var_1_55 = __VERIFIER_nondet_uchar();
 assume_abort_if_not(var_1_55 >= 0);
 assume_abort_if_not(var_1_55 <= 0);
}
void updateLastVariables() {
}
int property() {
 return ((((((var_1_18 ? (var_1_1 == ((unsigned char) (((-128 <= var_1_20) || (var_1_23 >= var_1_23)) && var_1_6))) : (var_1_1 == ((unsigned char) var_1_7))) && (var_1_8 == ((signed short int) (var_1_9 - (2 + var_1_10))))) && (var_1_1 ? (var_1_11 == ((signed char) (var_1_12 + ((((var_1_13) < (var_1_14)) ? (var_1_13) : (var_1_14)))))) : ((var_1_27 >= var_1_14) ? (var_1_11 == ((signed char) ((var_1_15 + var_1_16) - var_1_17))) : (var_1_7 ? (var_1_11 == ((signed char) var_1_16)) : (var_1_11 == ((signed char) var_1_12)))))) && ((var_1_23 == var_1_23) ? ((var_1_15 >= (var_1_27 / var_1_19)) ? (var_1_18 == ((unsigned char) var_1_7)) : 1) : 1)) && (((- ((((var_1_23) < (var_1_23)) ? (var_1_23) : (var_1_23)))) > (1.625 * var_1_23)) ? (var_1_20 == ((signed short int) ((var_1_22 - (var_1_16 + var_1_15)) - var_1_10))) : (var_1_20 == ((signed short int) var_1_19)))) && ((var_1_22 != var_1_12) ? ((var_1_10 <= var_1_17) ? (var_1_23 == ((float) (var_1_24 + ((((var_1_25) > (var_1_26)) ? (var_1_25) : (var_1_26)))))) : 1) : (var_1_23 == ((float) var_1_25)))) && ((! ((var_1_9 - var_1_22) > var_1_12)) ? (var_1_27 == ((unsigned long int) var_1_15)) : 1)
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