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
void reach_error() { __assert_fail("0", "Req1_Prop1_Batch74Wrapper_S.c", 13, "reach_error"); }
void __VERIFIER_assert(int cond) { if(!(cond)) { ERROR: {reach_error();abort();} } return; }
void assume_abort_if_not(int cond) { if(!cond) { abort(); } }



#define max(a,b) (((a) > (b)) ? (a) : (b))
#define min(a,b) (((a) < (b)) ? (a) : (b))
#define abs(a) (((a) < 0 ) ? -(a) : (a))



struct WrapperStruct00;

struct WrapperStruct00 {
	unsigned long int var_1_1;
	double var_1_2;
	double var_1_3;
	double var_1_4;
	double var_1_5;
	unsigned long int var_1_6;
	unsigned long int var_1_7;
	unsigned long int var_1_8;
	unsigned long int var_1_9;
	unsigned char var_1_10;
	double var_1_11;
	unsigned char var_1_14;
	unsigned char var_1_15;
	unsigned char var_1_16;
};

// Function prototypes


// Internal control logic variables
unsigned char isInitial = 0;

// Signal variables
struct WrapperStruct00 WrapperStruct00 = {
	25,
	63.25,
	3.779,
	31.6,
	100.5,
	64,
	3150951169,
	128,
	1,
	1,
	9.3,
	0,
	1,
	1
};

// Calibration values

// Last'ed variables
unsigned char last_1_WrapperStruct00_var_1_16 = 1;

// Additional functions


void initially(void) {
}



void step(void) {
	// From: Req2Batch74Wrapper_S
	unsigned char stepLocal_0 = last_1_WrapperStruct00_var_1_16 && last_1_WrapperStruct00_var_1_16;
	if ((WrapperStruct00.var_1_5 > WrapperStruct00.var_1_11) || stepLocal_0) {
		WrapperStruct00.var_1_10 = WrapperStruct00.var_1_14;
	} else {
		WrapperStruct00.var_1_10 = (WrapperStruct00.var_1_14 && (! WrapperStruct00.var_1_15));
	}


	// From: Req3Batch74Wrapper_S
	unsigned char stepLocal_1 = WrapperStruct00.var_1_10;
	if (stepLocal_1 && WrapperStruct00.var_1_10) {
		if (WrapperStruct00.var_1_4 < (- WrapperStruct00.var_1_5)) {
			WrapperStruct00.var_1_16 = WrapperStruct00.var_1_15;
		} else {
			WrapperStruct00.var_1_16 = WrapperStruct00.var_1_15;
		}
	} else {
		WrapperStruct00.var_1_16 = WrapperStruct00.var_1_15;
	}


	// From: Req1Batch74Wrapper_S
	if ((min ((max (WrapperStruct00.var_1_2 , WrapperStruct00.var_1_3)) , WrapperStruct00.var_1_4)) < WrapperStruct00.var_1_5) {
		WrapperStruct00.var_1_1 = (max (WrapperStruct00.var_1_6 , (WrapperStruct00.var_1_7 - WrapperStruct00.var_1_8)));
	} else {
		if (WrapperStruct00.var_1_2 >= (WrapperStruct00.var_1_3 + WrapperStruct00.var_1_5)) {
			if (WrapperStruct00.var_1_4 > (- WrapperStruct00.var_1_5)) {
				WrapperStruct00.var_1_1 = WrapperStruct00.var_1_6;
			} else {
				WrapperStruct00.var_1_1 = WrapperStruct00.var_1_9;
			}
		} else {
			WrapperStruct00.var_1_1 = WrapperStruct00.var_1_6;
		}
	}
}



