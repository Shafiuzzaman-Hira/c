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
void reach_error() { __assert_fail("0", "Req1_Prop1_Batch60Wrapper_A.c", 13, "reach_error"); }
void __VERIFIER_assert(int cond) { if(!(cond)) { ERROR: {reach_error();abort();} } return; }
void assume_abort_if_not(int cond) { if(!cond) { abort(); } }



#define max(a,b) (((a) > (b)) ? (a) : (b))
#define min(a,b) (((a) < (b)) ? (a) : (b))
#define abs(a) (((a) < 0 ) ? -(a) : (a))





// Function prototypes


// Internal control logic variables
unsigned char isInitial = 0;

// Signal variables
unsigned char BOOL_unsigned_char_Array_0[2] = {
	1, 1
};
double double_Array_0[2][2] = {
	{2.5, 64.25}, {31.2, 9999.6}
};
float float_Array_0[7] = {
	10.5, 4.4, 64.8, 5.8, 32.902, 8.6, 999.375
};
signed long int signed_long_int_Array_0[2] = {
	10, 1
};
unsigned char unsigned_char_Array_0[1] = {
	2
};

// Calibration values

// Last'ed variables
float last_1_float_Array_0_5_ = 8.6;

// Additional functions


void initially(void) {
}



void step(void) {
	// From: Req1Batch60Wrapper_A
	double_Array_0[1][1] = (double_Array_0[0][1] - double_Array_0[1][0]);


	// From: Req2Batch60Wrapper_A
	if ((- unsigned_char_Array_0[0]) >= signed_long_int_Array_0[0]) {
		if (signed_long_int_Array_0[0] > unsigned_char_Array_0[0]) {
			if (double_Array_0[1][0] == double_Array_0[1][1]) {
				signed_long_int_Array_0[1] = (256 - (unsigned_char_Array_0[0] + 5));
			} else {
				signed_long_int_Array_0[1] = unsigned_char_Array_0[0];
			}
		}
	}


	// From: Req3Batch60Wrapper_A
	unsigned char stepLocal_0 = BOOL_unsigned_char_Array_0[0];
	if (BOOL_unsigned_char_Array_0[1] && stepLocal_0) {
		float_Array_0[3] = ((float_Array_0[2] - float_Array_0[4]) + (float_Array_0[0] + (float_Array_0[1] + float_Array_0[6])));
	}


	// From: Req4Batch60Wrapper_A
	double_Array_0[0][0] = 500.25;


	// From: Req5Batch60Wrapper_A
	if (double_Array_0[0][1] > last_1_float_Array_0_5_) {
		if (BOOL_unsigned_char_Array_0[0]) {
			if (double_Array_0[1][0] <= (min (last_1_float_Array_0_5_ , float_Array_0[4]))) {
				float_Array_0[5] = (float_Array_0[6] + float_Array_0[4]);
			}
		}
	} else {
		float_Array_0[5] = float_Array_0[0];
	}
}



