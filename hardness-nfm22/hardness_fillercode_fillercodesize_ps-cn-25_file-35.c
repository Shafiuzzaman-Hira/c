// This file is part of the SV-Benchmarks collection of verification tasks:
// https://gitlab.com/sosy-lab/benchmarking/sv-benchmarks
//
// SPDX-FileCopyrightText: 2022 Jana (Philipp) Berger
//
// SPDX-License-Identifier: GPL-3.0-or-later

// Prototype declarations of the functions used to communicate with the model checkers
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
void reach_error() { __assert_fail("0", "Req1_Prop1_Batch35PS_CN_25.c", 13, "reach_error"); }
void __VERIFIER_assert(int cond) { if(!(cond)) { ERROR: {reach_error();abort();} } return; }
void assume_abort_if_not(int cond) { if(!cond) { abort(); } }



#define max(a,b) (((a) > (b)) ? (a) : (b))
#define min(a,b) (((a) < (b)) ? (a) : (b))
#define abs(a) (((a) < 0 ) ? -(a) : (a))





// Function prototypes


// Internal control logic variables
unsigned char isInitial = 0;

// Signal variables
unsigned char var_1_1 = 1;
unsigned char var_1_3 = 1;
unsigned char var_1_4 = 0;
unsigned char var_1_5 = 0;
unsigned short int var_1_6 = 25;
double var_1_9 = 999.625;
unsigned short int var_1_11 = 5;
signed short int var_1_12 = 2;
signed long int var_1_13 = -256;
double var_1_14 = 127.75;
double var_1_15 = 9.75;
float var_1_16 = 32.8;
float var_1_17 = 32.5;
float var_1_18 = 1.75;
float var_1_19 = 1000000000000000.4;
float var_1_20 = 0.875;
unsigned char var_1_21 = 0;
unsigned char var_1_22 = 0;
signed short int var_1_23 = 64;
signed short int var_1_24 = 25;
signed short int var_1_25 = 0;
float var_1_26 = 128.2;
float var_1_27 = 16.625;
signed long int var_1_28 = -100000;
signed long int var_1_29 = -128;
signed char var_1_30 = -25;
unsigned char var_1_31 = 0;
unsigned char var_1_32 = 0;
unsigned short int var_1_33 = 128;
signed long int var_1_34 = 128;
unsigned short int var_1_35 = 4;
unsigned short int var_1_36 = 4;
double var_1_37 = 99.75;
unsigned char var_1_38 = 0;
signed long int var_1_39 = 10;

// Calibration values

// Last'ed variables
signed short int last_1_var_1_12 = 2;
signed long int last_1_var_1_13 = -256;
double last_1_var_1_14 = 127.75;
unsigned char last_1_var_1_21 = 0;

// Additional functions


void initially(void) {
}



