function arg = arg_for_g_0_first_integral_in_numerator(alpha_s, L_1, r_1, r_2, alpha_l2, L_2, z, alpha_l1)
	local_gamma_1 = gamma_1_function(L_1, r_1, r_2, alpha_s, alpha_l2, L_2);
	f_R1 = f_R1_function(local_gamma_1, z);
	abs_f_R1 = abs(f_R1);
	square_of_abs_f_R1 = abs_f_R1 .^2;

	f_S1 = f_S1_function(local_gamma_1, z, r_2);
	abs_f_S1 = abs(f_S1);
	square_of_abs_f_S1 = abs_f_S1/.^2;

	sum_in_brackets = square_of_abs_f_R1 + square_of_abs_f_S1;

	arg = alpha_l1 .* sum_in_brackets;
end
