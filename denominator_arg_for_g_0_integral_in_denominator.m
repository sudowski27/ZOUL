function arg = denominator_arg_for_g_0_integral_in_denominator(L_1, r_1, r_2, alpha_s, alpha_l2, L_2, z, P_out_slash_P_sg)
	gamma_1 = gamma_1_function(L_1, r_1, r_2, alpha_s, alpha_l2, L_2);
	f_r1 = f_R1_function(gamma_1, z);
	abs_f_r1 = abs(f_r1);
	square_of_abs_f_r1 = abs_f_r1 .^ 2;

	f_S1 = f_S1_function(gamma_1, z, r_2);
	abs_f_S1 = abs(f_S1);
	square_of_abs_f_S1 = abs_f_S1 .^ 2;

	sum_in_brackets = square_of_abs_f_r1 + square_of_abs_f_S1;

	arg = 1;

	N_2 = N_2_function(r_1, r_2);

	product_part = P_out_slash_P_sg .* N_2;
	product_part = product_part .* sum_in_brackets;

	arg = arg + product_part;
end
