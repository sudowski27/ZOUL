function calculated_eta_tot = function_eta_tot(Omega2_F, Omega2_X,DeltaX, DeltaZ,Delta_Teta, N_0, Lambda)
    D = function_D(Omega2_F, Omega2_X);
    FirstPartNumerator = 4 .* D;
    B = function_B(DeltaZ, Omega2_X, Omega2_F, N_0, Lambda);
    FirstPartDenom = B;
    FirstPart = FirstPartNumerator ./ FirstPartDenom;
    
    A = function_A(Omega2_X, N_0, Lambda);
    C = function_C(Omega2_F, Omega2_X, DeltaX, DeltaZ, Delta_Teta, N_0, Lambda);
    ArgExpNom = -A .* C;
    
    ArgExpDenom = B;
    
    ArgExp = ArgExpNom ./ ArgExpDenom;
    
    SecondPart = exp(ArgExp);
    
    calculated_eta_tot = FirstPart .* SecondPart;
end
