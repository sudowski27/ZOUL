function argument = arg_for_g_0_second_integral_in_numerator(L_1, r_1, r_2, alpha_s, alpha_l2, L_2, z)
	gamma_1 = gamma_1_function(L_1, r_1, r_2, alpha_s, alpha_l2, L_2);
	gamma_2 = gamma_2_function(alpha_s, alpha_l2);
	f_R2 = f_R2_function(gamma_1, gamma_2, 	L_1, z);

	abs_f_R2 = abs(f_R2);
	square_of_abs_f_R2 = abs_f_R2 .^ 2;

	f_S2 = f_S2_function(r_2, gamma_1, gamma_2, L_1, z);

	abs_f_S2 = abs(f_S2);
	square_of_abs_f_S2 = abs_f_S2 .^ 2;

	sum_in_brackets = square_of_abs_f_R2 + square_of_abs_f_S2;

	argument = alpha_l2 .* sum_in_brackets;
end
