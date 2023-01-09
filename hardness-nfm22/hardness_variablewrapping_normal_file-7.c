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
void reach_error() { __assert_fail("0", "Req1_Prop1_Batch7normal.c", 13, "reach_error"); }
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
float var_1_3 = 8.2;
float var_1_4 = 100000000000.4;
unsigned char var_1_6 = 4;
double var_1_7 = 0.2;
unsigned char var_1_8 = 0;
unsigned short int var_1_9 = 32;
unsigned char var_1_10 = 1;
double var_1_11 = 127.5;
unsigned long int var_1_12 = 5;

// Calibration values

// Last'ed variables
double last_1_var_1_7 = 0.2;
unsigned long int last_1_var_1_12 = 5;

// Additional functions


void initially(void) {
}



void step(void) {
	// From: Req1Batch7normal
	if (! (last_1_var_1_7 <= (var_1_3 - var_1_4))) {
		if (-1 < last_1_var_1_12) {
			var_1_1 = var_1_6;
		} else {
			var_1_1 = var_1_6;
		}
	} else {
		var_1_1 = var_1_6;
	}


	// From: Req2Batch7normal
	if (var_1_8 || ((var_1_6 / var_1_9) >= var_1_1)) {
		if (var_1_8 && var_1_10) {
			var_1_7 = var_1_11;
		} else {
			var_1_7 = var_1_11;
		}
	} else {
		var_1_7 = var_1_11;
	}


	// From: Req3Batch7normal
	if (var_1_8) {
		if (var_1_10 && (var_1_4 <= var_1_7)) {
			if ((max (var_1_4 , var_1_11)) > var_1_7) {
				var_1_12 = (max (((3725801564u - var_1_6) - var_1_1) , var_1_9));
			} else {
				var_1_12 = var_1_6;
			}
		}
	} else {
		var_1_12 = var_1_6;
	}
}



void updateVariables() {
	var_1_3 = __VERIFIER_nondet_float();
	assume_abort_if_not((var_1_3 >= 0.0F && var_1_3 <= -1.0e-20F) || (var_1_3 <= 9223372.036854776000e+12F && var_1_3 >= 1.0e-20F ));
	var_1_4 = __VERIFIER_nondet_float();
	assume_abort_if_not((var_1_4 >= 0.0F && var_1_4 <= -1.0e-20F) || (var_1_4 <= 9223372.036854776000e+12F && var_1_4 >= 1.0e-20F ));
	var_1_6 = __VERIFIER_nondet_uchar();
	assume_abort_if_not(var_1_6 >= 0);
	assume_abort_if_not(var_1_6 <= 254);
	var_1_8 = __VERIFIER_nondet_uchar();
	assume_abort_if_not(var_1_8 >= 0);
	assume_abort_if_not(var_1_8 <= 1);
	var_1_9 = __VERIFIER_nondet_ushort();
	assume_abort_if_not(var_1_9 >= 0);
	assume_abort_if_not(var_1_9 <= 65535);
	assume_abort_if_not(var_1_9 != 0);
	var_1_10 = __VERIFIER_nondet_uchar();
	assume_abort_if_not(var_1_10 >= 0);
	assume_abort_if_not(var_1_10 <= 1);
	var_1_11 = __VERIFIER_nondet_double();
	assume_abort_if_not((var_1_11 >= -922337.2036854765600e+13F && var_1_11 <= -1.0e-20F) || (var_1_11 <= 9223372.036854765600e+12F && var_1_11 >= 1.0e-20F ));
}



void updateLastVariables() {
	last_1_var_1_7 = var_1_7;
	last_1_var_1_12 = var_1_12;
}

int property() {
	return (((! (last_1_var_1_7 <= (var_1_3 - var_1_4))) ? ((-1 < last_1_var_1_12) ? (var_1_1 == ((unsigned char) var_1_6)) : (var_1_1 == ((unsigned char) var_1_6))) : (var_1_1 == ((unsigned char) var_1_6))) && ((var_1_8 || ((var_1_6 / var_1_9) >= var_1_1)) ? ((var_1_8 && var_1_10) ? (var_1_7 == ((double) var_1_11)) : (var_1_7 == ((double) var_1_11))) : (var_1_7 == ((double) var_1_11)))) && (var_1_8 ? ((var_1_10 && (var_1_4 <= var_1_7)) ? (((max (var_1_4 , var_1_11)) > var_1_7) ? (var_1_12 == ((unsigned long int) (max (((3725801564u - var_1_6) - var_1_1) , var_1_9)))) : (var_1_12 == ((unsigned long int) var_1_6))) : 1) : (var_1_12 == ((unsigned long int) var_1_6)))
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
