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
void reach_error() { __assert_fail("0", "Req1_Prop1_Batch54Amount250.c", 13, "reach_error"); }
void __VERIFIER_assert(int cond) { if(!(cond)) { ERROR: {reach_error();abort();} } return; }
void assume_abort_if_not(int cond) { if(!cond) { abort(); } }



#define max(a,b) (((a) > (b)) ? (a) : (b))
#define min(a,b) (((a) < (b)) ? (a) : (b))
#define abs(a) (((a) < 0 ) ? -(a) : (a))





// Function prototypes


// Internal control logic variables
unsigned char isInitial = 0;

// Signal variables
unsigned short int var_1_1 = 32;
unsigned char var_1_2 = 1;
unsigned short int var_1_6 = 36750;
signed short int var_1_11 = -128;
unsigned long int var_1_15 = 100000;
signed short int var_1_16 = 50;
signed short int var_1_17 = 32;
unsigned long int var_1_18 = 1000000000;
unsigned long int var_1_19 = 1000000000;
unsigned long int var_1_20 = 32;
unsigned char var_1_21 = 0;
unsigned long int var_1_22 = 3488704484;
unsigned char var_1_23 = 0;
float var_1_24 = 1000000000.75;
unsigned long int var_1_25 = 1614694431;
unsigned char var_1_26 = 128;
unsigned char var_1_27 = 2;
unsigned char var_1_28 = 10;
unsigned char var_1_29 = 4;
unsigned char var_1_30 = 32;
signed char var_1_31 = -5;
signed char var_1_32 = 1;
signed char var_1_33 = -16;
signed char var_1_34 = 16;
signed char var_1_35 = 25;
signed char var_1_36 = 16;
unsigned char var_1_37 = 128;
unsigned char var_1_38 = 0;
unsigned short int var_1_39 = 64;
unsigned short int var_1_40 = 60876;
unsigned long int var_1_41 = 64;
unsigned long int var_1_42 = 100;
double var_1_43 = 2.3;
float var_1_44 = 9999.125;
unsigned char var_1_45 = 50;
float var_1_46 = 25.6;
float var_1_47 = 2.5;
float var_1_48 = 24.75;
float var_1_49 = 0.0;
float var_1_50 = 15.625;
signed short int var_1_51 = 128;
unsigned long int var_1_52 = 25;
unsigned char var_1_53 = 200;
unsigned char var_1_54 = 128;
unsigned char var_1_55 = 128;
unsigned char var_1_56 = 8;
unsigned long int var_1_57 = 128;
float var_1_58 = 0.0;
unsigned long int var_1_59 = 3635807131;
double var_1_60 = 16.5;
signed char var_1_61 = -32;

// Calibration values

// Last'ed variables
unsigned char last_1_var_1_28 = 10;
unsigned char last_1_var_1_37 = 128;
unsigned short int last_1_var_1_39 = 64;
unsigned long int last_1_var_1_41 = 64;
unsigned long int last_1_var_1_42 = 100;
float last_1_var_1_44 = 9999.125;
signed short int last_1_var_1_51 = 128;
unsigned long int last_1_var_1_52 = 25;
unsigned char last_1_var_1_53 = 200;
unsigned long int last_1_var_1_57 = 128;
signed char last_1_var_1_61 = -32;

// Additional functions


void initially(void) {
}