void step(void) {
	// From: CodeObject1
	var_1_26 = var_1_27;


	// From: CodeObject2
	var_1_28 = var_1_29;


	// From: CodeObject3
	var_1_30 = 0;


	// From: CodeObject4
	if (var_1_28 < var_1_29) {
		var_1_31 = (! var_1_32);
	}


	// From: CodeObject5
	if ((var_1_28 ^ var_1_29) >= var_1_34) {
		if ((var_1_34 * var_1_28) <= var_1_30) {
			var_1_33 = (min (var_1_35 , var_1_36));
		} else {
			var_1_33 = var_1_36;
		}
	}


	// From: CodeObject6
	if (var_1_31 || var_1_32) {
		var_1_37 = (abs (var_1_27));
	}


	// From: CodeObject7
	if (var_1_34 <= (var_1_29 % var_1_39)) {
		var_1_38 = (! var_1_32);
	}


	// From: Req1Batch35PS_CN_25
	if (last_1_var_1_21) {
		var_1_1 = ((! var_1_3) || var_1_4);
	} else {
		var_1_1 = (var_1_3 && var_1_5);
	}


	// From: Req8Batch35PS_CN_25
	if (var_1_18 > var_1_9) {
		var_1_23 = (max ((var_1_24 - var_1_25) , last_1_var_1_13));
	} else {
		var_1_23 = (last_1_var_1_13 + 1);
	}


	// From: Req2Batch35PS_CN_25
	signed long int stepLocal_0 = last_1_var_1_12;
	if (last_1_var_1_12 >= stepLocal_0) {
		if ((var_1_9 - 1.00000000000025E12) >= last_1_var_1_14) {
			var_1_6 = 200;
		} else {
			var_1_6 = var_1_11;
		}
	} else {
		var_1_6 = var_1_11;
	}


	// From: Req3Batch35PS_CN_25
	unsigned short int stepLocal_1 = var_1_6;
	if (var_1_11 > stepLocal_1) {
		var_1_12 = 32;
	}


	// From: Req5Batch35PS_CN_25
	if ((var_1_12 + var_1_23) < ((var_1_11 >> var_1_6) * var_1_12)) {
		var_1_14 = var_1_15;
	} else {
		var_1_14 = var_1_15;
	}


	// From: Req6Batch35PS_CN_25
	var_1_16 = (abs ((var_1_17 + var_1_18) + (min (var_1_19 , var_1_20))));


	// From: Req7Batch35PS_CN_25
	unsigned short int stepLocal_3 = var_1_11;
	if (stepLocal_3 == var_1_6) {
		var_1_21 = ((var_1_5 || var_1_3) && (var_1_1 || var_1_22));
	}


	// From: Req4Batch35PS_CN_25
	unsigned short int stepLocal_2 = var_1_6;
	if (stepLocal_2 == var_1_12) {
		if (! var_1_3) {
			var_1_13 = ((last_1_var_1_13 + var_1_6) + (var_1_11 - var_1_23));
		}
	}
}



void updateVariables() {
	var_1_3 = __VERIFIER_nondet_uchar();
	assume_abort_if_not(var_1_3 >= 1);
	assume_abort_if_not(var_1_3 <= 1);
	var_1_4 = __VERIFIER_nondet_uchar();
	assume_abort_if_not(var_1_4 >= 0);
	assume_abort_if_not(var_1_4 <= 0);
	var_1_5 = __VERIFIER_nondet_uchar();
	assume_abort_if_not(var_1_5 >= 1);
	assume_abort_if_not(var_1_5 <= 1);
	var_1_9 = __VERIFIER_nondet_double();
	assume_abort_if_not((var_1_9 >= 0.0F && var_1_9 <= -1.0e-20F) || (var_1_9 <= 9223372.036854776000e+12F && var_1_9 >= 1.0e-20F ));
	var_1_11 = __VERIFIER_nondet_ushort();
	assume_abort_if_not(var_1_11 >= 0);
	assume_abort_if_not(var_1_11 <= 65534);
	var_1_15 = __VERIFIER_nondet_double();
	assume_abort_if_not((var_1_15 >= -922337.2036854765600e+13F && var_1_15 <= -1.0e-20F) || (var_1_15 <= 9223372.036854765600e+12F && var_1_15 >= 1.0e-20F ));
	var_1_17 = __VERIFIER_nondet_float();
	assume_abort_if_not((var_1_17 >= -230584.3009213691390e+13F && var_1_17 <= -1.0e-20F) || (var_1_17 <= 2305843.009213691390e+12F && var_1_17 >= 1.0e-20F ));
	var_1_18 = __VERIFIER_nondet_float();
	assume_abort_if_not((var_1_18 >= -230584.3009213691390e+13F && var_1_18 <= -1.0e-20F) || (var_1_18 <= 2305843.009213691390e+12F && var_1_18 >= 1.0e-20F ));
	var_1_19 = __VERIFIER_nondet_float();
	assume_abort_if_not((var_1_19 >= -461168.6018427382800e+13F && var_1_19 <= -1.0e-20F) || (var_1_19 <= 4611686.018427382800e+12F && var_1_19 >= 1.0e-20F ));
	var_1_20 = __VERIFIER_nondet_float();
	assume_abort_if_not((var_1_20 >= -461168.6018427382800e+13F && var_1_20 <= -1.0e-20F) || (var_1_20 <= 4611686.018427382800e+12F && var_1_20 >= 1.0e-20F ));
	var_1_22 = __VERIFIER_nondet_uchar();
	assume_abort_if_not(var_1_22 >= 1);
	assume_abort_if_not(var_1_22 <= 1);
	var_1_24 = __VERIFIER_nondet_short();
	assume_abort_if_not(var_1_24 >= -1);
	assume_abort_if_not(var_1_24 <= 32766);
	var_1_25 = __VERIFIER_nondet_short();
	assume_abort_if_not(var_1_25 >= 0);
	assume_abort_if_not(var_1_25 <= 32766);
	var_1_27 = __VERIFIER_nondet_float();
	assume_abort_if_not((var_1_27 >= -922337.2036854765600e+13F && var_1_27 <= -1.0e-20F) || (var_1_27 <= 9223372.036854765600e+12F && var_1_27 >= 1.0e-20F ));
	var_1_29 = __VERIFIER_nondet_long();
	assume_abort_if_not(var_1_29 >= -2147483647);
	assume_abort_if_not(var_1_29 <= 2147483646);
	var_1_32 = __VERIFIER_nondet_uchar();
	assume_abort_if_not(var_1_32 >= 1);
	assume_abort_if_not(var_1_32 <= 1);
	var_1_34 = __VERIFIER_nondet_long();
	assume_abort_if_not(var_1_34 >= -2147483648);
	assume_abort_if_not(var_1_34 <= 2147483647);
	var_1_35 = __VERIFIER_nondet_ushort();
	assume_abort_if_not(var_1_35 >= 0);
	assume_abort_if_not(var_1_35 <= 65534);
	var_1_36 = __VERIFIER_nondet_ushort();
	assume_abort_if_not(var_1_36 >= 0);
	assume_abort_if_not(var_1_36 <= 65534);
	var_1_39 = __VERIFIER_nondet_long();
	assume_abort_if_not(var_1_39 >= -2147483648);
	assume_abort_if_not(var_1_39 <= 2147483647);
	assume_abort_if_not(var_1_39 != 0);
}



