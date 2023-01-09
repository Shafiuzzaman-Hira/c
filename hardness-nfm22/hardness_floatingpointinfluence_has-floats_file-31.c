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
void reach_error() { __assert_fail("0", "Req1_Prop1_Batch31has_floats.c", 13, "reach_error"); }
void __VERIFIER_assert(int cond) { if(!(cond)) { ERROR: {reach_error();abort();} } return; }
void assume_abort_if_not(int cond) { if(!cond) { abort(); } }



#define max(a,b) (((a) > (b)) ? (a) : (b))
#define min(a,b) (((a) < (b)) ? (a) : (b))
#define abs(a) (((a) < 0 ) ? -(a) : (a))





// Function prototypes


// Internal control logic variables
unsigned char isInitial = 0;

// Signal variables
signed long int var_1_1 = 200;
unsigned char var_1_2 = 0;
signed long int var_1_3 = 1107940323;
unsigned char var_1_6 = 0;
signed long int var_1_7 = 4;
signed long int var_1_8 = -32;
unsigned char var_1_9 = 64;
unsigned char var_1_12 = 4;
double var_1_13 = 0.97;
double var_1_14 = 32.6;

// Calibration values

// Last'ed variables
signed long int last_1_var_1_7 = 4;
double last_1_var_1_13 = 0.97;

// Additional functions


void initially(void) {
}



void step(void) {
	// From: Req3Batch31has_floats
	if (! (var_1_3 < (var_1_8 * last_1_var_1_7))) {
		if ((abs (last_1_var_1_13)) < last_1_var_1_13) {
			if (var_1_6) {
				var_1_9 = var_1_12;
			}
		}
	} else {
		var_1_9 = var_1_12;
	}


	// From: Req2Batch31has_floats
	if (var_1_9 < var_1_9) {
		var_1_7 = (var_1_9 + var_1_9);
	} else {
		var_1_7 = (var_1_9 - var_1_3);
	}


	// From: Req4Batch31has_floats
	if ((var_1_9 + var_1_3) < var_1_9) {
		if (var_1_2 && var_1_6) {
			if (var_1_6) {
				var_1_13 = 0.8;
			} else {
				var_1_13 = var_1_14;
			}
		} else {
			var_1_13 = var_1_14;
		}
	} else {
		var_1_13 = var_1_14;
	}


	// From: Req1Batch31has_floats
	if (var_1_2) {
		var_1_1 = ((var_1_3 - var_1_9) - var_1_9);
	} else {
		if (var_1_6 && (var_1_3 < var_1_9)) {
			var_1_1 = var_1_3;
		}
	}
}



void updateVariables() {
	var_1_2 = __VERIFIER_nondet_uchar();
	assume_abort_if_not(var_1_2 >= 0);
	assume_abort_if_not(var_1_2 <= 1);
	var_1_3 = __VERIFIER_nondet_long();
	assume_abort_if_not(var_1_3 >= 1073741822);
	assume_abort_if_not(var_1_3 <= 2147483646);
	var_1_6 = __VERIFIER_nondet_uchar();
	assume_abort_if_not(var_1_6 >= 0);
	assume_abort_if_not(var_1_6 <= 1);
	var_1_8 = __VERIFIER_nondet_long();
	assume_abort_if_not(var_1_8 >= -1073741823);
	assume_abort_if_not(var_1_8 <= 1073741823);
	var_1_12 = __VERIFIER_nondet_uchar();
	assume_abort_if_not(var_1_12 >= 0);
	assume_abort_if_not(var_1_12 <= 254);
	var_1_14 = __VERIFIER_nondet_double();
	assume_abort_if_not((var_1_14 >= -922337.2036854765600e+13F && var_1_14 <= -1.0e-20F) || (var_1_14 <= 9223372.036854765600e+12F && var_1_14 >= 1.0e-20F ));
}



void updateLastVariables() {
	last_1_var_1_7 = var_1_7;
	last_1_var_1_13 = var_1_13;
}

int property() {
	return (((var_1_2 ? (var_1_1 == ((signed long int) ((var_1_3 - var_1_9) - var_1_9))) : ((var_1_6 && (var_1_3 < var_1_9)) ? (var_1_1 == ((signed long int) var_1_3)) : 1)) && ((var_1_9 < var_1_9) ? (var_1_7 == ((signed long int) (var_1_9 + var_1_9))) : (var_1_7 == ((signed long int) (var_1_9 - var_1_3))))) && ((! (var_1_3 < (var_1_8 * last_1_var_1_7))) ? (((abs (last_1_var_1_13)) < last_1_var_1_13) ? (var_1_6 ? (var_1_9 == ((unsigned char) var_1_12)) : 1) : 1) : (var_1_9 == ((unsigned char) var_1_12)))) && (((var_1_9 + var_1_3) < var_1_9) ? ((var_1_2 && var_1_6) ? (var_1_6 ? (var_1_13 == ((double) 0.8)) : (var_1_13 == ((double) var_1_14))) : (var_1_13 == ((double) var_1_14))) : (var_1_13 == ((double) var_1_14)))
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