void step(void) {
	// From: Req1Batch54Amount250
	unsigned char stepLocal_0 = var_1_2;
	if (! ((- 9.9999999999925E11) >= last_1_var_1_44)) {
		if (last_1_var_1_44 >= last_1_var_1_44) {
			if (last_1_var_1_44 < 7.5) {
				if (stepLocal_0 && (! (last_1_var_1_44 >= last_1_var_1_44))) {
					var_1_1 = (var_1_6 - last_1_var_1_53);
				} else {
					var_1_1 = (max ((min (last_1_var_1_53 , var_1_6)) , (max (last_1_var_1_37 , last_1_var_1_37))));
				}
			} else {
				var_1_1 = var_1_6;
			}
		} else {
			var_1_1 = last_1_var_1_37;
		}
	} else {
		var_1_1 = last_1_var_1_53;
	}


	// From: Req5Batch54Amount250
	if ((last_1_var_1_28 ^ -64) < ((3595467207u - last_1_var_1_37) - (last_1_var_1_39 + var_1_27))) {
		var_1_28 = (var_1_27 + var_1_29);
	} else {
		var_1_28 = var_1_30;
	}


	// From: Req9Batch54Amount250
	if (var_1_21) {
		if ((var_1_35 / var_1_17) > ((max (-10 , var_1_30)) / (max (var_1_27 , var_1_16)))) {
			var_1_41 = (3724095905u - var_1_28);
		}
	} else {
		var_1_41 = (var_1_22 - 10u);
	}


	// From: Req14Batch54Amount250
	unsigned long int stepLocal_11 = var_1_34 + last_1_var_1_42;
	unsigned long int stepLocal_10 = last_1_var_1_41;
	unsigned long int stepLocal_9 = (max (var_1_22 , last_1_var_1_28)) / var_1_26;
	if (last_1_var_1_61 > stepLocal_9) {
		if ((max (last_1_var_1_52 , 8)) < stepLocal_11) {
			var_1_53 = (max ((min ((var_1_54 - var_1_29) , var_1_30)) , (var_1_55 - var_1_27)));
		} else {
			var_1_53 = var_1_55;
		}
	} else {
		if (stepLocal_10 >= var_1_30) {
			var_1_53 = (var_1_29 + (max (var_1_27 , var_1_56)));
		} else {
			if (var_1_23) {
				var_1_53 = (var_1_55 - var_1_29);
			} else {
				var_1_53 = (abs (var_1_56));
			}
		}
	}


	// From: Req8Batch54Amount250
	unsigned long int stepLocal_6 = abs (64u);
	if ((var_1_18 / var_1_6) >= stepLocal_6) {
		if (var_1_23) {
			var_1_39 = ((min ((var_1_40 - var_1_30) , 52932)) - var_1_38);
		}
	} else {
		var_1_39 = (var_1_53 + var_1_27);
	}


	// From: Req13Batch54Amount250
	if (var_1_21) {
		var_1_52 = var_1_1;
	}


	// From: Req16Batch54Amount250
	signed long int stepLocal_13 = var_1_6 ^ var_1_53;
	if (var_1_26 < stepLocal_13) {
		var_1_60 = (var_1_47 - (var_1_50 + var_1_46));
	} else {
		var_1_60 = (2.4 - 9.2);
	}


	// From: Req6Batch54Amount250
	if (var_1_21) {
		var_1_31 = (min ((var_1_32 - var_1_27) , (min (var_1_33 , var_1_34))));
	} else {
		var_1_31 = (max (((-4 + var_1_35) + var_1_36) , (max (var_1_32 , var_1_27))));
	}


	// From: Req17Batch54Amount250
	var_1_61 = 2;


	// From: Req7Batch54Amount250
	signed long int stepLocal_5 = abs (var_1_53);
	if (stepLocal_5 >= ((var_1_41 % var_1_27) + var_1_29)) {
		var_1_37 = (min ((max (var_1_29 , var_1_30)) , var_1_38));
	}


	// From: Req3Batch54Amount250
	unsigned char stepLocal_1 = var_1_53;
	if (stepLocal_1 > ((var_1_28 - var_1_28) / (max (var_1_16 , var_1_17)))) {
		var_1_15 = (min ((min (var_1_28 , var_1_37)) , var_1_28));
	} else {
		var_1_15 = (((var_1_18 + var_1_19) - 5u) + 200u);
	}


	// From: Req15Batch54Amount250
	unsigned short int stepLocal_12 = var_1_6;
	if (var_1_43 == (min ((var_1_50 + var_1_47) , (var_1_24 + var_1_48)))) {
		var_1_57 = (abs (var_1_40));
	} else {
		if (stepLocal_12 < last_1_var_1_57) {
			if (((var_1_50 + var_1_47) - (var_1_58 - 256.2f)) <= var_1_60) {
				var_1_57 = (var_1_22 - ((var_1_18 + var_1_19) - var_1_6));
			} else {
				var_1_57 = ((var_1_59 - var_1_53) - var_1_15);
			}
		} else {
			var_1_57 = 1u;
		}
	}


	// From: Req2Batch54Amount250
	if (var_1_53 > var_1_28) {
		if (var_1_2) {
			var_1_11 = (var_1_53 - (abs (var_1_31)));
		} else {
			var_1_11 = var_1_53;
		}
	} else {
		var_1_11 = (min (var_1_31 , (var_1_31 + -2)));
	}


	// From: Req4Batch54Amount250
	signed long int stepLocal_4 = var_1_28 % (var_1_26 - var_1_27);
	unsigned char stepLocal_3 = (max (var_1_52 , var_1_6)) < var_1_28;
	unsigned long int stepLocal_2 = var_1_18;
	if (var_1_2 && stepLocal_3) {
		if (var_1_2) {
			if (var_1_37 > stepLocal_2) {
				if (var_1_21) {
					if (var_1_60 >= var_1_60) {
						var_1_20 = (max ((max (var_1_11 , var_1_18)) , (var_1_53 + var_1_37)));
					}
				} else {
					var_1_20 = (var_1_22 - var_1_37);
				}
			}
		} else {
			if (! var_1_23) {
				if ((var_1_60 / var_1_24) > var_1_60) {
					var_1_20 = ((var_1_25 - var_1_19) + var_1_18);
				} else {
					var_1_20 = (var_1_28 + (max (var_1_11 , 1u)));
				}
			} else {
				var_1_20 = var_1_22;
			}
		}
	} else {
		if (stepLocal_4 >= (~ var_1_28)) {
			var_1_20 = var_1_37;
		} else {
			var_1_20 = (var_1_28 + (min (var_1_26 , var_1_11)));
		}
	}


	// From: Req12Batch54Amount250
	if (var_1_34 != (var_1_32 - var_1_27)) {
		var_1_51 = (var_1_35 + (var_1_30 - var_1_29));
	} else {
		if (var_1_40 >= var_1_57) {
			if (var_1_2) {
				var_1_51 = (abs (min (var_1_61 , last_1_var_1_51)));
			} else {
				var_1_51 = (var_1_45 + (var_1_38 - var_1_39));
			}
		} else {
			var_1_51 = (var_1_45 + var_1_29);
		}
	}


	// From: Req11Batch54Amount250
	if (var_1_23) {
		if (((var_1_1 / var_1_26) / (min (var_1_45 , var_1_17))) <= ((~ var_1_6) * (max (var_1_37 , var_1_16)))) {
			if (var_1_45 < var_1_39) {
				if (1 <= var_1_28) {
					var_1_44 = ((var_1_46 - (63.625f + var_1_47)) + var_1_48);
				}
			} else {
				var_1_44 = ((var_1_49 - (var_1_47 + var_1_50)) - var_1_46);
			}
		}
	} else {
		if (var_1_2) {
			var_1_44 = ((var_1_47 - var_1_46) + (abs (var_1_48)));
		}
	}


	// From: Req10Batch54Amount250
	unsigned long int stepLocal_8 = var_1_28 - var_1_15;
	unsigned short int stepLocal_7 = var_1_6;
	if (var_1_21) {
		var_1_42 = 128u;
	} else {
		if (stepLocal_7 >= var_1_37) {
			var_1_42 = 0u;
		} else {
			if (((- var_1_60) / (max (var_1_24 , var_1_43))) > 0.775) {
				if ((min ((var_1_6 - var_1_27) , var_1_52)) <= stepLocal_8) {
					var_1_42 = (max (var_1_6 , var_1_25));
				} else {
					if (var_1_23) {
						var_1_42 = (var_1_22 - var_1_27);
					} else {
						var_1_42 = var_1_57;
					}
				}
			}
		}
	}
}



