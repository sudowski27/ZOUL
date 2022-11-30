function integral = g_0_denominator(L_1, r_1, r_2, alpha_s, alpha_l2, L_2, z, P_out_slash_P_sg)
	zmin = 0;
	zmax = L_1;
	fun = @(z) arg_for_g_0_integral_in_denominator(L_1, r_1, r_2, alpha_s, alpha_l2, L_2, z, P_out_slash_P_sg);

	bare_integral = integral(fun, zmin, zmax);

	integral = 2 .* bare_integral;
end
