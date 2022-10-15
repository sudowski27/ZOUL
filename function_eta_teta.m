function calculated_eta_teta = function_eta_teta(Omega2_F, Omega2_X, Lambda, Delta_Teta)
    PartOneOfExpArg = -2.*pi.^2 ./ (Lambda.^2);
    
    OmegaF = Omega2_F ./ 2;
    OmegaX = Omega2_X ./ 2;
    
    
    Delta_Teta = deg2rad(Delta_Teta);
    NomOfPartTwoExpArg = Delta_Teta.^2.*(OmegaF).^2.*(OmegaX).^2;
    DenomOfPartTwoExpArg = OmegaF.^2 + OmegaX.^2;
    PartTwoOfExpArg = NomOfPartTwoExpArg ./ DenomOfPartTwoExpArg;
    
    ArgOfExp = PartOneOfExpArg .* PartTwoOfExpArg;
    
    calculated_eta_teta = exp(ArgOfExp);
end
