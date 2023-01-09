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
void reach_error() { __assert_fail("0", "Req1_Prop1_Batch85normal.c", 13, "reach_error"); }
void __VERIFIER_assert(int cond) { if(!(cond)) { ERROR: {reach_error();abort();} } return; }
void assume_abort_if_not(int cond) { if(!cond) { abort(); } }



#define max(a,b) (((a) > (b)) ? (a) : (b))
#define min(a,b) (((a) < (b)) ? (a) : (b))
#define abs(a) (((a) < 0 ) ? -(a) : (a))





// Function prototypes


// Internal control logic variables
unsigned char isInitial = 0;

// Signal variables
signed long int var_1_1 = 16;
unsigned char var_1_6 = 128;
unsigned char var_1_7 = 2;
unsigned char var_1_8 = 0;
unsigned char var_1_9 = 0;
unsigned char var_1_10 = 0;
unsigned char var_1_11 = 0;
unsigned char var_1_12 = 0;
unsigned char var_1_13 = 1;
unsigned char var_1_14 = 0;
unsigned char var_1_15 = 0;
unsigned char var_1_16 = 0;
signed char var_1_17 = 32;
signed char var_1_19 = 4;
signed char var_1_20 = 50;
unsigned char var_1_21 = 1;
unsigned short int var_1_23 = 64;

// Calibration values

// Last'ed variables

// Additional functions


void initially(void) {
}



void step(void) {
	// From: Req2Batch85normal
	var_1_6 = (min ((max (32 , var_1_7)) , 16));


	// From: Req3Batch85normal
	var_1_8 = ((var_1_9 || (var_1_10 || var_1_11)) || var_1_12);


	// From: Req4Batch85normal
	var_1_13 = ((var_1_14 && var_1_15) && var_1_16);


	// From: Req5Batch85normal
	if (var_1_13) {
		var_1_17 = ((min (var_1_19 , 100)) - 64);
	} else {
		var_1_17 = (var_1_19 - var_1_20);
	}


	// From: Req6Batch85normal
	signed long int stepLocal_0 = var_1_7 * (var_1_6 / var_1_23);
	if (stepLocal_0 == var_1_6) {
		if (! var_1_10) {
			var_1_21 = var_1_12;
		} else {
			var_1_21 = var_1_10;
		}
	} else {
		var_1_21 = var_1_9;
	}


	// From: Req1Batch85normal
	if (var_1_21) {
		var_1_1 = (min ((var_1_17 + var_1_6) , -16));
	} else {
		if (var_1_8) {
			var_1_1 = (var_1_6 + -4);
		} else {
			var_1_1 = var_1_6;
		}
	}
}



void updateVariables() {
	var_1_7 = __VERIFIER_nondet_uchar();
	assume_abort_if_not(var_1_7 >= 0);
	assume_abort_if_not(var_1_7 <= 254);
	var_1_9 = __VERIFIER_nondet_uchar();
	assume_abort_if_not(var_1_9 >= 0);
	assume_abort_if_not(var_1_9 <= 0);
	var_1_10 = __VERIFIER_nondet_uchar();
	assume_abort_if_not(var_1_10 >= 0);
	assume_abort_if_not(var_1_10 <= 0);
	var_1_11 = __VERIFIER_nondet_uchar();
	assume_abort_if_not(var_1_11 >= 0);
	assume_abort_if_not(var_1_11 <= 0);
	var_1_12 = __VERIFIER_nondet_uchar();
	assume_abort_if_not(var_1_12 >= 0);
	assume_abort_if_not(var_1_12 <= 0);
	var_1_14 = __VERIFIER_nondet_uchar();
	assume_abort_if_not(var_1_14 >= 1);
	assume_abort_if_not(var_1_14 <= 1);
	var_1_15 = __VERIFIER_nondet_uchar();
	assume_abort_if_not(var_1_15 >= 1);
	assume_abort_if_not(var_1_15 <= 1);
	var_1_16 = __VERIFIER_nondet_uchar();
	assume_abort_if_not(var_1_16 >= 1);
	assume_abort_if_not(var_1_16 <= 1);
	var_1_19 = __VERIFIER_nondet_char();
	assume_abort_if_not(var_1_19 >= -1);
	assume_abort_if_not(var_1_19 <= 126);
	var_1_20 = __VERIFIER_nondet_char();
	assume_abort_if_not(var_1_20 >= 0);
	assume_abort_if_not(var_1_20 <= 126);
	var_1_23 = __VERIFIER_nondet_ushort();
	assume_abort_if_not(var_1_23 >= 0);
	assume_abort_if_not(var_1_23 <= 65535);
	assume_abort_if_not(var_1_23 != 0);
}



void updateLastVariables() {
}

int property() {
	return (((((var_1_21 ? (var_1_1 == ((signed long int) (min ((var_1_17 + var_1_6) , -16)))) : (var_1_8 ? (var_1_1 == ((signed long int) (var_1_6 + -4))) : (var_1_1 == ((signed long int) var_1_6)))) && (var_1_6 == ((unsigned char) (min ((max (32 , var_1_7)) , 16))))) && (var_1_8 == ((unsigned char) ((var_1_9 || (var_1_10 || var_1_11)) || var_1_12)))) && (var_1_13 == ((unsigned char) ((var_1_14 && var_1_15) && var_1_16)))) && (var_1_13 ? (var_1_17 == ((signed char) ((min (var_1_19 , 100)) - 64))) : (var_1_17 == ((signed char) (var_1_19 - var_1_20))))) && (((var_1_7 * (var_1_6 / var_1_23)) == var_1_6) ? ((! var_1_10) ? (var_1_21 == ((unsigned char) var_1_12)) : (var_1_21 == ((unsigned char) var_1_10))) : (var_1_21 == ((unsigned char) var_1_9)))
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
