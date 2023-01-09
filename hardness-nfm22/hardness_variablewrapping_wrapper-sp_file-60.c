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
void reach_error() { __assert_fail("0", "Req1_Prop1_Batch60Wrapper_SP.c", 13, "reach_error"); }
void __VERIFIER_assert(int cond) { if(!(cond)) { ERROR: {reach_error();abort();} } return; }
void assume_abort_if_not(int cond) { if(!cond) { abort(); } }



#define max(a,b) (((a) > (b)) ? (a) : (b))
#define min(a,b) (((a) < (b)) ? (a) : (b))
#define abs(a) (((a) < 0 ) ? -(a) : (a))



struct WrapperStruct00;

struct WrapperStruct00 {
	double var_1_1;
	double var_1_2;
	double var_1_3;
	signed long int var_1_4;
	unsigned char var_1_5;
	signed long int var_1_6;
	float var_1_7;
	unsigned char var_1_8;
	unsigned char var_1_9;
	float var_1_10;
	float var_1_11;
	float var_1_12;
	float var_1_13;
	float var_1_14;
	double var_1_15;
	float var_1_16;
};

// Function prototypes


// Internal control logic variables
unsigned char isInitial = 0;

// Signal variables
struct WrapperStruct00 WrapperStruct00 = {
	9999.6,
	64.25,
	31.2,
	1,
	2,
	10,
	5.8,
	1,
	1,
	64.8,
	32.902,
	10.5,
	4.4,
	999.375,
	2.5,
	8.6
};
double* WrapperStruct00_var_1_1_Pointer = &(WrapperStruct00.var_1_1);
double* WrapperStruct00_var_1_2_Pointer = &(WrapperStruct00.var_1_2);
double* WrapperStruct00_var_1_3_Pointer = &(WrapperStruct00.var_1_3);
signed long int* WrapperStruct00_var_1_4_Pointer = &(WrapperStruct00.var_1_4);
unsigned char* WrapperStruct00_var_1_5_Pointer = &(WrapperStruct00.var_1_5);
signed long int* WrapperStruct00_var_1_6_Pointer = &(WrapperStruct00.var_1_6);
float* WrapperStruct00_var_1_7_Pointer = &(WrapperStruct00.var_1_7);
unsigned char* WrapperStruct00_var_1_8_Pointer = &(WrapperStruct00.var_1_8);
unsigned char* WrapperStruct00_var_1_9_Pointer = &(WrapperStruct00.var_1_9);
float* WrapperStruct00_var_1_10_Pointer = &(WrapperStruct00.var_1_10);
float* WrapperStruct00_var_1_11_Pointer = &(WrapperStruct00.var_1_11);
float* WrapperStruct00_var_1_12_Pointer = &(WrapperStruct00.var_1_12);
float* WrapperStruct00_var_1_13_Pointer = &(WrapperStruct00.var_1_13);
float* WrapperStruct00_var_1_14_Pointer = &(WrapperStruct00.var_1_14);
double* WrapperStruct00_var_1_15_Pointer = &(WrapperStruct00.var_1_15);
float* WrapperStruct00_var_1_16_Pointer = &(WrapperStruct00.var_1_16);

// Calibration values

// Last'ed variables
float last_1_WrapperStruct00_var_1_16 = 8.6;

// Additional functions


void initially(void) {
}



