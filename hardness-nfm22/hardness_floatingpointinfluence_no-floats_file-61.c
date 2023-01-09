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
void reach_error() { __assert_fail("0", "Req1_Prop1_Batch61no_floats.c", 13, "reach_error"); }
void __VERIFIER_assert(int cond) { if(!(cond)) { ERROR: {reach_error();abort();} } return; }
void assume_abort_if_not(int cond) { if(!cond) { abort(); } }



#define max(a,b) (((a) > (b)) ? (a) : (b))
#define min(a,b) (((a) < (b)) ? (a) : (b))
#define abs(a) (((a) < 0 ) ? -(a) : (a))





// Function prototypes


// Internal control logic variables
unsigned char isInitial = 0;

// Signal variables
unsigned char var_1_1 = 0;
unsigned char var_1_4 = 0;
unsigned char var_1_5 = 0;
unsigned char var_1_6 = 0;
unsigned char var_1_7 = 8;
unsigned char var_1_9 = 128;
unsigned char var_1_10 = 64;
unsigned char var_1_11 = 100;
unsigned char var_1_12 = 5;
unsigned char var_1_13 = 100;
unsigned char var_1_14 = 32;
unsigned char var_1_15 = 64;
unsigned char var_1_16 = 50;
unsigned char var_1_17 = 8;
unsigned char var_1_18 = 0;
signed char var_1_19 = 0;
signed long int var_1_20 = 255;
signed long int var_1_21 = 255;
unsigned short int var_1_22 = 64;
signed long int var_1_23 = 32;

// Calibration values

// Last'ed variables

// Additional functions


void initially(void) {
}



void step(void) {
	// From: Req3Batch61no_floats
	if (var_1_6) {
		var_1_11 = (var_1_10 + (max (var_1_12 , var_1_13)));
	} else {
		var_1_11 = (((64 + var_1_14) + (var_1_15 + var_1_16)) - (var_1_17 + var_1_18));
	}


	// From: Req4Batch61no_floats
	unsigned char stepLocal_0 = var_1_6 || var_1_4;
	if (var_1_5 || stepLocal_0) {
		var_1_19 = var_1_15;
	}


	// From: Req5Batch61no_floats
	var_1_20 = var_1_21;


	// From: Req6Batch61no_floats
	var_1_22 = var_1_18;


	// From: Req7Batch61no_floats
	var_1_23 = 0.010000000000000009;


	// From: Req1Batch61no_floats
	if (var_1_20 < var_1_20) {
		var_1_1 = (var_1_4 || var_1_5);
	} else {
		if (var_1_20 >= var_1_20) {
			var_1_1 = var_1_5;
		} else {
			var_1_1 = var_1_6;
		}
	}


	// From: Req2Batch61no_floats
	if (var_1_23 < (max (var_1_20 , var_1_20))) {
		var_1_7 = (var_1_9 - var_1_10);
	}
}



void updateVariables() {
	var_1_4 = __VERIFIER_nondet_uchar();
	assume_abort_if_not(var_1_4 >= 0);
	assume_abort_if_not(var_1_4 <= 0);
	var_1_5 = __VERIFIER_nondet_uchar();
	assume_abort_if_not(var_1_5 >= 0);
	assume_abort_if_not(var_1_5 <= 0);
	var_1_6 = __VERIFIER_nondet_uchar();
	assume_abort_if_not(var_1_6 >= 1);
	assume_abort_if_not(var_1_6 <= 1);
	var_1_9 = __VERIFIER_nondet_uchar();
	assume_abort_if_not(var_1_9 >= 127);
	assume_abort_if_not(var_1_9 <= 254);
	var_1_10 = __VERIFIER_nondet_uchar();
	assume_abort_if_not(var_1_10 >= 0);
	assume_abort_if_not(var_1_10 <= 127);
	var_1_12 = __VERIFIER_nondet_uchar();
	assume_abort_if_not(var_1_12 >= 0);
	assume_abort_if_not(var_1_12 <= 127);
	var_1_13 = __VERIFIER_nondet_uchar();
	assume_abort_if_not(var_1_13 >= 0);
	assume_abort_if_not(var_1_13 <= 127);
	var_1_14 = __VERIFIER_nondet_uchar();
	assume_abort_if_not(var_1_14 >= 32);
	assume_abort_if_not(var_1_14 <= 63);
	var_1_15 = __VERIFIER_nondet_uchar();
	assume_abort_if_not(var_1_15 >= 32);
	assume_abort_if_not(var_1_15 <= 64);
	var_1_16 = __VERIFIER_nondet_uchar();
	assume_abort_if_not(var_1_16 >= 32);
	assume_abort_if_not(var_1_16 <= 63);
	var_1_17 = __VERIFIER_nondet_uchar();
	assume_abort_if_not(var_1_17 >= 0);
	assume_abort_if_not(var_1_17 <= 64);
	var_1_18 = __VERIFIER_nondet_uchar();
	assume_abort_if_not(var_1_18 >= 0);
	assume_abort_if_not(var_1_18 <= 63);
	var_1_21 = __VERIFIER_nondet_long();
	assume_abort_if_not(var_1_21 >= -2147483648);
	assume_abort_if_not(var_1_21 <= 2147483647);
}



void updateLastVariables() {
}

int property() {
	return (((((((var_1_20 < var_1_20) ? (var_1_1 == ((unsigned char) (var_1_4 || var_1_5))) : ((var_1_20 >= var_1_20) ? (var_1_1 == ((unsigned char) var_1_5)) : (var_1_1 == ((unsigned char) var_1_6)))) && ((var_1_23 < (max (var_1_20 , var_1_20))) ? (var_1_7 == ((unsigned char) (var_1_9 - var_1_10))) : 1)) && (var_1_6 ? (var_1_11 == ((unsigned char) (var_1_10 + (max (var_1_12 , var_1_13))))) : (var_1_11 == ((unsigned char) (((64 + var_1_14) + (var_1_15 + var_1_16)) - (var_1_17 + var_1_18)))))) && ((var_1_5 || (var_1_6 || var_1_4)) ? (var_1_19 == ((signed char) var_1_15)) : 1)) && (var_1_20 == ((signed long int) var_1_21))) && (var_1_22 == ((unsigned short int) var_1_18))) && (var_1_23 == ((signed long int) 0.010000000000000009))
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
