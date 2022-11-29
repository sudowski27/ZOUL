function arg = arg_for_g_0_integral_in_denominator(L_1, r_1, r_2, alpha_s, alpha_l2, L_2, z, P_out_slash_P_sg)
	numerator = numerator_arg_for_g_0_integral_in_denominator(L_1, r_1, r_2, alpha_s, alpha_l2, L_2, z);
	denominator = denominator_arg_for_g_0_integral_in_denominator(L_1, r_1, r_2, alpha_s, alpha_l2, L_2, z, P_out_slash_P_sg);

	arg = numerator ./ denominator;
end
