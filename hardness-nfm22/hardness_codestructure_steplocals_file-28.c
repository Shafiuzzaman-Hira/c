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
void reach_error() { __assert_fail("0", "Req1_Prop1_Batch28stepLocals.c", 13, "reach_error"); }
void __VERIFIER_assert(int cond) { if(!(cond)) { ERROR: {reach_error();abort();} } return; }
void assume_abort_if_not(int cond) { if(!cond) { abort(); } }



#define max(a,b) (((a) > (b)) ? (a) : (b))
#define min(a,b) (((a) < (b)) ? (a) : (b))
#define abs(a) (((a) < 0 ) ? -(a) : (a))





// Function prototypes


// Internal control logic variables
unsigned char isInitial = 0;

// Signal variables
unsigned short int var_1_1 = 4;
unsigned char var_1_2 = 8;
unsigned char var_1_3 = 50;
unsigned short int var_1_4 = 1;
unsigned short int var_1_5 = 16;
unsigned char var_1_6 = 4;
unsigned char var_1_7 = 2;
unsigned char var_1_8 = 128;
unsigned char var_1_9 = 0;
unsigned char var_1_10 = 100;
signed short int var_1_11 = 10;
unsigned char var_1_12 = 1;
unsigned char var_1_13 = 1;
unsigned char var_1_14 = 0;
signed long int var_1_15 = 128;
unsigned char var_1_16 = 128;
unsigned char var_1_17 = 5;
double var_1_18 = 3.6;
double var_1_19 = 31.45;
float var_1_20 = 50.25;
float var_1_21 = 9.8;
float var_1_22 = 4.65;
float var_1_23 = 99.65;
unsigned char var_1_24 = 32;

// Calibration values

// Last'ed variables

// Additional functions


void initially(void) {
}



void step(void) {
	// From: Req1Batch28stepLocals
	unsigned char stepLocal_0 = var_1_3;
	if (var_1_2 <= stepLocal_0) {
		var_1_1 = (max ((min (var_1_2 , (max (var_1_3 , var_1_4)))) , var_1_5));
	}


	// From: Req2Batch28stepLocals
	signed long int stepLocal_1 = 5;
	if (var_1_1 < stepLocal_1) {
		var_1_6 = (max ((min ((min (var_1_7 , var_1_8)) , var_1_9)) , var_1_10));
	} else {
		var_1_6 = var_1_10;
	}


	// From: Req3Batch28stepLocals
	unsigned char stepLocal_2 = var_1_14;
	if (var_1_12) {
		if (var_1_13) {
			if ((var_1_4 > (~ var_1_10)) && stepLocal_2) {
				var_1_11 = (max (var_1_8 , (var_1_10 + var_1_6)));
			} else {
				var_1_11 = var_1_3;
			}
		} else {
			var_1_11 = var_1_8;
		}
	} else {
		var_1_11 = var_1_2;
	}


	// From: Req4Batch28stepLocals
	unsigned char stepLocal_3 = var_1_2;
	if (stepLocal_3 <= ((max (128 , var_1_16)) - var_1_17)) {
		var_1_15 = (max ((var_1_5 - var_1_2) , (min (var_1_8 , var_1_7))));
	} else {
		var_1_15 = var_1_6;
	}


	// From: Req5Batch28stepLocals
	signed long int stepLocal_4 = (200 << var_1_1) * (var_1_17 * var_1_7);
	if (stepLocal_4 < var_1_11) {
		var_1_18 = var_1_19;
	}


	// From: Req6Batch28stepLocals
	unsigned char stepLocal_5 = var_1_24;
	if (var_1_13) {
		if (var_1_14) {
			if (var_1_12) {
				var_1_20 = (var_1_21 + (max (var_1_22 , var_1_23)));
			}
		} else {
			if (stepLocal_5 <= 0) {
				var_1_20 = var_1_19;
			} else {
				var_1_20 = var_1_22;
			}
		}
	} else {
		var_1_20 = var_1_23;
	}
}



