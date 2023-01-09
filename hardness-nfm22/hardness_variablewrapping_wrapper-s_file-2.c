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
void reach_error() { __assert_fail("0", "Req1_Prop1_Batch2Wrapper_S.c", 13, "reach_error"); }
void __VERIFIER_assert(int cond) { if(!(cond)) { ERROR: {reach_error();abort();} } return; }
void assume_abort_if_not(int cond) { if(!cond) { abort(); } }



#define max(a,b) (((a) > (b)) ? (a) : (b))
#define min(a,b) (((a) < (b)) ? (a) : (b))
#define abs(a) (((a) < 0 ) ? -(a) : (a))



struct WrapperStruct00;

struct WrapperStruct00 {
	unsigned short int var_1_1;
	unsigned short int var_1_5;
	unsigned short int var_1_6;
	unsigned short int var_1_7;
	unsigned short int var_1_8;
	unsigned short int var_1_9;
	unsigned char var_1_10;
	float var_1_11;
	float var_1_12;
	float var_1_13;
};

// Function prototypes


// Internal control logic variables
unsigned char isInitial = 0;

// Signal variables
struct WrapperStruct00 WrapperStruct00 = {
	10,
	200,
	56955,
	32,
	1,
	8,
	1,
	-0.6,
	9.125,
	50.5
};

// Calibration values

// Last'ed variables
unsigned short int last_1_WrapperStruct00_var_1_1 = 10;
unsigned short int last_1_WrapperStruct00_var_1_9 = 8;

// Additional functions


void initially(void) {
}



void step(void) {
	// From: Req1Batch2Wrapper_S
	if (last_1_WrapperStruct00_var_1_9 <= (last_1_WrapperStruct00_var_1_9 * last_1_WrapperStruct00_var_1_1)) {
		WrapperStruct00.var_1_1 = (max (WrapperStruct00.var_1_5 , (max ((WrapperStruct00.var_1_6 - WrapperStruct00.var_1_7) , WrapperStruct00.var_1_8))));
	}


	// From: Req2Batch2Wrapper_S
	if (WrapperStruct00.var_1_10 || (WrapperStruct00.var_1_6 == WrapperStruct00.var_1_8)) {
		if (WrapperStruct00.var_1_6 <= ((min (0 , WrapperStruct00.var_1_1)) << WrapperStruct00.var_1_1)) {
			if (WrapperStruct00.var_1_10 && (WrapperStruct00.var_1_1 == (WrapperStruct00.var_1_6 * WrapperStruct00.var_1_5))) {
				WrapperStruct00.var_1_9 = WrapperStruct00.var_1_5;
			} else {
				WrapperStruct00.var_1_9 = WrapperStruct00.var_1_5;
			}
		} else {
			WrapperStruct00.var_1_9 = 2;
		}
	} else {
		WrapperStruct00.var_1_9 = WrapperStruct00.var_1_6;
	}


	// From: Req3Batch2Wrapper_S
	if (WrapperStruct00.var_1_7 != WrapperStruct00.var_1_6) {
		if (WrapperStruct00.var_1_7 <= WrapperStruct00.var_1_9) {
			WrapperStruct00.var_1_11 = (max (WrapperStruct00.var_1_12 , WrapperStruct00.var_1_13));
		} else {
			WrapperStruct00.var_1_11 = WrapperStruct00.var_1_12;
		}
	} else {
		WrapperStruct00.var_1_11 = WrapperStruct00.var_1_12;
	}
}



void updateVariables() {
	WrapperStruct00.var_1_5 = __VERIFIER_nondet_ushort();
	assume_abort_if_not(WrapperStruct00.var_1_5 >= 0);
	assume_abort_if_not(WrapperStruct00.var_1_5 <= 65534);
	WrapperStruct00.var_1_6 = __VERIFIER_nondet_ushort();
	assume_abort_if_not(WrapperStruct00.var_1_6 >= 32767);
	assume_abort_if_not(WrapperStruct00.var_1_6 <= 65534);
	WrapperStruct00.var_1_7 = __VERIFIER_nondet_ushort();
	assume_abort_if_not(WrapperStruct00.var_1_7 >= 0);
	assume_abort_if_not(WrapperStruct00.var_1_7 <= 32767);
	WrapperStruct00.var_1_8 = __VERIFIER_nondet_ushort();
	assume_abort_if_not(WrapperStruct00.var_1_8 >= 0);
	assume_abort_if_not(WrapperStruct00.var_1_8 <= 65534);
	WrapperStruct00.var_1_10 = __VERIFIER_nondet_uchar();
	assume_abort_if_not(WrapperStruct00.var_1_10 >= 0);
	assume_abort_if_not(WrapperStruct00.var_1_10 <= 1);
	WrapperStruct00.var_1_12 = __VERIFIER_nondet_float();
	assume_abort_if_not((WrapperStruct00.var_1_12 >= -922337.2036854765600e+13F && WrapperStruct00.var_1_12 <= -1.0e-20F) || (WrapperStruct00.var_1_12 <= 9223372.036854765600e+12F && WrapperStruct00.var_1_12 >= 1.0e-20F ));
	WrapperStruct00.var_1_13 = __VERIFIER_nondet_float();
	assume_abort_if_not((WrapperStruct00.var_1_13 >= -922337.2036854765600e+13F && WrapperStruct00.var_1_13 <= -1.0e-20F) || (WrapperStruct00.var_1_13 <= 9223372.036854765600e+12F && WrapperStruct00.var_1_13 >= 1.0e-20F ));
}



void updateLastVariables() {
	last_1_WrapperStruct00_var_1_1 = WrapperStruct00.var_1_1;
	last_1_WrapperStruct00_var_1_9 = WrapperStruct00.var_1_9;
}

int property() {
	return (((last_1_WrapperStruct00_var_1_9 <= (last_1_WrapperStruct00_var_1_9 * last_1_WrapperStruct00_var_1_1)) ? (WrapperStruct00.var_1_1 == ((unsigned short int) (max (WrapperStruct00.var_1_5 , (max ((WrapperStruct00.var_1_6 - WrapperStruct00.var_1_7) , WrapperStruct00.var_1_8)))))) : 1) && ((WrapperStruct00.var_1_10 || (WrapperStruct00.var_1_6 == WrapperStruct00.var_1_8)) ? ((WrapperStruct00.var_1_6 <= ((min (0 , WrapperStruct00.var_1_1)) << WrapperStruct00.var_1_1)) ? ((WrapperStruct00.var_1_10 && (WrapperStruct00.var_1_1 == (WrapperStruct00.var_1_6 * WrapperStruct00.var_1_5))) ? (WrapperStruct00.var_1_9 == ((unsigned short int) WrapperStruct00.var_1_5)) : (WrapperStruct00.var_1_9 == ((unsigned short int) WrapperStruct00.var_1_5))) : (WrapperStruct00.var_1_9 == ((unsigned short int) 2))) : (WrapperStruct00.var_1_9 == ((unsigned short int) WrapperStruct00.var_1_6)))) && ((WrapperStruct00.var_1_7 != WrapperStruct00.var_1_6) ? ((WrapperStruct00.var_1_7 <= WrapperStruct00.var_1_9) ? (WrapperStruct00.var_1_11 == ((float) (max (WrapperStruct00.var_1_12 , WrapperStruct00.var_1_13)))) : (WrapperStruct00.var_1_11 == ((float) WrapperStruct00.var_1_12))) : (WrapperStruct00.var_1_11 == ((float) WrapperStruct00.var_1_12)))
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