	denominator = g_0_denominator(L_1, r_1, r_2, alpha_s, alpha_l2, L_2, z, P_out_slash_P_sg);
function g_0 = g_0_function(r_1, r_2, alpha_s, L_1,alpha_l2, L_2, alpha_l1, L, P_out_slash_P_sg, Beta)
	numerator = g_0_numerator(r_1, r_2, alpha_s, L_1, alpha_l2, L_2,alpha_l1, L, P_out_slash_P_sg, Beta);

	g_0 = numerator ./ denominator;
end
