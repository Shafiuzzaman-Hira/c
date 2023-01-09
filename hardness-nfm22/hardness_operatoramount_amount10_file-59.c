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
void reach_error() { __assert_fail("0", "Req1_Prop1_Batch59Amount10.c", 13, "reach_error"); }
void __VERIFIER_assert(int cond) { if(!(cond)) { ERROR: {reach_error();abort();} } return; }
void assume_abort_if_not(int cond) { if(!cond) { abort(); } }



#define max(a,b) (((a) > (b)) ? (a) : (b))
#define min(a,b) (((a) < (b)) ? (a) : (b))
#define abs(a) (((a) < 0 ) ? -(a) : (a))





// Function prototypes


// Internal control logic variables
unsigned char isInitial = 0;

// Signal variables
unsigned long int var_1_1 = 200;
unsigned char var_1_2 = 0;
unsigned char var_1_3 = 100;
unsigned char var_1_4 = 25;

// Calibration values

// Last'ed variables

// Additional functions


void initially(void) {
}



void step(void) {
	// From: Req1Batch59Amount10
	if ((var_1_3 != (16 / var_1_4)) && var_1_2) {
		if (var_1_3 > var_1_4) {
			var_1_1 = (var_1_4 + var_1_3);
		} else {
			if (var_1_2) {
				var_1_1 = var_1_3;
			} else {
				var_1_1 = var_1_4;
			}
		}
	} else {
		var_1_1 = var_1_3;
	}
}



void updateVariables() {
	var_1_2 = __VERIFIER_nondet_uchar();
	assume_abort_if_not(var_1_2 >= 0);
	assume_abort_if_not(var_1_2 <= 1);
	var_1_3 = __VERIFIER_nondet_uchar();
	assume_abort_if_not(var_1_3 >= 0);
	assume_abort_if_not(var_1_3 <= 255);
	var_1_4 = __VERIFIER_nondet_uchar();
	assume_abort_if_not(var_1_4 >= 0);
	assume_abort_if_not(var_1_4 <= 255);
	assume_abort_if_not(var_1_4 != 0);
}



void updateLastVariables() {
}

int property() {
	return ((var_1_3 != (16 / var_1_4)) && var_1_2) ? ((var_1_3 > var_1_4) ? (var_1_1 == ((unsigned long int) (var_1_4 + var_1_3))) : (var_1_2 ? (var_1_1 == ((unsigned long int) var_1_3)) : (var_1_1 == ((unsigned long int) var_1_4)))) : (var_1_1 == ((unsigned long int) var_1_3))
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
