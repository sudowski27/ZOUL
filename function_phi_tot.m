function calculated_phi_tot = function_phi_tot(Omega2_F, Omega2_X,DeltaX, DeltaZ,Delta_Teta, N_0, Lambda)
    n_tot = function_eta_tot(Omega2_F, Omega2_X,DeltaX, DeltaZ,Delta_Teta, N_0, Lambda);
    
    Log_n_tot = log10(n_tot);
    
    calculated_phi_tot = -10 .* Log_n_tot;
end
