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
void reach_error() { __assert_fail("0", "Req1_Prop1_Batch30PS_CN_100.c", 13, "reach_error"); }
void __VERIFIER_assert(int cond) { if(!(cond)) { ERROR: {reach_error();abort();} } return; }
void assume_abort_if_not(int cond) { if(!cond) { abort(); } }
unsigned char isInitial = 0;
unsigned char var_1_1 = 1;
unsigned char var_1_4 = 0;
double var_1_5 = 127.5;
double var_1_7 = 10000000000000.125;
double var_1_8 = 1.25;
double var_1_10 = 25.7;
signed long int var_1_11 = -2;
signed long int var_1_13 = 5;
signed long int var_1_14 = 128;
signed long int var_1_15 = 1000;
double var_1_16 = 0.2;
double var_1_17 = 0.25;
double var_1_18 = 99999999999999.5;
signed short int var_1_19 = -64;
double var_1_20 = 256.75;
double var_1_21 = 100.4;
double var_1_22 = 4.5;
double var_1_23 = -0.5;
signed long int var_1_24 = 10;
signed char var_1_25 = -8;
double var_1_26 = 9.75;
unsigned char var_1_27 = 2;
signed long int var_1_28 = -200;
signed char var_1_29 = 64;
signed char var_1_30 = 2;
signed char var_1_31 = -4;
unsigned char var_1_32 = 1;
unsigned char var_1_33 = 0;
unsigned char var_1_34 = 0;
unsigned char var_1_35 = 0;
unsigned char var_1_36 = 0;
double var_1_37 = 15.5;
double var_1_38 = 0.0;
double var_1_39 = 0.0;
double var_1_40 = 3.5;
signed short int var_1_41 = 256;
unsigned char var_1_42 = 0;
unsigned char var_1_43 = 1;
unsigned short int var_1_44 = 2;
unsigned short int var_1_45 = 50;
unsigned short int var_1_46 = 2;
unsigned short int var_1_47 = 4;
unsigned short int var_1_48 = 0;
unsigned long int var_1_49 = 25;
unsigned char var_1_50 = 1;
unsigned char last_1_var_1_1 = 1;
signed long int last_1_var_1_11 = -2;
signed long int last_1_var_1_15 = 1000;
double last_1_var_1_16 = 0.2;
void initially(void) {
}
void step(void) {
 if ((((((var_1_20) < 0 ) ? -(var_1_20) : (var_1_20))) - var_1_21) == (var_1_22 * var_1_23)) {
  var_1_19 = -4;
 }
 var_1_24 = var_1_19;
 if (var_1_21 != var_1_23) {
  if (var_1_20 < (var_1_22 / var_1_26)) {
   var_1_25 = ((((4) < 0 ) ? -(4) : (4)));
  } else {
   var_1_25 = 64;
  }
 } else {
  if ((var_1_19 | (var_1_24 + var_1_27)) != var_1_28) {
   var_1_25 = ((((((((var_1_29 - var_1_30)) < (var_1_31)) ? ((var_1_29 - var_1_30)) : (var_1_31))) < 0 ) ? -(((((var_1_29 - var_1_30)) < (var_1_31)) ? ((var_1_29 - var_1_30)) : (var_1_31))) : (((((var_1_29 - var_1_30)) < (var_1_31)) ? ((var_1_29 - var_1_30)) : (var_1_31)))));
  } else {
   var_1_25 = ((((var_1_31) > (var_1_30)) ? (var_1_31) : (var_1_30)));
  }
 }
 if (((((var_1_30) < (var_1_24)) ? (var_1_30) : (var_1_24))) == var_1_29) {
  var_1_32 = (var_1_33 || (var_1_34 || (var_1_35 || var_1_36)));
 } else {
  if (var_1_25 >= var_1_30) {
   var_1_32 = var_1_36;
  } else {
   var_1_32 = var_1_36;
  }
 }
 if (var_1_20 < var_1_26) {
  var_1_37 = ((((((var_1_38) < (var_1_39)) ? (var_1_38) : (var_1_39))) - var_1_40) - 3.3);
 }
 if ((((((var_1_28) < 0 ) ? -(var_1_28) : (var_1_28))) * ((((var_1_24) < 0 ) ? -(var_1_24) : (var_1_24)))) == ((((var_1_27) < 0 ) ? -(var_1_27) : (var_1_27)))) {
  var_1_41 = ((((var_1_31) < (var_1_25)) ? (var_1_31) : (var_1_25)));
 } else {
  var_1_41 = (((((((var_1_31) < 0 ) ? -(var_1_31) : (var_1_31))) < 0 ) ? -((((var_1_31) < 0 ) ? -(var_1_31) : (var_1_31))) : ((((var_1_31) < 0 ) ? -(var_1_31) : (var_1_31)))));
 }
 var_1_42 = (! (var_1_36 && (var_1_32 || var_1_43)));
 if ((((((var_1_41) < 0 ) ? -(var_1_41) : (var_1_41))) * var_1_24) > (var_1_25 + (var_1_28 >> 2))) {
  var_1_44 = ((((var_1_30) < ((51928 - ((((var_1_27) < 0 ) ? -(var_1_27) : (var_1_27)))))) ? (var_1_30) : ((51928 - ((((var_1_27) < 0 ) ? -(var_1_27) : (var_1_27)))))));
 }
 if (var_1_35 || (var_1_30 <= var_1_24)) {
  if ((((((var_1_40) < (var_1_23)) ? (var_1_40) : (var_1_23))) + var_1_37) >= var_1_20) {
   var_1_45 = ((((((((var_1_27) > (((((var_1_29) < 0 ) ? -(var_1_29) : (var_1_29))))) ? (var_1_27) : (((((var_1_29) < 0 ) ? -(var_1_29) : (var_1_29))))))) > (var_1_30)) ? (((((var_1_27) > (((((var_1_29) < 0 ) ? -(var_1_29) : (var_1_29))))) ? (var_1_27) : (((((var_1_29) < 0 ) ? -(var_1_29) : (var_1_29))))))) : (var_1_30)));
  } else {
   var_1_45 = ((((var_1_30) < (var_1_46)) ? (var_1_30) : (var_1_46)));
  }
 } else {
  if ((var_1_46 ^ 2) >= var_1_29) {
   var_1_45 = ((((((((var_1_46) > (var_1_27)) ? (var_1_46) : (var_1_27)))) > (((((var_1_30) < 0 ) ? -(var_1_30) : (var_1_30))))) ? (((((var_1_46) > (var_1_27)) ? (var_1_46) : (var_1_27)))) : (((((var_1_30) < 0 ) ? -(var_1_30) : (var_1_30))))));
  } else {
   if ((var_1_25 + var_1_29) >= var_1_44) {
    var_1_45 = ((((((var_1_27 + var_1_30)) < (((((var_1_29) < 0 ) ? -(var_1_29) : (var_1_29))))) ? ((var_1_27 + var_1_30)) : (((((var_1_29) < 0 ) ? -(var_1_29) : (var_1_29)))))) + ((((var_1_47) < (((((64) > (var_1_48)) ? (64) : (var_1_48))))) ? (var_1_47) : (((((64) > (var_1_48)) ? (64) : (var_1_48)))))));
   } else {
    var_1_45 = 16;
   }
  }
 }
 var_1_49 = var_1_46;
 var_1_50 = var_1_43;
 if (last_1_var_1_1) {
  if (((((last_1_var_1_16) > (49.75)) ? (last_1_var_1_16) : (49.75))) > last_1_var_1_16) {
   var_1_11 = ((((last_1_var_1_15) < ((((((var_1_13 - 5)) > (var_1_14)) ? ((var_1_13 - 5)) : (var_1_14))))) ? (last_1_var_1_15) : ((((((var_1_13 - 5)) > (var_1_14)) ? ((var_1_13 - 5)) : (var_1_14))))));
  }
 } else {
  var_1_11 = last_1_var_1_15;
 }
 signed long int stepLocal_0 = last_1_var_1_11;
 if ((last_1_var_1_11 / ((((-16) < 0 ) ? -(-16) : (-16)))) >= stepLocal_0) {
  var_1_1 = var_1_4;
 }
 signed long int stepLocal_2 = var_1_11;
 unsigned char stepLocal_1 = var_1_1;
 if (var_1_1) {
  if (var_1_11 >= stepLocal_2) {
   if (stepLocal_1 || (var_1_11 < var_1_11)) {
    var_1_5 = var_1_7;
   }
  } else {
   var_1_5 = var_1_7;
  }
 }
 if ((- var_1_11) > (var_1_11 & var_1_13)) {
  if (var_1_11 <= 128) {
   if (var_1_1) {
    var_1_15 = var_1_14;
   } else {
    var_1_15 = var_1_14;
   }
  } else {
   var_1_15 = var_1_14;
  }
 } else {
  var_1_15 = var_1_13;
 }
 if (((((var_1_5) < (last_1_var_1_16)) ? (var_1_5) : (last_1_var_1_16))) >= var_1_7) {
  var_1_16 = (var_1_17 + (var_1_18 + 16.75));
 } else {
  var_1_16 = var_1_17;
 }
 if (10.55f < var_1_16) {
  if (var_1_16 > (var_1_7 * var_1_16)) {
   var_1_8 = ((((var_1_7) > (var_1_10)) ? (var_1_7) : (var_1_10)));
  }
 } else {
  if (var_1_16 > var_1_7) {
   var_1_8 = var_1_10;
  } else {
   var_1_8 = var_1_7;
  }
 }
}
void updateVariables() {
 var_1_4 = __VERIFIER_nondet_uchar();
 assume_abort_if_not(var_1_4 >= 1);
 assume_abort_if_not(var_1_4 <= 1);
 var_1_7 = __VERIFIER_nondet_double();
 assume_abort_if_not((var_1_7 >= -922337.2036854765600e+13F && var_1_7 <= -1.0e-20F) || (var_1_7 <= 9223372.036854765600e+12F && var_1_7 >= 1.0e-20F ));
 var_1_10 = __VERIFIER_nondet_double();
 assume_abort_if_not((var_1_10 >= -922337.2036854765600e+13F && var_1_10 <= -1.0e-20F) || (var_1_10 <= 9223372.036854765600e+12F && var_1_10 >= 1.0e-20F ));
 var_1_13 = __VERIFIER_nondet_long();
 assume_abort_if_not(var_1_13 >= -1);
 assume_abort_if_not(var_1_13 <= 2147483646);
 var_1_14 = __VERIFIER_nondet_long();
 assume_abort_if_not(var_1_14 >= -2147483647);
 assume_abort_if_not(var_1_14 <= 2147483646);
 var_1_17 = __VERIFIER_nondet_double();
 assume_abort_if_not((var_1_17 >= -461168.6018427382800e+13F && var_1_17 <= -1.0e-20F) || (var_1_17 <= 4611686.018427382800e+12F && var_1_17 >= 1.0e-20F ));
 var_1_18 = __VERIFIER_nondet_double();
 assume_abort_if_not((var_1_18 >= -230584.3009213691390e+13F && var_1_18 <= -1.0e-20F) || (var_1_18 <= 2305843.009213691390e+12F && var_1_18 >= 1.0e-20F ));
 var_1_20 = __VERIFIER_nondet_double();
 assume_abort_if_not((var_1_20 >= -922337.2036854776000e+13F && var_1_20 <= -1.0e-20F) || (var_1_20 <= 9223372.036854776000e+12F && var_1_20 >= 1.0e-20F ));
 var_1_21 = __VERIFIER_nondet_double();
 assume_abort_if_not((var_1_21 >= 0.0F && var_1_21 <= -1.0e-20F) || (var_1_21 <= 9223372.036854776000e+12F && var_1_21 >= 1.0e-20F ));
 var_1_22 = __VERIFIER_nondet_double();
 assume_abort_if_not((var_1_22 >= -922337.2036854776000e+13F && var_1_22 <= -1.0e-20F) || (var_1_22 <= 9223372.036854776000e+12F && var_1_22 >= 1.0e-20F ));
 var_1_23 = __VERIFIER_nondet_double();
 assume_abort_if_not((var_1_23 >= -922337.2036854776000e+13F && var_1_23 <= -1.0e-20F) || (var_1_23 <= 9223372.036854776000e+12F && var_1_23 >= 1.0e-20F ));
 var_1_26 = __VERIFIER_nondet_double();
 assume_abort_if_not((var_1_26 >= -922337.2036854776000e+13F && var_1_26 <= -1.0e-20F) || (var_1_26 <= 9223372.036854776000e+12F && var_1_26 >= 1.0e-20F ));
 assume_abort_if_not(var_1_26 != 0.0F);
 var_1_27 = __VERIFIER_nondet_uchar();
 assume_abort_if_not(var_1_27 >= 0);
 assume_abort_if_not(var_1_27 <= 255);
 var_1_28 = __VERIFIER_nondet_long();
 assume_abort_if_not(var_1_28 >= -2147483648);
 assume_abort_if_not(var_1_28 <= 2147483647);
 var_1_29 = __VERIFIER_nondet_char();
 assume_abort_if_not(var_1_29 >= 0);
 assume_abort_if_not(var_1_29 <= 126);
 var_1_30 = __VERIFIER_nondet_char();
 assume_abort_if_not(var_1_30 >= 0);
 assume_abort_if_not(var_1_30 <= 126);
 var_1_31 = __VERIFIER_nondet_char();
 assume_abort_if_not(var_1_31 >= -126);
 assume_abort_if_not(var_1_31 <= 126);
 var_1_33 = __VERIFIER_nondet_uchar();
 assume_abort_if_not(var_1_33 >= 0);
 assume_abort_if_not(var_1_33 <= 1);
 var_1_34 = __VERIFIER_nondet_uchar();
 assume_abort_if_not(var_1_34 >= 0);
 assume_abort_if_not(var_1_34 <= 1);
 var_1_35 = __VERIFIER_nondet_uchar();
 assume_abort_if_not(var_1_35 >= 0);
 assume_abort_if_not(var_1_35 <= 1);
 var_1_36 = __VERIFIER_nondet_uchar();
 assume_abort_if_not(var_1_36 >= 1);
 assume_abort_if_not(var_1_36 <= 1);
 var_1_38 = __VERIFIER_nondet_double();
 assume_abort_if_not((var_1_38 >= 4611686.018427382800e+12F && var_1_38 <= -1.0e-20F) || (var_1_38 <= 9223372.036854765600e+12F && var_1_38 >= 1.0e-20F ));
 var_1_39 = __VERIFIER_nondet_double();
 assume_abort_if_not((var_1_39 >= 4611686.018427382800e+12F && var_1_39 <= -1.0e-20F) || (var_1_39 <= 9223372.036854765600e+12F && var_1_39 >= 1.0e-20F ));
 var_1_40 = __VERIFIER_nondet_double();
 assume_abort_if_not((var_1_40 >= 0.0F && var_1_40 <= -1.0e-20F) || (var_1_40 <= 4611686.018427382800e+12F && var_1_40 >= 1.0e-20F ));
 var_1_43 = __VERIFIER_nondet_uchar();
 assume_abort_if_not(var_1_43 >= 1);
 assume_abort_if_not(var_1_43 <= 1);
 var_1_46 = __VERIFIER_nondet_ushort();
 assume_abort_if_not(var_1_46 >= 0);
 assume_abort_if_not(var_1_46 <= 65534);
 var_1_47 = __VERIFIER_nondet_ushort();
 assume_abort_if_not(var_1_47 >= 0);
 assume_abort_if_not(var_1_47 <= 32767);
 var_1_48 = __VERIFIER_nondet_ushort();
 assume_abort_if_not(var_1_48 >= 0);
 assume_abort_if_not(var_1_48 <= 32767);
}
void updateLastVariables() {
 last_1_var_1_1 = var_1_1;
 last_1_var_1_11 = var_1_11;
 last_1_var_1_15 = var_1_15;
 last_1_var_1_16 = var_1_16;
}
int property() {
 return (((((((last_1_var_1_11 / ((((-16) < 0 ) ? -(-16) : (-16)))) >= last_1_var_1_11) ? (var_1_1 == ((unsigned char) var_1_4)) : 1) && (var_1_1 ? ((var_1_11 >= var_1_11) ? ((var_1_1 || (var_1_11 < var_1_11)) ? (var_1_5 == ((double) var_1_7)) : 1) : (var_1_5 == ((double) var_1_7))) : 1)) && ((10.55f < var_1_16) ? ((var_1_16 > (var_1_7 * var_1_16)) ? (var_1_8 == ((double) ((((var_1_7) > (var_1_10)) ? (var_1_7) : (var_1_10))))) : 1) : ((var_1_16 > var_1_7) ? (var_1_8 == ((double) var_1_10)) : (var_1_8 == ((double) var_1_7))))) && (last_1_var_1_1 ? ((((((last_1_var_1_16) > (49.75)) ? (last_1_var_1_16) : (49.75))) > last_1_var_1_16) ? (var_1_11 == ((signed long int) ((((last_1_var_1_15) < ((((((var_1_13 - 5)) > (var_1_14)) ? ((var_1_13 - 5)) : (var_1_14))))) ? (last_1_var_1_15) : ((((((var_1_13 - 5)) > (var_1_14)) ? ((var_1_13 - 5)) : (var_1_14)))))))) : 1) : (var_1_11 == ((signed long int) last_1_var_1_15)))) && (((- var_1_11) > (var_1_11 & var_1_13)) ? ((var_1_11 <= 128) ? (var_1_1 ? (var_1_15 == ((signed long int) var_1_14)) : (var_1_15 == ((signed long int) var_1_14))) : (var_1_15 == ((signed long int) var_1_14))) : (var_1_15 == ((signed long int) var_1_13)))) && ((((((var_1_5) < (last_1_var_1_16)) ? (var_1_5) : (last_1_var_1_16))) >= var_1_7) ? (var_1_16 == ((double) (var_1_17 + (var_1_18 + 16.75)))) : (var_1_16 == ((double) var_1_17)))
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