void updateVariables() {
	var_1_2 = __VERIFIER_nondet_uchar();
	assume_abort_if_not(var_1_2 >= 0);
	assume_abort_if_not(var_1_2 <= 1);
	var_1_6 = __VERIFIER_nondet_ushort();
	assume_abort_if_not(var_1_6 >= 32767);
	assume_abort_if_not(var_1_6 <= 65534);
	var_1_16 = __VERIFIER_nondet_short();
	assume_abort_if_not(var_1_16 >= -32768);
	assume_abort_if_not(var_1_16 <= 32767);
	assume_abort_if_not(var_1_16 != 0);
	var_1_17 = __VERIFIER_nondet_short();
	assume_abort_if_not(var_1_17 >= -32768);
	assume_abort_if_not(var_1_17 <= 32767);
	assume_abort_if_not(var_1_17 != 0);
	var_1_18 = __VERIFIER_nondet_ulong();
	assume_abort_if_not(var_1_18 >= 536870911);
	assume_abort_if_not(var_1_18 <= 1073741824);
	var_1_19 = __VERIFIER_nondet_ulong();
	assume_abort_if_not(var_1_19 >= 536870912);
	assume_abort_if_not(var_1_19 <= 1073741823);
	var_1_21 = __VERIFIER_nondet_uchar();
	assume_abort_if_not(var_1_21 >= 0);
	assume_abort_if_not(var_1_21 <= 1);
	var_1_22 = __VERIFIER_nondet_ulong();
	assume_abort_if_not(var_1_22 >= 2147483647);
	assume_abort_if_not(var_1_22 <= 4294967294);
	var_1_23 = __VERIFIER_nondet_uchar();
	assume_abort_if_not(var_1_23 >= 0);
	assume_abort_if_not(var_1_23 <= 1);
	var_1_24 = __VERIFIER_nondet_float();
	assume_abort_if_not((var_1_24 >= -922337.2036854776000e+13F && var_1_24 <= -1.0e-20F) || (var_1_24 <= 9223372.036854776000e+12F && var_1_24 >= 1.0e-20F ));
	assume_abort_if_not(var_1_24 != 0.0F);
	var_1_25 = __VERIFIER_nondet_ulong();
	assume_abort_if_not(var_1_25 >= 1073741823);
	assume_abort_if_not(var_1_25 <= 2147483647);
	var_1_26 = __VERIFIER_nondet_uchar();
	assume_abort_if_not(var_1_26 >= 127);
	assume_abort_if_not(var_1_26 <= 255);
	var_1_27 = __VERIFIER_nondet_uchar();
	assume_abort_if_not(var_1_27 >= 1);
	assume_abort_if_not(var_1_27 <= 126);
	assume_abort_if_not(var_1_27 != 127);
	var_1_29 = __VERIFIER_nondet_uchar();
	assume_abort_if_not(var_1_29 >= 0);
	assume_abort_if_not(var_1_29 <= 127);
	var_1_30 = __VERIFIER_nondet_uchar();
	assume_abort_if_not(var_1_30 >= 0);
	assume_abort_if_not(var_1_30 <= 254);
	var_1_32 = __VERIFIER_nondet_char();
	assume_abort_if_not(var_1_32 >= -1);
	assume_abort_if_not(var_1_32 <= 126);
	var_1_33 = __VERIFIER_nondet_char();
	assume_abort_if_not(var_1_33 >= -127);
	assume_abort_if_not(var_1_33 <= 126);
	var_1_34 = __VERIFIER_nondet_char();
	assume_abort_if_not(var_1_34 >= -127);
	assume_abort_if_not(var_1_34 <= 126);
	var_1_35 = __VERIFIER_nondet_char();
	assume_abort_if_not(var_1_35 >= -31);
	assume_abort_if_not(var_1_35 <= 31);
	var_1_36 = __VERIFIER_nondet_char();
	assume_abort_if_not(var_1_36 >= -63);
	assume_abort_if_not(var_1_36 <= 63);
	var_1_38 = __VERIFIER_nondet_uchar();
	assume_abort_if_not(var_1_38 >= 0);
	assume_abort_if_not(var_1_38 <= 254);
	var_1_40 = __VERIFIER_nondet_ushort();
	assume_abort_if_not(var_1_40 >= 49150);
	assume_abort_if_not(var_1_40 <= 65534);
	var_1_43 = __VERIFIER_nondet_double();
	assume_abort_if_not((var_1_43 >= -922337.2036854776000e+13F && var_1_43 <= -1.0e-20F) || (var_1_43 <= 9223372.036854776000e+12F && var_1_43 >= 1.0e-20F ));
	assume_abort_if_not(var_1_43 != 0.0F);
	var_1_45 = __VERIFIER_nondet_uchar();
	assume_abort_if_not(var_1_45 >= 0);
	assume_abort_if_not(var_1_45 <= 255);
	assume_abort_if_not(var_1_45 != 0);
	var_1_46 = __VERIFIER_nondet_float();
	assume_abort_if_not((var_1_46 >= 0.0F && var_1_46 <= -1.0e-20F) || (var_1_46 <= 4611686.018427382800e+12F && var_1_46 >= 1.0e-20F ));
	var_1_47 = __VERIFIER_nondet_float();
	assume_abort_if_not((var_1_47 >= 0.0F && var_1_47 <= -1.0e-20F) || (var_1_47 <= 2305843.009213691390e+12F && var_1_47 >= 1.0e-20F ));
	var_1_48 = __VERIFIER_nondet_float();
	assume_abort_if_not((var_1_48 >= -461168.6018427382800e+13F && var_1_48 <= -1.0e-20F) || (var_1_48 <= 4611686.018427382800e+12F && var_1_48 >= 1.0e-20F ));
	var_1_49 = __VERIFIER_nondet_float();
	assume_abort_if_not((var_1_49 >= 4611686.018427382800e+12F && var_1_49 <= -1.0e-20F) || (var_1_49 <= 9223372.036854765600e+12F && var_1_49 >= 1.0e-20F ));
	var_1_50 = __VERIFIER_nondet_float();
	assume_abort_if_not((var_1_50 >= 0.0F && var_1_50 <= -1.0e-20F) || (var_1_50 <= 2305843.009213691390e+12F && var_1_50 >= 1.0e-20F ));
	var_1_54 = __VERIFIER_nondet_uchar();
	assume_abort_if_not(var_1_54 >= 127);
	assume_abort_if_not(var_1_54 <= 254);
	var_1_55 = __VERIFIER_nondet_uchar();
	assume_abort_if_not(var_1_55 >= 127);
	assume_abort_if_not(var_1_55 <= 254);
	var_1_56 = __VERIFIER_nondet_uchar();
	assume_abort_if_not(var_1_56 >= 0);
	assume_abort_if_not(var_1_56 <= 127);
	var_1_58 = __VERIFIER_nondet_float();
	assume_abort_if_not((var_1_58 >= 4611686.018427387900e+12F && var_1_58 <= -1.0e-20F) || (var_1_58 <= 9223372.036854776000e+12F && var_1_58 >= 1.0e-20F ));
	var_1_59 = __VERIFIER_nondet_ulong();
	assume_abort_if_not(var_1_59 >= 3221225470);
	assume_abort_if_not(var_1_59 <= 4294967294);
}



