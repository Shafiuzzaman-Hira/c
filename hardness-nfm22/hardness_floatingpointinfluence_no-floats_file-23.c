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
void reach_error() { __assert_fail("0", "Req1_Prop1_Batch23no_floats.c", 13, "reach_error"); }
void __VERIFIER_assert(int cond) { if(!(cond)) { ERROR: {reach_error();abort();} } return; }
void assume_abort_if_not(int cond) { if(!cond) { abort(); } }



#define max(a,b) (((a) > (b)) ? (a) : (b))
#define min(a,b) (((a) < (b)) ? (a) : (b))
#define abs(a) (((a) < 0 ) ? -(a) : (a))





// Function prototypes


// Internal control logic variables
unsigned char isInitial = 0;

// Signal variables
unsigned long int var_1_1 = 0;
unsigned long int var_1_2 = 16;
unsigned long int var_1_3 = 64;
unsigned long int var_1_4 = 25;
signed long int var_1_5 = 1;
signed long int var_1_6 = 999;
signed long int var_1_7 = 1;
signed long int var_1_8 = 9;
signed long int var_1_9 = 1;
unsigned long int var_1_10 = 16;
unsigned long int var_1_11 = 1277342739;
unsigned long int var_1_12 = 1394088949;
unsigned long int var_1_13 = 0;
unsigned char var_1_14 = 0;
unsigned char var_1_17 = 0;
unsigned char var_1_18 = 0;
unsigned char var_1_19 = 0;

// Calibration values

// Last'ed variables

// Additional functions


void initially(void) {
}



void step(void) {
	// From: Req1Batch23no_floats
	var_1_1 = (min (var_1_2 , var_1_3));


	// From: Req2Batch23no_floats
	if ((var_1_5 / var_1_6) <= (var_1_7 + (var_1_8 - var_1_9))) {
		var_1_4 = (min (var_1_2 , var_1_3));
	}


	// From: Req3Batch23no_floats
	var_1_10 = (max (var_1_2 , ((var_1_11 + var_1_12) - var_1_13)));


	// From: Req5Batch23no_floats
	unsigned char stepLocal_0 = (- var_1_5) != 1.9f;
	if (stepLocal_0 || ((var_1_4 * var_1_13) < var_1_3)) {
		var_1_18 = (! var_1_19);
	} else {
		var_1_18 = var_1_19;
	}


	// From: Req4Batch23no_floats
	if (var_1_18) {
		if (! ((var_1_5 / var_1_6) < (var_1_8 - var_1_9))) {
			if (var_1_18) {
				var_1_14 = (! var_1_17);
			}
		}
	}
}



void updateVariables() {
	var_1_2 = __VERIFIER_nondet_ulong();
	assume_abort_if_not(var_1_2 >= 0);
	assume_abort_if_not(var_1_2 <= 4294967294);
	var_1_3 = __VERIFIER_nondet_ulong();
	assume_abort_if_not(var_1_3 >= 0);
	assume_abort_if_not(var_1_3 <= 4294967294);
	var_1_5 = __VERIFIER_nondet_long();
	assume_abort_if_not(var_1_5 >= -2147483648);
	assume_abort_if_not(var_1_5 <= 2147483647);
	var_1_6 = __VERIFIER_nondet_long();
	assume_abort_if_not(var_1_6 >= -2147483648);
	assume_abort_if_not(var_1_6 <= 2147483647);
	assume_abort_if_not(var_1_6 != 0);
	var_1_7 = __VERIFIER_nondet_long();
	assume_abort_if_not(var_1_7 >= -2147483648);
	assume_abort_if_not(var_1_7 <= 2147483647);
	var_1_8 = __VERIFIER_nondet_long();
	assume_abort_if_not(var_1_8 >= 0);
	assume_abort_if_not(var_1_8 <= 2147483647);
	var_1_9 = __VERIFIER_nondet_long();
	assume_abort_if_not(var_1_9 >= 0);
	assume_abort_if_not(var_1_9 <= 2147483647);
	var_1_11 = __VERIFIER_nondet_ulong();
	assume_abort_if_not(var_1_11 >= 1073741823);
	assume_abort_if_not(var_1_11 <= 2147483647);
	var_1_12 = __VERIFIER_nondet_ulong();
	assume_abort_if_not(var_1_12 >= 1073741824);
	assume_abort_if_not(var_1_12 <= 2147483647);
	var_1_13 = __VERIFIER_nondet_ulong();
	assume_abort_if_not(var_1_13 >= 0);
	assume_abort_if_not(var_1_13 <= 2147483647);
	var_1_17 = __VERIFIER_nondet_uchar();
	assume_abort_if_not(var_1_17 >= 1);
	assume_abort_if_not(var_1_17 <= 1);
	var_1_19 = __VERIFIER_nondet_uchar();
	assume_abort_if_not(var_1_19 >= 0);
	assume_abort_if_not(var_1_19 <= 0);
}



void updateLastVariables() {
}

int property() {
	return ((((var_1_1 == ((unsigned long int) (min (var_1_2 , var_1_3)))) && (((var_1_5 / var_1_6) <= (var_1_7 + (var_1_8 - var_1_9))) ? (var_1_4 == ((unsigned long int) (min (var_1_2 , var_1_3)))) : 1)) && (var_1_10 == ((unsigned long int) (max (var_1_2 , ((var_1_11 + var_1_12) - var_1_13)))))) && (var_1_18 ? ((! ((var_1_5 / var_1_6) < (var_1_8 - var_1_9))) ? (var_1_18 ? (var_1_14 == ((unsigned char) (! var_1_17))) : 1) : 1) : 1)) && ((((- var_1_5) != 1.9f) || ((var_1_4 * var_1_13) < var_1_3)) ? (var_1_18 == ((unsigned char) (! var_1_19))) : (var_1_18 == ((unsigned char) var_1_19)))
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