void updateLastVariables() {
	last_1_var_1_12 = var_1_12;
	last_1_var_1_13 = var_1_13;
	last_1_var_1_14 = var_1_14;
	last_1_var_1_21 = var_1_21;
}

int property() {
	return (((((((last_1_var_1_21 ? (var_1_1 == ((unsigned char) ((! var_1_3) || var_1_4))) : (var_1_1 == ((unsigned char) (var_1_3 && var_1_5)))) && ((last_1_var_1_12 >= last_1_var_1_12) ? (((var_1_9 - 1.00000000000025E12) >= last_1_var_1_14) ? (var_1_6 == ((unsigned short int) 200)) : (var_1_6 == ((unsigned short int) var_1_11))) : (var_1_6 == ((unsigned short int) var_1_11)))) && ((var_1_11 > var_1_6) ? (var_1_12 == ((signed short int) 32)) : 1)) && ((var_1_6 == var_1_12) ? ((! var_1_3) ? (var_1_13 == ((signed long int) ((last_1_var_1_13 + var_1_6) + (var_1_11 - var_1_23)))) : 1) : 1)) && (((var_1_12 + var_1_23) < ((var_1_11 >> var_1_6) * var_1_12)) ? (var_1_14 == ((double) var_1_15)) : (var_1_14 == ((double) var_1_15)))) && (var_1_16 == ((float) (abs ((var_1_17 + var_1_18) + (min (var_1_19 , var_1_20))))))) && ((var_1_11 == var_1_6) ? (var_1_21 == ((unsigned char) ((var_1_5 || var_1_3) && (var_1_1 || var_1_22)))) : 1)) && ((var_1_18 > var_1_9) ? (var_1_23 == ((signed short int) (max ((var_1_24 - var_1_25) , last_1_var_1_13)))) : (var_1_23 == ((signed short int) (last_1_var_1_13 + 1))))
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