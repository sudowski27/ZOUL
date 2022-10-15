function calculated_eta_x = function_eta_x(Omega2_F, Omega2_X, Lambda, Delta_Z, Delta_X)
    EtaXNumerator = 2;
    
    % Denominator of EtaS
    OmegaF = Omega2_F ./ 2;
    OmegaX = Omega2_X ./ 2;
    PartOneOfDenom = OmegaF ./ OmegaX;
    PartOneOfDenom = PartOneOfDenom + (OmegaX ./ OmegaF);
    PartOneOfDenom = PartOneOfDenom .^ 2;

    PartTwoOfDenom = Lambda .^ 2;
    PartTwoOfDenom = PartTwoOfDenom * (Delta_Z .^ 2);
    PartTwoOfDenom = PartTwoOfDenom ./ (pi.^2);
    PartTwoOfDenom = PartTwoOfDenom ./(OmegaX.^2);
    PartTwoOfDenom = PartTwoOfDenom./(OmegaF.^2);
    
    EtaXDenominator = PartOneOfDenom + PartTwoOfDenom;
    EtaXDenominator = sqrt(EtaXDenominator);
    
    ArgForExpNumerator = -2.*Delta_X.^2;
    ArgForExpDenom = OmegaF.^2 + OmegaX.^2;
    ArgForExp = ArgForExpNumerator ./ArgForExpDenom;

    ExpPartOfEtaX = exp(ArgForExp);
    
    calculated_eta_x = EtaXNumerator ./EtaXDenominator;
    calculated_eta_x = calculated_eta_x .* ExpPartOfEtaX;
end
