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
void reach_error() { __assert_fail("0", "Req1_Prop1_Batch97normal.c", 13, "reach_error"); }
void __VERIFIER_assert(int cond) { if(!(cond)) { ERROR: {reach_error();abort();} } return; }
void assume_abort_if_not(int cond) { if(!cond) { abort(); } }



#define max(a,b) (((a) > (b)) ? (a) : (b))
#define min(a,b) (((a) < (b)) ? (a) : (b))
#define abs(a) (((a) < 0 ) ? -(a) : (a))





// Function prototypes


// Internal control logic variables
unsigned char isInitial = 0;

// Signal variables
signed short int var_1_1 = 16;
signed short int var_1_7 = 32;
signed short int var_1_8 = 20113;
signed short int var_1_9 = 100;
signed char var_1_10 = 100;
signed char var_1_11 = -1;
signed char var_1_12 = 16;
unsigned char var_1_13 = 1;
unsigned char var_1_15 = 0;
unsigned char var_1_16 = 1;
unsigned short int var_1_18 = 10;
unsigned short int var_1_19 = 256;
float var_1_20 = 32.5;
float var_1_21 = 127.4;
signed short int var_1_22 = 128;

// Calibration values

// Last'ed variables

// Additional functions


void initially(void) {
}



void step(void) {
	// From: Req4Batch97normal
	var_1_18 = var_1_19;


	// From: Req5Batch97normal
	var_1_20 = var_1_21;


	// From: Req6Batch97normal
	var_1_22 = var_1_12;


	// From: Req3Batch97normal
	if (127.5f > var_1_20) {
		var_1_13 = (var_1_15 && var_1_16);
	} else {
		var_1_13 = ((var_1_20 >= var_1_20) || var_1_15);
	}


	// From: Req2Batch97normal
	if (var_1_18 == var_1_7) {
		var_1_10 = (var_1_11 + (var_1_12 + -25));
	} else {
		if (((32 * -25) | var_1_22) >= var_1_11) {
			if (var_1_13) {
				var_1_10 = var_1_12;
			}
		}
	}


	// From: Req1Batch97normal
	if (var_1_13) {
		if (var_1_10 > var_1_22) {
			if (var_1_13) {
				var_1_1 = (var_1_7 - (var_1_8 - var_1_9));
			} else {
				var_1_1 = var_1_18;
			}
		} else {
			var_1_1 = 8;
		}
	}
}



void updateVariables() {
	var_1_7 = __VERIFIER_nondet_short();
	assume_abort_if_not(var_1_7 >= -1);
	assume_abort_if_not(var_1_7 <= 32766);
	var_1_8 = __VERIFIER_nondet_short();
	assume_abort_if_not(var_1_8 >= 16383);
	assume_abort_if_not(var_1_8 <= 32766);
	var_1_9 = __VERIFIER_nondet_short();
	assume_abort_if_not(var_1_9 >= 0);
	assume_abort_if_not(var_1_9 <= 16383);
	var_1_11 = __VERIFIER_nondet_char();
	assume_abort_if_not(var_1_11 >= -63);
	assume_abort_if_not(var_1_11 <= 63);
	var_1_12 = __VERIFIER_nondet_char();
	assume_abort_if_not(var_1_12 >= -31);
	assume_abort_if_not(var_1_12 <= 32);
	var_1_15 = __VERIFIER_nondet_uchar();
	assume_abort_if_not(var_1_15 >= 1);
	assume_abort_if_not(var_1_15 <= 1);
	var_1_16 = __VERIFIER_nondet_uchar();
	assume_abort_if_not(var_1_16 >= 1);
	assume_abort_if_not(var_1_16 <= 1);
	var_1_19 = __VERIFIER_nondet_ushort();
	assume_abort_if_not(var_1_19 >= 0);
	assume_abort_if_not(var_1_19 <= 65534);
	var_1_21 = __VERIFIER_nondet_float();
	assume_abort_if_not((var_1_21 >= -922337.2036854765600e+13F && var_1_21 <= -1.0e-20F) || (var_1_21 <= 9223372.036854765600e+12F && var_1_21 >= 1.0e-20F ));
}



void updateLastVariables() {
}

int property() {
	return (((((var_1_13 ? ((var_1_10 > var_1_22) ? (var_1_13 ? (var_1_1 == ((signed short int) (var_1_7 - (var_1_8 - var_1_9)))) : (var_1_1 == ((signed short int) var_1_18))) : (var_1_1 == ((signed short int) 8))) : 1) && ((var_1_18 == var_1_7) ? (var_1_10 == ((signed char) (var_1_11 + (var_1_12 + -25)))) : ((((32 * -25) | var_1_22) >= var_1_11) ? (var_1_13 ? (var_1_10 == ((signed char) var_1_12)) : 1) : 1))) && ((127.5f > var_1_20) ? (var_1_13 == ((unsigned char) (var_1_15 && var_1_16))) : (var_1_13 == ((unsigned char) ((var_1_20 >= var_1_20) || var_1_15))))) && (var_1_18 == ((unsigned short int) var_1_19))) && (var_1_20 == ((float) var_1_21))) && (var_1_22 == ((signed short int) var_1_12))
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
