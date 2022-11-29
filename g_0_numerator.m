function ans = g_0_numerator(r_1, r_2, alpha_s, L_1, r_1, alpha_l2, L_2, z, alpha_l1, L, P_out_slash_P_sg, Beta)
	ans = N_1_function(r_1, r_2);
	ans = ans + g_0_first_integral_in_numerator(alpha_s, L_1, r_1, r_2, alpha_l2, L_2, z, alpha_l1);
	ans = ans + g_0_second_integral_in_numerator(L_1, r_1, r_2, alpha_s, alpha_l2, L_2, z, L);
	ans = ans + C_function(alpha_s, L_1, r_1, r_2, alpha_l2, L_2, z, P_out_slash_P_sg, Beta, L);
end
