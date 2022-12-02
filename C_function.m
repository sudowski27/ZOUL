function C = C_function(alpha_s, L1, r_1, r_2, alpha_l2, L2, P_out_slash_P_sg, Beta, L)
	zmin = L1;
	zmax = L;

	fun = @(z) arg_for_C_integral_function(alpha_s, L1, r_1, r_2, alpha_l2, L2, z, P_out_slash_P_sg, Beta);

	C = integral(fun, zmin, zmax);
end
