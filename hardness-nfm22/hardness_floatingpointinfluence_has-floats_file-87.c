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
void reach_error() { __assert_fail("0", "Req1_Prop1_Batch87has_floats.c", 13, "reach_error"); }
void __VERIFIER_assert(int cond) { if(!(cond)) { ERROR: {reach_error();abort();} } return; }
void assume_abort_if_not(int cond) { if(!cond) { abort(); } }



#define max(a,b) (((a) > (b)) ? (a) : (b))
#define min(a,b) (((a) < (b)) ? (a) : (b))
#define abs(a) (((a) < 0 ) ? -(a) : (a))





// Function prototypes


// Internal control logic variables
unsigned char isInitial = 0;

// Signal variables
unsigned long int var_1_1 = 1;
unsigned long int var_1_3 = 3164414017;
unsigned long int var_1_4 = 128;
signed char var_1_5 = -128;
signed char var_1_6 = 10;
signed char var_1_7 = 0;
signed char var_1_8 = 8;
signed char var_1_9 = 16;
signed long int var_1_10 = 10;
signed long int var_1_12 = 8;
unsigned char var_1_13 = 1;
unsigned char var_1_14 = 0;
unsigned long int var_1_15 = 64;

// Calibration values

// Last'ed variables
signed long int last_1_var_1_10 = 10;

// Additional functions


void initially(void) {
}



void step(void) {
	// From: Req4Batch87has_floats
	var_1_12 = var_1_8;


	// From: Req5Batch87has_floats
	var_1_13 = var_1_14;


	// From: Req6Batch87has_floats
	var_1_15 = var_1_9;


	// From: Req1Batch87has_floats
	if (var_1_13) {
		var_1_1 = (abs (var_1_3 - var_1_4));
	}


	// From: Req2Batch87has_floats
	unsigned long int stepLocal_1 = var_1_4;
	signed long int stepLocal_0 = -8;
	if (stepLocal_0 < var_1_4) {
		if (stepLocal_1 != var_1_12) {
			var_1_5 = ((abs (var_1_6)) - ((min (var_1_7 , var_1_8)) + var_1_9));
		} else {
			var_1_5 = -8;
		}
	} else {
		var_1_5 = var_1_8;
	}


	// From: Req3Batch87has_floats
	if ((last_1_var_1_10 * var_1_3) <= var_1_4) {
		if ((var_1_9 - (abs (-1))) <= (var_1_15 * var_1_8)) {
			var_1_10 = (var_1_8 - var_1_9);
		} else {
			var_1_10 = var_1_7;
		}
	} else {
		var_1_10 = var_1_7;
	}
}



void updateVariables() {
	var_1_3 = __VERIFIER_nondet_ulong();
	assume_abort_if_not(var_1_3 >= 2147483647);
	assume_abort_if_not(var_1_3 <= 4294967294);
	var_1_4 = __VERIFIER_nondet_ulong();
	assume_abort_if_not(var_1_4 >= 0);
	assume_abort_if_not(var_1_4 <= 2147483647);
	var_1_6 = __VERIFIER_nondet_char();
	assume_abort_if_not(var_1_6 >= -126);
	assume_abort_if_not(var_1_6 <= 126);
	var_1_7 = __VERIFIER_nondet_char();
	assume_abort_if_not(var_1_7 >= 0);
	assume_abort_if_not(var_1_7 <= 63);
	var_1_8 = __VERIFIER_nondet_char();
	assume_abort_if_not(var_1_8 >= 0);
	assume_abort_if_not(var_1_8 <= 63);
	var_1_9 = __VERIFIER_nondet_char();
	assume_abort_if_not(var_1_9 >= 0);
	assume_abort_if_not(var_1_9 <= 63);
	var_1_14 = __VERIFIER_nondet_uchar();
	assume_abort_if_not(var_1_14 >= 1);
	assume_abort_if_not(var_1_14 <= 1);
}



void updateLastVariables() {
	last_1_var_1_10 = var_1_10;
}

int property() {
	return (((((var_1_13 ? (var_1_1 == ((unsigned long int) (abs (var_1_3 - var_1_4)))) : 1) && ((-8 < var_1_4) ? ((var_1_4 != var_1_12) ? (var_1_5 == ((signed char) ((abs (var_1_6)) - ((min (var_1_7 , var_1_8)) + var_1_9)))) : (var_1_5 == ((signed char) -8))) : (var_1_5 == ((signed char) var_1_8)))) && (((last_1_var_1_10 * var_1_3) <= var_1_4) ? (((var_1_9 - (abs (-1))) <= (var_1_15 * var_1_8)) ? (var_1_10 == ((signed long int) (var_1_8 - var_1_9))) : (var_1_10 == ((signed long int) var_1_7))) : (var_1_10 == ((signed long int) var_1_7)))) && (var_1_12 == ((signed long int) var_1_8))) && (var_1_13 == ((unsigned char) var_1_14))) && (var_1_15 == ((unsigned long int) var_1_9))
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