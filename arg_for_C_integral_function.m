function arg = arg_for_C_integral_function(alpha_s, L1, r_1, r_2, alpha_l2, L2, z, P_out_slash_P_sg, Beta)
	main_numerator = alpha_s;

	local_gamma_1 = gamma_1_function(L1, r_1, r_2, alpha_s, alpha_l2, L2);
	local_gamma_2 = gamma_2_function(alpha_s, alpha_l2);
	
	abs_of_f_R2 = abs(f_R2_function(local_gamma_1, local_gamma_2, L1, z));

	abs_of_f_S2 = abs(f_S2_function(r_2, local_gamma_1, local_gamma_2, L1, z));

	square_of_abs_of_f_R2 = abs_of_f_R2.^2;

	square_of_abs_of_f_S2 = abs_of_f_S2.^2;

	sum_in_brackets_in_numerator = square_of_abs_of_f_R2 + square_of_abs_of_f_S2;

	main_numerator = main_numerator .* sum_in_brackets_in_numerator;
	% Denominator
	main_denominator = 1;

	sum_in_brackets_in_denominator = sum_in_brackets_in_numerator;

	product_in_denominator = P_out_slash_P_sg .* N_2_function(r_1, r_2);

	product_in_denominator = product_in_denominator .* Beta;

	product_in_denominator = product_in_denominator .* sum_in_brackets_in_denominator;

	main_denominator = main_denominator + product_in_denominator;

	% argument for C integral
	arg = main_numerator ./ main_denominator;
end
