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
void reach_error() { __assert_fail("0", "Req1_Prop1_Batch27Amount25.c", 13, "reach_error"); }
void __VERIFIER_assert(int cond) { if(!(cond)) { ERROR: {reach_error();abort();} } return; }
void assume_abort_if_not(int cond) { if(!cond) { abort(); } }



#define max(a,b) (((a) > (b)) ? (a) : (b))
#define min(a,b) (((a) < (b)) ? (a) : (b))
#define abs(a) (((a) < 0 ) ? -(a) : (a))





// Function prototypes


// Internal control logic variables
unsigned char isInitial = 0;

// Signal variables
signed long int var_1_1 = 0;
signed long int var_1_3 = 5;
signed long int var_1_5 = 64;
signed long int var_1_7 = 1223692151;
signed long int var_1_8 = 1524007455;
unsigned char var_1_9 = 128;
unsigned char var_1_10 = 200;
unsigned char var_1_11 = 64;
unsigned char var_1_12 = 16;
signed long int var_1_13 = -128;
unsigned char var_1_14 = 8;

// Calibration values

// Last'ed variables
unsigned char last_1_var_1_9 = 128;
signed long int last_1_var_1_13 = -128;

// Additional functions


void initially(void) {
}



void step(void) {
	// From: Req1Batch27Amount25
	signed long int stepLocal_0 = last_1_var_1_13;
	if (32 >= stepLocal_0) {
		var_1_1 = (last_1_var_1_9 + (max ((last_1_var_1_9 - last_1_var_1_9) , last_1_var_1_9)));
	} else {
		var_1_1 = ((var_1_7 - last_1_var_1_9) - (var_1_8 - last_1_var_1_9));
	}


	// From: Req2Batch27Amount25
	signed long int stepLocal_1 = var_1_5;
	if (var_1_3 < stepLocal_1) {
		var_1_9 = (var_1_10 - 1);
	} else {
		var_1_9 = ((var_1_11 + 64) - var_1_12);
	}


	// From: Req3Batch27Amount25
	signed long int stepLocal_3 = var_1_1;
	signed long int stepLocal_2 = var_1_9 + 4;
	if (stepLocal_2 < last_1_var_1_13) {
		if (((var_1_8 * 128) / var_1_14) != stepLocal_3) {
			var_1_13 = -100000;
		} else {
			var_1_13 = var_1_12;
		}
	}
}



void updateVariables() {
	var_1_3 = __VERIFIER_nondet_long();
	assume_abort_if_not(var_1_3 >= -1073741823);
	assume_abort_if_not(var_1_3 <= 1073741823);
	var_1_5 = __VERIFIER_nondet_long();
	assume_abort_if_not(var_1_5 >= 0);
	assume_abort_if_not(var_1_5 <= 1073741823);
	var_1_7 = __VERIFIER_nondet_long();
	assume_abort_if_not(var_1_7 >= 1073741822);
	assume_abort_if_not(var_1_7 <= 2147483646);
	var_1_8 = __VERIFIER_nondet_long();
	assume_abort_if_not(var_1_8 >= 1073741823);
	assume_abort_if_not(var_1_8 <= 2147483646);
	var_1_10 = __VERIFIER_nondet_uchar();
	assume_abort_if_not(var_1_10 >= 127);
	assume_abort_if_not(var_1_10 <= 254);
	var_1_11 = __VERIFIER_nondet_uchar();
	assume_abort_if_not(var_1_11 >= 63);
	assume_abort_if_not(var_1_11 <= 127);
	var_1_12 = __VERIFIER_nondet_uchar();
	assume_abort_if_not(var_1_12 >= 0);
	assume_abort_if_not(var_1_12 <= 127);
	var_1_14 = __VERIFIER_nondet_uchar();
	assume_abort_if_not(var_1_14 >= 0);
	assume_abort_if_not(var_1_14 <= 255);
	assume_abort_if_not(var_1_14 != 0);
}



void updateLastVariables() {
	last_1_var_1_9 = var_1_9;
	last_1_var_1_13 = var_1_13;
}

int property() {
	return (((32 >= last_1_var_1_13) ? (var_1_1 == ((signed long int) (last_1_var_1_9 + (max ((last_1_var_1_9 - last_1_var_1_9) , last_1_var_1_9))))) : (var_1_1 == ((signed long int) ((var_1_7 - last_1_var_1_9) - (var_1_8 - last_1_var_1_9))))) && ((var_1_3 < var_1_5) ? (var_1_9 == ((unsigned char) (var_1_10 - 1))) : (var_1_9 == ((unsigned char) ((var_1_11 + 64) - var_1_12))))) && (((var_1_9 + 4) < last_1_var_1_13) ? ((((var_1_8 * 128) / var_1_14) != var_1_1) ? (var_1_13 == ((signed long int) -100000)) : (var_1_13 == ((signed long int) var_1_12))) : 1)
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