void step(void) {
	// From: Req1Batch60Wrapper_SP
	(*(WrapperStruct00_var_1_1_Pointer)) = ((*(WrapperStruct00_var_1_2_Pointer)) - (*(WrapperStruct00_var_1_3_Pointer)));


	// From: Req2Batch60Wrapper_SP
	if ((- (*(WrapperStruct00_var_1_5_Pointer))) >= (*(WrapperStruct00_var_1_6_Pointer))) {
		if ((*(WrapperStruct00_var_1_6_Pointer)) > (*(WrapperStruct00_var_1_5_Pointer))) {
			if ((*(WrapperStruct00_var_1_3_Pointer)) == (*(WrapperStruct00_var_1_1_Pointer))) {
				(*(WrapperStruct00_var_1_4_Pointer)) = (256 - ((*(WrapperStruct00_var_1_5_Pointer)) + 5));
			} else {
				(*(WrapperStruct00_var_1_4_Pointer)) = (*(WrapperStruct00_var_1_5_Pointer));
			}
		}
	}


	// From: Req3Batch60Wrapper_SP
	unsigned char stepLocal_0 = (*(WrapperStruct00_var_1_9_Pointer));
	if ((*(WrapperStruct00_var_1_8_Pointer)) && stepLocal_0) {
		(*(WrapperStruct00_var_1_7_Pointer)) = (((*(WrapperStruct00_var_1_10_Pointer)) - (*(WrapperStruct00_var_1_11_Pointer))) + ((*(WrapperStruct00_var_1_12_Pointer)) + ((*(WrapperStruct00_var_1_13_Pointer)) + (*(WrapperStruct00_var_1_14_Pointer)))));
	}


	// From: Req4Batch60Wrapper_SP
	(*(WrapperStruct00_var_1_15_Pointer)) = 500.25;


	// From: Req5Batch60Wrapper_SP
	if ((*(WrapperStruct00_var_1_2_Pointer)) > last_1_WrapperStruct00_var_1_16) {
		if ((*(WrapperStruct00_var_1_9_Pointer))) {
			if ((*(WrapperStruct00_var_1_3_Pointer)) <= (min (last_1_WrapperStruct00_var_1_16 , (*(WrapperStruct00_var_1_11_Pointer))))) {
				(*(WrapperStruct00_var_1_16_Pointer)) = ((*(WrapperStruct00_var_1_14_Pointer)) + (*(WrapperStruct00_var_1_11_Pointer)));
			}
		}
	} else {
		(*(WrapperStruct00_var_1_16_Pointer)) = (*(WrapperStruct00_var_1_12_Pointer));
	}
}



void updateVariables() {
	WrapperStruct00.var_1_2 = __VERIFIER_nondet_double();
	assume_abort_if_not((WrapperStruct00.var_1_2 >= 0.0F && WrapperStruct00.var_1_2 <= -1.0e-20F) || (WrapperStruct00.var_1_2 <= 9223372.036854765600e+12F && WrapperStruct00.var_1_2 >= 1.0e-20F ));
	WrapperStruct00.var_1_3 = __VERIFIER_nondet_double();
	assume_abort_if_not((WrapperStruct00.var_1_3 >= 0.0F && WrapperStruct00.var_1_3 <= -1.0e-20F) || (WrapperStruct00.var_1_3 <= 9223372.036854765600e+12F && WrapperStruct00.var_1_3 >= 1.0e-20F ));
	WrapperStruct00.var_1_5 = __VERIFIER_nondet_uchar();
	assume_abort_if_not(WrapperStruct00.var_1_5 >= 0);
	assume_abort_if_not(WrapperStruct00.var_1_5 <= 255);
	WrapperStruct00.var_1_6 = __VERIFIER_nondet_long();
	assume_abort_if_not(WrapperStruct00.var_1_6 >= -2147483648);
	assume_abort_if_not(WrapperStruct00.var_1_6 <= 2147483647);
	WrapperStruct00.var_1_8 = __VERIFIER_nondet_uchar();
	assume_abort_if_not(WrapperStruct00.var_1_8 >= 0);
	assume_abort_if_not(WrapperStruct00.var_1_8 <= 1);
	WrapperStruct00.var_1_9 = __VERIFIER_nondet_uchar();
	assume_abort_if_not(WrapperStruct00.var_1_9 >= 0);
	assume_abort_if_not(WrapperStruct00.var_1_9 <= 1);
	WrapperStruct00.var_1_10 = __VERIFIER_nondet_float();
	assume_abort_if_not((WrapperStruct00.var_1_10 >= 0.0F && WrapperStruct00.var_1_10 <= -1.0e-20F) || (WrapperStruct00.var_1_10 <= 4611686.018427382800e+12F && WrapperStruct00.var_1_10 >= 1.0e-20F ));
	WrapperStruct00.var_1_11 = __VERIFIER_nondet_float();
	assume_abort_if_not((WrapperStruct00.var_1_11 >= 0.0F && WrapperStruct00.var_1_11 <= -1.0e-20F) || (WrapperStruct00.var_1_11 <= 4611686.018427382800e+12F && WrapperStruct00.var_1_11 >= 1.0e-20F ));
	WrapperStruct00.var_1_12 = __VERIFIER_nondet_float();
	assume_abort_if_not((WrapperStruct00.var_1_12 >= -230584.3009213691390e+13F && WrapperStruct00.var_1_12 <= -1.0e-20F) || (WrapperStruct00.var_1_12 <= 2305843.009213691390e+12F && WrapperStruct00.var_1_12 >= 1.0e-20F ));
	WrapperStruct00.var_1_13 = __VERIFIER_nondet_float();
	assume_abort_if_not((WrapperStruct00.var_1_13 >= -115292.1504606845700e+13F && WrapperStruct00.var_1_13 <= -1.0e-20F) || (WrapperStruct00.var_1_13 <= 1152921.504606845700e+12F && WrapperStruct00.var_1_13 >= 1.0e-20F ));
	WrapperStruct00.var_1_14 = __VERIFIER_nondet_float();
	assume_abort_if_not((WrapperStruct00.var_1_14 >= -115292.1504606845700e+13F && WrapperStruct00.var_1_14 <= -1.0e-20F) || (WrapperStruct00.var_1_14 <= 1152921.504606845700e+12F && WrapperStruct00.var_1_14 >= 1.0e-20F ));
}



