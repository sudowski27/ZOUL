function arg = arg_for_C_integral_function(alpha_s, L1, r_1, r_2, alpha_l2, L2, z)
	main_numerator = alpha_s;

	local_gamma_1 = gamma_1_function(L1, r_1, r_2, alpha_s, alpha_l2, L2);
	local_gamma_2 = gamma_2_function(alpha_s, alpha_l2);
end
