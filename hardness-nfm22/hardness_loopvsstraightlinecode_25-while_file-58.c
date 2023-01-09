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
void reach_error() { __assert_fail("0", "Req1_Prop1_Batch5825_while.c", 13, "reach_error"); }
void __VERIFIER_assert(int cond) { if(!(cond)) { ERROR: {reach_error();abort();} } return; }
void assume_abort_if_not(int cond) { if(!cond) { abort(); } }



#define max(a,b) (((a) > (b)) ? (a) : (b))
#define min(a,b) (((a) < (b)) ? (a) : (b))
#define abs(a) (((a) < 0 ) ? -(a) : (a))





// Function prototypes


// Internal control logic variables
unsigned char isInitial = 0;

// Signal variables
unsigned char var_1_1 = 64;
signed long int var_1_2 = 8;
unsigned char var_1_3 = 25;
unsigned char var_1_4 = 100;
float var_1_5 = 99999999999.5;
unsigned char var_1_6 = 4;
float var_1_7 = 63.75;
unsigned char var_1_9 = 0;
unsigned char var_1_10 = 1;

// Calibration values

// Last'ed variables
unsigned char last_1_var_1_1 = 64;
unsigned char last_1_var_1_9 = 0;

// Additional functions


void initially(void) {
}



void step(void) {
	// From: Req2Batch5825_while
	signed long int stepLocal_3 = last_1_var_1_1;
	signed long int stepLocal_2 = var_1_3 / var_1_6;
	if (var_1_3 < stepLocal_3) {
		if (var_1_4 < stepLocal_2) {
			var_1_5 = (var_1_7 - 16.55f);
		}
	} else {
		if (last_1_var_1_9) {
			var_1_5 = var_1_7;
		} else {
			var_1_5 = var_1_7;
		}
	}


	// From: Req1Batch5825_while
	signed long int stepLocal_1 = var_1_2;
	signed long int stepLocal_0 = var_1_2;
	if (stepLocal_1 <= -256) {
		var_1_1 = (min (var_1_3 , ((var_1_4 - 8) + 5)));
	} else {
		if (var_1_4 <= stepLocal_0) {
			var_1_1 = var_1_3;
		} else {
			var_1_1 = var_1_3;
		}
	}


	// From: Req3Batch5825_while
	unsigned char stepLocal_4 = (var_1_1 + 64u) != var_1_4;
	if ((var_1_5 >= var_1_7) || stepLocal_4) {
		var_1_9 = var_1_10;
	}
}



void updateVariables() {
	var_1_2 = __VERIFIER_nondet_long();
	assume_abort_if_not(var_1_2 >= -2147483648);
	assume_abort_if_not(var_1_2 <= 2147483647);
	var_1_3 = __VERIFIER_nondet_uchar();
	assume_abort_if_not(var_1_3 >= 0);
	assume_abort_if_not(var_1_3 <= 254);
	var_1_4 = __VERIFIER_nondet_uchar();
	assume_abort_if_not(var_1_4 >= 63);
	assume_abort_if_not(var_1_4 <= 127);
	var_1_6 = __VERIFIER_nondet_uchar();
	assume_abort_if_not(var_1_6 >= 0);
	assume_abort_if_not(var_1_6 <= 255);
	assume_abort_if_not(var_1_6 != 0);
	var_1_7 = __VERIFIER_nondet_float();
	assume_abort_if_not((var_1_7 >= 0.0F && var_1_7 <= -1.0e-20F) || (var_1_7 <= 9223372.036854765600e+12F && var_1_7 >= 1.0e-20F ));
	var_1_10 = __VERIFIER_nondet_uchar();
	assume_abort_if_not(var_1_10 >= 1);
	assume_abort_if_not(var_1_10 <= 1);
}



void updateLastVariables() {
	last_1_var_1_1 = var_1_1;
	last_1_var_1_9 = var_1_9;
}

int property() {
	return (((var_1_2 <= -256) ? (var_1_1 == ((unsigned char) (min (var_1_3 , ((var_1_4 - 8) + 5))))) : ((var_1_4 <= var_1_2) ? (var_1_1 == ((unsigned char) var_1_3)) : (var_1_1 == ((unsigned char) var_1_3)))) && ((var_1_3 < last_1_var_1_1) ? ((var_1_4 < (var_1_3 / var_1_6)) ? (var_1_5 == ((float) (var_1_7 - 16.55f))) : 1) : (last_1_var_1_9 ? (var_1_5 == ((float) var_1_7)) : (var_1_5 == ((float) var_1_7))))) && (((var_1_5 >= var_1_7) || ((var_1_1 + 64u) != var_1_4)) ? (var_1_9 == ((unsigned char) var_1_10)) : 1)
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
