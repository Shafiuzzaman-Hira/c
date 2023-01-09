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
void reach_error() { __assert_fail("0", "Req1_Prop1_Batch8825_1loop.c", 13, "reach_error"); }
void __VERIFIER_assert(int cond) { if(!(cond)) { ERROR: {reach_error();abort();} } return; }
void assume_abort_if_not(int cond) { if(!cond) { abort(); } }



#define max(a,b) (((a) > (b)) ? (a) : (b))
#define min(a,b) (((a) < (b)) ? (a) : (b))
#define abs(a) (((a) < 0 ) ? -(a) : (a))





// Function prototypes


// Internal control logic variables
unsigned char isInitial = 0;

// Signal variables
signed char var_1_1 = -8;
signed char var_1_10 = -64;
unsigned char var_1_11 = 0;
unsigned char var_1_12 = 0;
unsigned char var_1_13 = 1;
unsigned char var_1_14 = 0;
unsigned char var_1_15 = 0;
signed long int var_1_16 = -16;
float var_1_17 = 3.5;
float var_1_18 = 128.45;
unsigned long int var_1_19 = 50;
unsigned long int var_1_20 = 25;

// Calibration values

// Last'ed variables

// Additional functions


void initially(void) {
}



void step(void) {
	// From: Req3Batch8825_1loop
	var_1_13 = (var_1_14 && var_1_15);


	// From: Req5Batch8825_1loop
	var_1_17 = var_1_18;


	// From: Req6Batch8825_1loop
	var_1_19 = var_1_20;


	// From: Req2Batch8825_1loop
	if ((- (var_1_17 + var_1_17)) > var_1_17) {
		var_1_11 = var_1_12;
	}


	// From: Req4Batch8825_1loop
	var_1_16 = var_1_19;


	// From: Req1Batch8825_1loop
	if (((var_1_16 | var_1_19) > var_1_16) && var_1_11) {
		if ((var_1_19 != -16) && (var_1_17 <= (var_1_17 + var_1_17))) {
			if (var_1_17 > var_1_17) {
				var_1_1 = var_1_10;
			} else {
				var_1_1 = var_1_10;
			}
		} else {
			var_1_1 = var_1_10;
		}
	} else {
		var_1_1 = var_1_10;
	}
}



void updateVariables() {
	var_1_10 = __VERIFIER_nondet_char();
	assume_abort_if_not(var_1_10 >= -127);
	assume_abort_if_not(var_1_10 <= 126);
	var_1_12 = __VERIFIER_nondet_uchar();
	assume_abort_if_not(var_1_12 >= 0);
	assume_abort_if_not(var_1_12 <= 0);
	var_1_14 = __VERIFIER_nondet_uchar();
	assume_abort_if_not(var_1_14 >= 1);
	assume_abort_if_not(var_1_14 <= 1);
	var_1_15 = __VERIFIER_nondet_uchar();
	assume_abort_if_not(var_1_15 >= 1);
	assume_abort_if_not(var_1_15 <= 1);
	var_1_18 = __VERIFIER_nondet_float();
	assume_abort_if_not((var_1_18 >= -922337.2036854765600e+13F && var_1_18 <= -1.0e-20F) || (var_1_18 <= 9223372.036854765600e+12F && var_1_18 >= 1.0e-20F ));
	var_1_20 = __VERIFIER_nondet_ulong();
	assume_abort_if_not(var_1_20 >= 0);
	assume_abort_if_not(var_1_20 <= 4294967294);
}



void updateLastVariables() {
}

int property() {
	return ((((((((var_1_16 | var_1_19) > var_1_16) && var_1_11) ? (((var_1_19 != -16) && (var_1_17 <= (var_1_17 + var_1_17))) ? ((var_1_17 > var_1_17) ? (var_1_1 == ((signed char) var_1_10)) : (var_1_1 == ((signed char) var_1_10))) : (var_1_1 == ((signed char) var_1_10))) : (var_1_1 == ((signed char) var_1_10))) && (((- (var_1_17 + var_1_17)) > var_1_17) ? (var_1_11 == ((unsigned char) var_1_12)) : 1)) && (var_1_13 == ((unsigned char) (var_1_14 && var_1_15)))) && (var_1_16 == ((signed long int) var_1_19))) && (var_1_17 == ((float) var_1_18))) && (var_1_19 == ((unsigned long int) var_1_20))
;
}
int main(void) {
	isInitial = 1;
	initially();

	int k_loop;
	for (k_loop = 0; k_loop < 1; k_loop++) {
		updateLastVariables();

		updateVariables();
		step();
		__VERIFIER_assert(property());
		isInitial = 0;
	}

	return 0;
}
