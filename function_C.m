function calculated_C = function_C(Omega2_F, Omega2_X, DeltaX, DeltaZ, Delta_Teta, N_0, Lambda)
    % Part1
    D = function_D(Omega2_F, Omega2_X);
    F = function_F(DeltaX, Omega2_X, N_0, Lambda);
    Part1 = (D + 1).* (F.^2);
    
    % Part2
    Delta_Teta = deg2rad(Delta_Teta);
    G = function_G(DeltaZ, Omega2_X, N_0, Lambda);
    Part2 = 2.*D;
    Part2 = Part2 .* F;
    Part2 = Part2 .* G;
    Part2 = Part2 .* sin(Delta_Teta);
    
    % Part3
    Part3 = (G.^2 + D + 1).^2;
    Part3 = Part3 .* D;
    Part3 = Part3 .* (sin(Delta_Teta)).^2;
    
    calculated_C = Part1 + Part2 + Part3;
end
