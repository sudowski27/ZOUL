function calculated_F = function_F(Delta_X, Omega2_X, N_0, Lambda)
    Omega_X = Omega2_X ./2;
    Numerator = 2 .* Delta_X;
    Denom = function_k(N_0, Lambda);
    Denom = Denom .* Omega_X.^2;
    calculated_F = Numerator ./Denom;
end