void updateLastVariables() {
	last_1_WrapperStruct00_var_1_16 = WrapperStruct00.var_1_16;
}

int property() {
	return (((((*(WrapperStruct00_var_1_1_Pointer)) == ((double) ((*(WrapperStruct00_var_1_2_Pointer)) - (*(WrapperStruct00_var_1_3_Pointer))))) && (((- (*(WrapperStruct00_var_1_5_Pointer))) >= (*(WrapperStruct00_var_1_6_Pointer))) ? (((*(WrapperStruct00_var_1_6_Pointer)) > (*(WrapperStruct00_var_1_5_Pointer))) ? (((*(WrapperStruct00_var_1_3_Pointer)) == (*(WrapperStruct00_var_1_1_Pointer))) ? ((*(WrapperStruct00_var_1_4_Pointer)) == ((signed long int) (256 - ((*(WrapperStruct00_var_1_5_Pointer)) + 5)))) : ((*(WrapperStruct00_var_1_4_Pointer)) == ((signed long int) (*(WrapperStruct00_var_1_5_Pointer))))) : 1) : 1)) && (((*(WrapperStruct00_var_1_8_Pointer)) && (*(WrapperStruct00_var_1_9_Pointer))) ? ((*(WrapperStruct00_var_1_7_Pointer)) == ((float) (((*(WrapperStruct00_var_1_10_Pointer)) - (*(WrapperStruct00_var_1_11_Pointer))) + ((*(WrapperStruct00_var_1_12_Pointer)) + ((*(WrapperStruct00_var_1_13_Pointer)) + (*(WrapperStruct00_var_1_14_Pointer))))))) : 1)) && ((*(WrapperStruct00_var_1_15_Pointer)) == ((double) 500.25))) && (((*(WrapperStruct00_var_1_2_Pointer)) > last_1_WrapperStruct00_var_1_16) ? ((*(WrapperStruct00_var_1_9_Pointer)) ? (((*(WrapperStruct00_var_1_3_Pointer)) <= (min (last_1_WrapperStruct00_var_1_16 , (*(WrapperStruct00_var_1_11_Pointer))))) ? ((*(WrapperStruct00_var_1_16_Pointer)) == ((float) ((*(WrapperStruct00_var_1_14_Pointer)) + (*(WrapperStruct00_var_1_11_Pointer))))) : 1) : 1) : ((*(WrapperStruct00_var_1_16_Pointer)) == ((float) (*(WrapperStruct00_var_1_12_Pointer)))))
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