void updateVariables() {
	var_1_2 = __VERIFIER_nondet_uchar();
	assume_abort_if_not(var_1_2 >= 0);
	assume_abort_if_not(var_1_2 <= 255);
	var_1_3 = __VERIFIER_nondet_uchar();
	assume_abort_if_not(var_1_3 >= 0);
	assume_abort_if_not(var_1_3 <= 255);
	var_1_4 = __VERIFIER_nondet_ushort();
	assume_abort_if_not(var_1_4 >= 0);
	assume_abort_if_not(var_1_4 <= 65534);
	var_1_5 = __VERIFIER_nondet_ushort();
	assume_abort_if_not(var_1_5 >= 0);
	assume_abort_if_not(var_1_5 <= 65534);
	var_1_7 = __VERIFIER_nondet_uchar();
	assume_abort_if_not(var_1_7 >= 0);
	assume_abort_if_not(var_1_7 <= 254);
	var_1_8 = __VERIFIER_nondet_uchar();
	assume_abort_if_not(var_1_8 >= 0);
	assume_abort_if_not(var_1_8 <= 254);
	var_1_9 = __VERIFIER_nondet_uchar();
	assume_abort_if_not(var_1_9 >= 0);
	assume_abort_if_not(var_1_9 <= 254);
	var_1_10 = __VERIFIER_nondet_uchar();
	assume_abort_if_not(var_1_10 >= 0);
	assume_abort_if_not(var_1_10 <= 254);
	var_1_12 = __VERIFIER_nondet_uchar();
	assume_abort_if_not(var_1_12 >= 0);
	assume_abort_if_not(var_1_12 <= 1);
	var_1_13 = __VERIFIER_nondet_uchar();
	assume_abort_if_not(var_1_13 >= 0);
	assume_abort_if_not(var_1_13 <= 1);
	var_1_14 = __VERIFIER_nondet_uchar();
	assume_abort_if_not(var_1_14 >= 0);
	assume_abort_if_not(var_1_14 <= 1);
	var_1_16 = __VERIFIER_nondet_uchar();
	assume_abort_if_not(var_1_16 >= 127);
	assume_abort_if_not(var_1_16 <= 255);
	var_1_17 = __VERIFIER_nondet_uchar();
	assume_abort_if_not(var_1_17 >= 0);
	assume_abort_if_not(var_1_17 <= 127);
	var_1_19 = __VERIFIER_nondet_double();
	assume_abort_if_not((var_1_19 >= -922337.2036854765600e+13F && var_1_19 <= -1.0e-20F) || (var_1_19 <= 9223372.036854765600e+12F && var_1_19 >= 1.0e-20F ));
	var_1_21 = __VERIFIER_nondet_float();
	assume_abort_if_not((var_1_21 >= -461168.6018427382800e+13F && var_1_21 <= -1.0e-20F) || (var_1_21 <= 4611686.018427382800e+12F && var_1_21 >= 1.0e-20F ));
	var_1_22 = __VERIFIER_nondet_float();
	assume_abort_if_not((var_1_22 >= -461168.6018427382800e+13F && var_1_22 <= -1.0e-20F) || (var_1_22 <= 4611686.018427382800e+12F && var_1_22 >= 1.0e-20F ));
	var_1_23 = __VERIFIER_nondet_float();
	assume_abort_if_not((var_1_23 >= -461168.6018427382800e+13F && var_1_23 <= -1.0e-20F) || (var_1_23 <= 4611686.018427382800e+12F && var_1_23 >= 1.0e-20F ));
	var_1_24 = __VERIFIER_nondet_uchar();
	assume_abort_if_not(var_1_24 >= 0);
	assume_abort_if_not(var_1_24 <= 255);
}



void updateLastVariables() {
}

int property() {
	return ((((((var_1_2 <= var_1_3) ? (var_1_1 == ((unsigned short int) (max ((min (var_1_2 , (max (var_1_3 , var_1_4)))) , var_1_5)))) : 1) && ((var_1_1 < 5) ? (var_1_6 == ((unsigned char) (max ((min ((min (var_1_7 , var_1_8)) , var_1_9)) , var_1_10)))) : (var_1_6 == ((unsigned char) var_1_10)))) && (var_1_12 ? (var_1_13 ? (((var_1_4 > (~ var_1_10)) && var_1_14) ? (var_1_11 == ((signed short int) (max (var_1_8 , (var_1_10 + var_1_6))))) : (var_1_11 == ((signed short int) var_1_3))) : (var_1_11 == ((signed short int) var_1_8))) : (var_1_11 == ((signed short int) var_1_2)))) && ((var_1_2 <= ((max (128 , var_1_16)) - var_1_17)) ? (var_1_15 == ((signed long int) (max ((var_1_5 - var_1_2) , (min (var_1_8 , var_1_7)))))) : (var_1_15 == ((signed long int) var_1_6)))) && ((((200 << var_1_1) * (var_1_17 * var_1_7)) < var_1_11) ? (var_1_18 == ((double) var_1_19)) : 1)) && (var_1_13 ? (var_1_14 ? (var_1_12 ? (var_1_20 == ((float) (var_1_21 + (max (var_1_22 , var_1_23))))) : 1) : ((var_1_24 <= 0) ? (var_1_20 == ((float) var_1_19)) : (var_1_20 == ((float) var_1_22)))) : (var_1_20 == ((float) var_1_23)))
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