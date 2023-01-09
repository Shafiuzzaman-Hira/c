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
void reach_error() { __assert_fail("0", "Req1_Prop1_Batch27Amount10.c", 13, "reach_error"); }
void __VERIFIER_assert(int cond) { if(!(cond)) { ERROR: {reach_error();abort();} } return; }
void assume_abort_if_not(int cond) { if(!cond) { abort(); } }



#define max(a,b) (((a) > (b)) ? (a) : (b))
#define min(a,b) (((a) < (b)) ? (a) : (b))
#define abs(a) (((a) < 0 ) ? -(a) : (a))





// Function prototypes


// Internal control logic variables
unsigned char isInitial = 0;

// Signal variables
unsigned short int var_1_1 = 64;
unsigned char var_1_4 = 1;
unsigned short int var_1_5 = 16;
unsigned short int var_1_6 = 32;
signed long int var_1_7 = -10;
double var_1_8 = 9999999.5;
double var_1_9 = 10.25;

// Calibration values

// Last'ed variables

// Additional functions


void initially(void) {
}



void step(void) {
	// From: Req2Batch27Amount10
	var_1_6 = var_1_5;


	// From: Req3Batch27Amount10
	var_1_7 = var_1_6;


	// From: Req4Batch27Amount10
	var_1_8 = var_1_9;


	// From: Req1Batch27Amount10
	if ((0.5 + var_1_8) != (var_1_8 * 0.5)) {
		if (var_1_4) {
			var_1_1 = var_1_5;
		}
	} else {
		var_1_1 = var_1_5;
	}
}



void updateVariables() {
	var_1_4 = __VERIFIER_nondet_uchar();
	assume_abort_if_not(var_1_4 >= 0);
	assume_abort_if_not(var_1_4 <= 1);
	var_1_5 = __VERIFIER_nondet_ushort();
	assume_abort_if_not(var_1_5 >= 0);
	assume_abort_if_not(var_1_5 <= 65534);
	var_1_9 = __VERIFIER_nondet_double();
	assume_abort_if_not((var_1_9 >= -922337.2036854765600e+13F && var_1_9 <= -1.0e-20F) || (var_1_9 <= 9223372.036854765600e+12F && var_1_9 >= 1.0e-20F ));
}



void updateLastVariables() {
}

int property() {
	return (((((0.5 + var_1_8) != (var_1_8 * 0.5)) ? (var_1_4 ? (var_1_1 == ((unsigned short int) var_1_5)) : 1) : (var_1_1 == ((unsigned short int) var_1_5))) && (var_1_6 == ((unsigned short int) var_1_5))) && (var_1_7 == ((signed long int) var_1_6))) && (var_1_8 == ((double) var_1_9))
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