void updateVariables() {
	BOOL_unsigned_char_Array_0[0] = __VERIFIER_nondet_uchar();
	assume_abort_if_not(BOOL_unsigned_char_Array_0[0] >= 0);
	assume_abort_if_not(BOOL_unsigned_char_Array_0[0] <= 1);
	BOOL_unsigned_char_Array_0[1] = __VERIFIER_nondet_uchar();
	assume_abort_if_not(BOOL_unsigned_char_Array_0[1] >= 0);
	assume_abort_if_not(BOOL_unsigned_char_Array_0[1] <= 1);
	double_Array_0[1][0] = __VERIFIER_nondet_double();
	assume_abort_if_not((double_Array_0[1][0] >= 0.0F && double_Array_0[1][0] <= -1.0e-20F) || (double_Array_0[1][0] <= 9223372.036854765600e+12F && double_Array_0[1][0] >= 1.0e-20F ));
	double_Array_0[0][1] = __VERIFIER_nondet_double();
	assume_abort_if_not((double_Array_0[0][1] >= 0.0F && double_Array_0[0][1] <= -1.0e-20F) || (double_Array_0[0][1] <= 9223372.036854765600e+12F && double_Array_0[0][1] >= 1.0e-20F ));
	float_Array_0[0] = __VERIFIER_nondet_float();
	assume_abort_if_not((float_Array_0[0] >= -230584.3009213691390e+13F && float_Array_0[0] <= -1.0e-20F) || (float_Array_0[0] <= 2305843.009213691390e+12F && float_Array_0[0] >= 1.0e-20F ));
	float_Array_0[1] = __VERIFIER_nondet_float();
	assume_abort_if_not((float_Array_0[1] >= -115292.1504606845700e+13F && float_Array_0[1] <= -1.0e-20F) || (float_Array_0[1] <= 1152921.504606845700e+12F && float_Array_0[1] >= 1.0e-20F ));
	float_Array_0[2] = __VERIFIER_nondet_float();
	assume_abort_if_not((float_Array_0[2] >= 0.0F && float_Array_0[2] <= -1.0e-20F) || (float_Array_0[2] <= 4611686.018427382800e+12F && float_Array_0[2] >= 1.0e-20F ));
	float_Array_0[4] = __VERIFIER_nondet_float();
	assume_abort_if_not((float_Array_0[4] >= 0.0F && float_Array_0[4] <= -1.0e-20F) || (float_Array_0[4] <= 4611686.018427382800e+12F && float_Array_0[4] >= 1.0e-20F ));
	float_Array_0[6] = __VERIFIER_nondet_float();
	assume_abort_if_not((float_Array_0[6] >= -115292.1504606845700e+13F && float_Array_0[6] <= -1.0e-20F) || (float_Array_0[6] <= 1152921.504606845700e+12F && float_Array_0[6] >= 1.0e-20F ));
	signed_long_int_Array_0[0] = __VERIFIER_nondet_long();
	assume_abort_if_not(signed_long_int_Array_0[0] >= -2147483648);
	assume_abort_if_not(signed_long_int_Array_0[0] <= 2147483647);
	unsigned_char_Array_0[0] = __VERIFIER_nondet_uchar();
	assume_abort_if_not(unsigned_char_Array_0[0] >= 0);
	assume_abort_if_not(unsigned_char_Array_0[0] <= 255);
}



void updateLastVariables() {
	last_1_float_Array_0_5_ = float_Array_0[5];
}

int property() {
	return ((((double_Array_0[1][1] == ((double) (double_Array_0[0][1] - double_Array_0[1][0]))) && (((- unsigned_char_Array_0[0]) >= signed_long_int_Array_0[0]) ? ((signed_long_int_Array_0[0] > unsigned_char_Array_0[0]) ? ((double_Array_0[1][0] == double_Array_0[1][1]) ? (signed_long_int_Array_0[1] == ((signed long int) (256 - (unsigned_char_Array_0[0] + 5)))) : (signed_long_int_Array_0[1] == ((signed long int) unsigned_char_Array_0[0]))) : 1) : 1)) && ((BOOL_unsigned_char_Array_0[1] && BOOL_unsigned_char_Array_0[0]) ? (float_Array_0[3] == ((float) ((float_Array_0[2] - float_Array_0[4]) + (float_Array_0[0] + (float_Array_0[1] + float_Array_0[6]))))) : 1)) && (double_Array_0[0][0] == ((double) 500.25))) && ((double_Array_0[0][1] > last_1_float_Array_0_5_) ? (BOOL_unsigned_char_Array_0[0] ? ((double_Array_0[1][0] <= (min (last_1_float_Array_0_5_ , float_Array_0[4]))) ? (float_Array_0[5] == ((float) (float_Array_0[6] + float_Array_0[4]))) : 1) : 1) : (float_Array_0[5] == ((float) float_Array_0[0])))
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