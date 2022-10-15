function calculated_B = function_B(DeltaZ,Omega2_X, Omega2_F, N_0, Lambda)
    G = function_G(DeltaZ,Omega2_X, N_0, Lambda);
    Power2_G = G.^2;

    D = function_D(Omega2_F, Omega2_X);
    D = D + 1;
    D = D.^2;
    calculated_B = Power2_G + D;
end
