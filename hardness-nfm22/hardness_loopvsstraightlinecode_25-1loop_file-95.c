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
void reach_error() { __assert_fail("0", "Req1_Prop1_Batch9525_1loop.c", 13, "reach_error"); }
void __VERIFIER_assert(int cond) { if(!(cond)) { ERROR: {reach_error();abort();} } return; }
void assume_abort_if_not(int cond) { if(!cond) { abort(); } }



#define max(a,b) (((a) > (b)) ? (a) : (b))
#define min(a,b) (((a) < (b)) ? (a) : (b))
#define abs(a) (((a) < 0 ) ? -(a) : (a))





// Function prototypes


// Internal control logic variables
unsigned char isInitial = 0;

// Signal variables
signed long int var_1_1 = -64;
float var_1_3 = 1.8;
double var_1_5 = -0.75;
double var_1_6 = 128.2;
float var_1_8 = 127.4;
float var_1_9 = 99999999.4;
float var_1_10 = 2.8;
double var_1_11 = 7.875;
unsigned char var_1_12 = 128;
unsigned char var_1_13 = 1;
unsigned char var_1_14 = 25;
unsigned char var_1_15 = 64;
signed short int var_1_16 = 16;

// Calibration values

// Last'ed variables

// Additional functions


void initially(void) {
}



void step(void) {
	// From: Req3Batch9525_1loop
	var_1_11 = ((abs (var_1_10)) - var_1_8);


	// From: Req4Batch9525_1loop
	var_1_12 = ((var_1_13 + var_1_14) + var_1_15);


	// From: Req5Batch9525_1loop
	var_1_16 = var_1_13;


	// From: Req1Batch9525_1loop
	var_1_1 = (abs (var_1_12));


	// From: Req2Batch9525_1loop
	unsigned char stepLocal_2 = var_1_12;
	signed long int stepLocal_1 = -128;
	unsigned char stepLocal_0 = var_1_12;
	if ((var_1_11 / (min (var_1_5 , var_1_6))) <= var_1_11) {
		if (stepLocal_0 == var_1_16) {
			if (stepLocal_2 >= var_1_16) {
				var_1_3 = ((9.3f - var_1_8) + (var_1_9 + var_1_10));
			}
		} else {
			if (var_1_12 < stepLocal_1) {
				var_1_3 = var_1_8;
			} else {
				var_1_3 = var_1_10;
			}
		}
	}
}



void updateVariables() {
	var_1_5 = __VERIFIER_nondet_double();
	assume_abort_if_not((var_1_5 >= -922337.2036854776000e+13F && var_1_5 <= -1.0e-20F) || (var_1_5 <= 9223372.036854776000e+12F && var_1_5 >= 1.0e-20F ));
	assume_abort_if_not(var_1_5 != 0.0F);
	var_1_6 = __VERIFIER_nondet_double();
	assume_abort_if_not((var_1_6 >= -922337.2036854776000e+13F && var_1_6 <= -1.0e-20F) || (var_1_6 <= 9223372.036854776000e+12F && var_1_6 >= 1.0e-20F ));
	assume_abort_if_not(var_1_6 != 0.0F);
	var_1_8 = __VERIFIER_nondet_float();
	assume_abort_if_not((var_1_8 >= 0.0F && var_1_8 <= -1.0e-20F) || (var_1_8 <= 4611686.018427382800e+12F && var_1_8 >= 1.0e-20F ));
	var_1_9 = __VERIFIER_nondet_float();
	assume_abort_if_not((var_1_9 >= -230584.3009213691390e+13F && var_1_9 <= -1.0e-20F) || (var_1_9 <= 2305843.009213691390e+12F && var_1_9 >= 1.0e-20F ));
	var_1_10 = __VERIFIER_nondet_float();
	assume_abort_if_not((var_1_10 >= -230584.3009213691390e+13F && var_1_10 <= -1.0e-20F) || (var_1_10 <= 2305843.009213691390e+12F && var_1_10 >= 1.0e-20F ));
	var_1_13 = __VERIFIER_nondet_uchar();
	assume_abort_if_not(var_1_13 >= 0);
	assume_abort_if_not(var_1_13 <= 64);
	var_1_14 = __VERIFIER_nondet_uchar();
	assume_abort_if_not(var_1_14 >= 0);
	assume_abort_if_not(var_1_14 <= 63);
	var_1_15 = __VERIFIER_nondet_uchar();
	assume_abort_if_not(var_1_15 >= 0);
	assume_abort_if_not(var_1_15 <= 127);
}



void updateLastVariables() {
}

int property() {
	return ((((var_1_1 == ((signed long int) (abs (var_1_12)))) && (((var_1_11 / (min (var_1_5 , var_1_6))) <= var_1_11) ? ((var_1_12 == var_1_16) ? ((var_1_12 >= var_1_16) ? (var_1_3 == ((float) ((9.3f - var_1_8) + (var_1_9 + var_1_10)))) : 1) : ((var_1_12 < -128) ? (var_1_3 == ((float) var_1_8)) : (var_1_3 == ((float) var_1_10)))) : 1)) && (var_1_11 == ((double) ((abs (var_1_10)) - var_1_8)))) && (var_1_12 == ((unsigned char) ((var_1_13 + var_1_14) + var_1_15)))) && (var_1_16 == ((signed short int) var_1_13))
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
