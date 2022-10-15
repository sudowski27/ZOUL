function calculated_G = function_G(DeltaZ,Omega2_X, N_0, Lambda)
    Numerator = 2.*DeltaZ;
    
    Omega_X = Omega2_X ./ 2;
    Denom = function_k(N_0, Lambda) .* Omega_X.^2;
    
    calculated_G = Numerator ./ Denom;
end