void updateLastVariables() {
	last_1_var_1_28 = var_1_28;
	last_1_var_1_37 = var_1_37;
	last_1_var_1_39 = var_1_39;
	last_1_var_1_41 = var_1_41;
	last_1_var_1_42 = var_1_42;
	last_1_var_1_44 = var_1_44;
	last_1_var_1_51 = var_1_51;
	last_1_var_1_52 = var_1_52;
	last_1_var_1_53 = var_1_53;
	last_1_var_1_57 = var_1_57;
	last_1_var_1_61 = var_1_61;
}

int property() {
	return (((((((((((((((((! ((- 9.9999999999925E11) >= last_1_var_1_44)) ? ((last_1_var_1_44 >= last_1_var_1_44) ? ((last_1_var_1_44 < 7.5) ? ((var_1_2 && (! (last_1_var_1_44 >= last_1_var_1_44))) ? (var_1_1 == ((unsigned short int) (var_1_6 - last_1_var_1_53))) : (var_1_1 == ((unsigned short int) (max ((min (last_1_var_1_53 , var_1_6)) , (max (last_1_var_1_37 , last_1_var_1_37))))))) : (var_1_1 == ((unsigned short int) var_1_6))) : (var_1_1 == ((unsigned short int) last_1_var_1_37))) : (var_1_1 == ((unsigned short int) last_1_var_1_53))) && ((var_1_53 > var_1_28) ? (var_1_2 ? (var_1_11 == ((signed short int) (var_1_53 - (abs (var_1_31))))) : (var_1_11 == ((signed short int) var_1_53))) : (var_1_11 == ((signed short int) (min (var_1_31 , (var_1_31 + -2))))))) && ((var_1_53 > ((var_1_28 - var_1_28) / (max (var_1_16 , var_1_17)))) ? (var_1_15 == ((unsigned long int) (min ((min (var_1_28 , var_1_37)) , var_1_28)))) : (var_1_15 == ((unsigned long int) (((var_1_18 + var_1_19) - 5u) + 200u))))) && ((var_1_2 && ((max (var_1_52 , var_1_6)) < var_1_28)) ? (var_1_2 ? ((var_1_37 > var_1_18) ? (var_1_21 ? ((var_1_60 >= var_1_60) ? (var_1_20 == ((unsigned long int) (max ((max (var_1_11 , var_1_18)) , (var_1_53 + var_1_37))))) : 1) : (var_1_20 == ((unsigned long int) (var_1_22 - var_1_37)))) : 1) : ((! var_1_23) ? (((var_1_60 / var_1_24) > var_1_60) ? (var_1_20 == ((unsigned long int) ((var_1_25 - var_1_19) + var_1_18))) : (var_1_20 == ((unsigned long int) (var_1_28 + (max (var_1_11 , 1u)))))) : (var_1_20 == ((unsigned long int) var_1_22)))) : (((var_1_28 % (var_1_26 - var_1_27)) >= (~ var_1_28)) ? (var_1_20 == ((unsigned long int) var_1_37)) : (var_1_20 == ((unsigned long int) (var_1_28 + (min (var_1_26 , var_1_11)))))))) && (((last_1_var_1_28 ^ -64) < ((3595467207u - last_1_var_1_37) - (last_1_var_1_39 + var_1_27))) ? (var_1_28 == ((unsigned char) (var_1_27 + var_1_29))) : (var_1_28 == ((unsigned char) var_1_30)))) && (var_1_21 ? (var_1_31 == ((signed char) (min ((var_1_32 - var_1_27) , (min (var_1_33 , var_1_34)))))) : (var_1_31 == ((signed char) (max (((-4 + var_1_35) + var_1_36) , (max (var_1_32 , var_1_27)))))))) && (((abs (var_1_53)) >= ((var_1_41 % var_1_27) + var_1_29)) ? (var_1_37 == ((unsigned char) (min ((max (var_1_29 , var_1_30)) , var_1_38)))) : 1)) && (((var_1_18 / var_1_6) >= (abs (64u))) ? (var_1_23 ? (var_1_39 == ((unsigned short int) ((min ((var_1_40 - var_1_30) , 52932)) - var_1_38))) : 1) : (var_1_39 == ((unsigned short int) (var_1_53 + var_1_27))))) && (var_1_21 ? (((var_1_35 / var_1_17) > ((max (-10 , var_1_30)) / (max (var_1_27 , var_1_16)))) ? (var_1_41 == ((unsigned long int) (3724095905u - var_1_28))) : 1) : (var_1_41 == ((unsigned long int) (var_1_22 - 10u))))) && (var_1_21 ? (var_1_42 == ((unsigned long int) 128u)) : ((var_1_6 >= var_1_37) ? (var_1_42 == ((unsigned long int) 0u)) : ((((- var_1_60) / (max (var_1_24 , var_1_43))) > 0.775) ? (((min ((var_1_6 - var_1_27) , var_1_52)) <= (var_1_28 - var_1_15)) ? (var_1_42 == ((unsigned long int) (max (var_1_6 , var_1_25)))) : (var_1_23 ? (var_1_42 == ((unsigned long int) (var_1_22 - var_1_27))) : (var_1_42 == ((unsigned long int) var_1_57)))) : 1)))) && (var_1_23 ? ((((var_1_1 / var_1_26) / (min (var_1_45 , var_1_17))) <= ((~ var_1_6) * (max (var_1_37 , var_1_16)))) ? ((var_1_45 < var_1_39) ? ((1 <= var_1_28) ? (var_1_44 == ((float) ((var_1_46 - (63.625f + var_1_47)) + var_1_48))) : 1) : (var_1_44 == ((float) ((var_1_49 - (var_1_47 + var_1_50)) - var_1_46)))) : 1) : (var_1_2 ? (var_1_44 == ((float) ((var_1_47 - var_1_46) + (abs (var_1_48))))) : 1))) && ((var_1_34 != (var_1_32 - var_1_27)) ? (var_1_51 == ((signed short int) (var_1_35 + (var_1_30 - var_1_29)))) : ((var_1_40 >= var_1_57) ? (var_1_2 ? (var_1_51 == ((signed short int) (abs (min (var_1_61 , last_1_var_1_51))))) : (var_1_51 == ((signed short int) (var_1_45 + (var_1_38 - var_1_39))))) : (var_1_51 == ((signed short int) (var_1_45 + var_1_29)))))) && (var_1_21 ? (var_1_52 == ((unsigned long int) var_1_1)) : 1)) && ((last_1_var_1_61 > ((max (var_1_22 , last_1_var_1_28)) / var_1_26)) ? (((max (last_1_var_1_52 , 8)) < (var_1_34 + last_1_var_1_42)) ? (var_1_53 == ((unsigned char) (max ((min ((var_1_54 - var_1_29) , var_1_30)) , (var_1_55 - var_1_27))))) : (var_1_53 == ((unsigned char) var_1_55))) : ((last_1_var_1_41 >= var_1_30) ? (var_1_53 == ((unsigned char) (var_1_29 + (max (var_1_27 , var_1_56))))) : (var_1_23 ? (var_1_53 == ((unsigned char) (var_1_55 - var_1_29))) : (var_1_53 == ((unsigned char) (abs (var_1_56)))))))) && ((var_1_43 == (min ((var_1_50 + var_1_47) , (var_1_24 + var_1_48)))) ? (var_1_57 == ((unsigned long int) (abs (var_1_40)))) : ((var_1_6 < last_1_var_1_57) ? ((((var_1_50 + var_1_47) - (var_1_58 - 256.2f)) <= var_1_60) ? (var_1_57 == ((unsigned long int) (var_1_22 - ((var_1_18 + var_1_19) - var_1_6)))) : (var_1_57 == ((unsigned long int) ((var_1_59 - var_1_53) - var_1_15)))) : (var_1_57 == ((unsigned long int) 1u))))) && ((var_1_26 < (var_1_6 ^ var_1_53)) ? (var_1_60 == ((double) (var_1_47 - (var_1_50 + var_1_46)))) : (var_1_60 == ((double) (2.4 - 9.2))))) && (var_1_61 == ((signed char) 2))
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