void updateVariables() {
	WrapperStruct00.var_1_2 = __VERIFIER_nondet_double();
	assume_abort_if_not((WrapperStruct00.var_1_2 >= -922337.2036854776000e+13F && WrapperStruct00.var_1_2 <= -1.0e-20F) || (WrapperStruct00.var_1_2 <= 9223372.036854776000e+12F && WrapperStruct00.var_1_2 >= 1.0e-20F ));
	WrapperStruct00.var_1_3 = __VERIFIER_nondet_double();
	assume_abort_if_not((WrapperStruct00.var_1_3 >= -922337.2036854776000e+13F && WrapperStruct00.var_1_3 <= -1.0e-20F) || (WrapperStruct00.var_1_3 <= 9223372.036854776000e+12F && WrapperStruct00.var_1_3 >= 1.0e-20F ));
	WrapperStruct00.var_1_4 = __VERIFIER_nondet_double();
	assume_abort_if_not((WrapperStruct00.var_1_4 >= -922337.2036854776000e+13F && WrapperStruct00.var_1_4 <= -1.0e-20F) || (WrapperStruct00.var_1_4 <= 9223372.036854776000e+12F && WrapperStruct00.var_1_4 >= 1.0e-20F ));
	WrapperStruct00.var_1_5 = __VERIFIER_nondet_double();
	assume_abort_if_not((WrapperStruct00.var_1_5 >= -922337.2036854776000e+13F && WrapperStruct00.var_1_5 <= -1.0e-20F) || (WrapperStruct00.var_1_5 <= 9223372.036854776000e+12F && WrapperStruct00.var_1_5 >= 1.0e-20F ));
	WrapperStruct00.var_1_6 = __VERIFIER_nondet_ulong();
	assume_abort_if_not(WrapperStruct00.var_1_6 >= 0);
	assume_abort_if_not(WrapperStruct00.var_1_6 <= 4294967294);
	WrapperStruct00.var_1_7 = __VERIFIER_nondet_ulong();
	assume_abort_if_not(WrapperStruct00.var_1_7 >= 2147483647);
	assume_abort_if_not(WrapperStruct00.var_1_7 <= 4294967294);
	WrapperStruct00.var_1_8 = __VERIFIER_nondet_ulong();
	assume_abort_if_not(WrapperStruct00.var_1_8 >= 0);
	assume_abort_if_not(WrapperStruct00.var_1_8 <= 2147483647);
	WrapperStruct00.var_1_9 = __VERIFIER_nondet_ulong();
	assume_abort_if_not(WrapperStruct00.var_1_9 >= 0);
	assume_abort_if_not(WrapperStruct00.var_1_9 <= 4294967294);
	WrapperStruct00.var_1_11 = __VERIFIER_nondet_double();
	assume_abort_if_not((WrapperStruct00.var_1_11 >= -922337.2036854776000e+13F && WrapperStruct00.var_1_11 <= -1.0e-20F) || (WrapperStruct00.var_1_11 <= 9223372.036854776000e+12F && WrapperStruct00.var_1_11 >= 1.0e-20F ));
	WrapperStruct00.var_1_14 = __VERIFIER_nondet_uchar();
	assume_abort_if_not(WrapperStruct00.var_1_14 >= 0);
	assume_abort_if_not(WrapperStruct00.var_1_14 <= 0);
	WrapperStruct00.var_1_15 = __VERIFIER_nondet_uchar();
	assume_abort_if_not(WrapperStruct00.var_1_15 >= 1);
	assume_abort_if_not(WrapperStruct00.var_1_15 <= 1);
}



void updateLastVariables() {
	last_1_WrapperStruct00_var_1_16 = WrapperStruct00.var_1_16;
}

int property() {
	return ((((min ((max (WrapperStruct00.var_1_2 , WrapperStruct00.var_1_3)) , WrapperStruct00.var_1_4)) < WrapperStruct00.var_1_5) ? (WrapperStruct00.var_1_1 == ((unsigned long int) (max (WrapperStruct00.var_1_6 , (WrapperStruct00.var_1_7 - WrapperStruct00.var_1_8))))) : ((WrapperStruct00.var_1_2 >= (WrapperStruct00.var_1_3 + WrapperStruct00.var_1_5)) ? ((WrapperStruct00.var_1_4 > (- WrapperStruct00.var_1_5)) ? (WrapperStruct00.var_1_1 == ((unsigned long int) WrapperStruct00.var_1_6)) : (WrapperStruct00.var_1_1 == ((unsigned long int) WrapperStruct00.var_1_9))) : (WrapperStruct00.var_1_1 == ((unsigned long int) WrapperStruct00.var_1_6)))) && (((WrapperStruct00.var_1_5 > WrapperStruct00.var_1_11) || (last_1_WrapperStruct00_var_1_16 && last_1_WrapperStruct00_var_1_16)) ? (WrapperStruct00.var_1_10 == ((unsigned char) WrapperStruct00.var_1_14)) : (WrapperStruct00.var_1_10 == ((unsigned char) (WrapperStruct00.var_1_14 && (! WrapperStruct00.var_1_15)))))) && ((WrapperStruct00.var_1_10 && WrapperStruct00.var_1_10) ? ((WrapperStruct00.var_1_4 < (- WrapperStruct00.var_1_5)) ? (WrapperStruct00.var_1_16 == ((unsigned char) WrapperStruct00.var_1_15)) : (WrapperStruct00.var_1_16 == ((unsigned char) WrapperStruct00.var_1_15))) : (WrapperStruct00.var_1_16 == ((unsigned char) WrapperStruct00.var_1_15)))
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