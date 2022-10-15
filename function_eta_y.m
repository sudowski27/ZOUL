function calculated_eta_y = function_eta_y(Omega2_F, Omega2_Y, Lambda, Delta_Z, Delta_Y)
    NominatorOfETA_Y = 2;
    
    %Denom of Eta_Y
    OmegaF = Omega2_F ./ 2;
    OmegaY = Omega2_Y ./ 2;
    
    PartOneOfDenom = OmegaF ./ OmegaY + OmegaY ./ OmegaF;
    PartOneOfDenom = PartOneOfDenom .^ 2;
    PartTwoOfDenom = Lambda.^2 .* Delta_Z.^2;
    PartTwoOfDenom = PartTwoOfDenom ./ (pi.^2);
    PartTwoOfDenom = PartTwoOfDenom ./ (OmegaF.^2);
    PartTwoOfDenom = PartTwoOfDenom ./ (OmegaY.^2);
    
    DenomOfEta_Y = PartOneOfDenom + PartTwoOfDenom;
    DenomOfEta_Y = sqrt(DenomOfEta_Y);
    
    ExpArgNom = -2 .* Delta_Y.^2;
    ExpArgDenom = OmegaF.^2 + OmegaY.^2;
    
    ExpArg = ExpArgNom ./ ExpArgDenom;
    
    ExpPartOfEta_Y = exp(ExpArg);
    
    calculated_eta_y = NominatorOfETA_Y ./ DenomOfEta_Y;
    calculated_eta_y = calculated_eta_y .* ExpPartOfEta_Y;
end
