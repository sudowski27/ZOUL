clear all
close all
clc
% TEST1
x = 0;
y = 0;
OMEGA2_F = 2.5*1e-6;
ExpectedVal = sqrt(2/pi) * 1/(OMEGA2_F/2);
ValForTEST1 = function_psi_f(x,y, OMEGA2_F);
ErrorTEST1 = abs(ExpectedVal - ValForTEST1);
%disp(ErrorTEST1)
assert( ErrorTEST1 < 0.1 , "TEST1 FAILED")
disp("TEST1 PASSED")

%TEST2
x = 1;
y = 1;
ExpectedVal = sqrt(2./pi) .* 1./OMEGA2_F./2 .* exp(-2./((OMEGA2_F./2).^2));
ValForTEST2 = function_psi_f(x, y, OMEGA2_F);
ErrorTEST2 = abs(ExpectedVal - ValForTEST2);
assert( ErrorTEST2 < 0.1 , "TEST2 FAILED")
disp("TEST2 PASSED")

%TEST3
x = 0;
y = 0;
OMEGA2_X = 4.5*1e-6;
OMEGA2_Y = 4.5*1e-6;
ExpectedVal = sqrt(2/(pi*OMEGA2_X/2*OMEGA2_Y/2));
ValForTEST3 = function_psi_b(x,y,OMEGA2_X, OMEGA2_Y);
ErrorTEST3 = abs(ExpectedVal - ValForTEST3);
assert( ErrorTEST3 < 0.1 , "TEST3 FAILED")
disp("TEST3 PASSED")

%TEST4
x = 1;
y = 1;
OMEGA2_X = 4.5*1e-6;
OMEGA2_Y = 4.5*1e-6;
ExpectedVal = sqrt(2/(pi*OMEGA2_X/2*OMEGA2_Y/2)) * exp(-1/((OMEGA2_X/2)^2)) * exp(-1/((OMEGA2_Y/2)^2));
ValForTEST4 = function_psi_b(x,y,OMEGA2_X, OMEGA2_Y);
ErrorTEST4 = abs(ExpectedVal - ValForTEST4);
assert( ErrorTEST4 < 0.1 , "TEST4 FAILED")
disp("TEST4 PASSED")

%TEST5
OMEGA2_F = 1;
OMEGA2_X = 1;
Lambda = 1;
DeltaZ = 1;
DeltaX = 1;

ExpectedVal = OMEGA2_F./2 ./ (OMEGA2_X./2);
ExpectedVal = ExpectedVal + (OMEGA2_X./2) ./ (OMEGA2_F./2);
ExpectedVal = ExpectedVal .^ 2;
ExpectedVal = ExpectedVal + Lambda.^2*DeltaZ.^2 ./ (pi.^2 .* (OMEGA2_X./2).^2 .* (OMEGA2_F./2).^2);
ExpectedVal = sqrt(ExpectedVal);
ExpectedVal = 1 ./ ExpectedVal;
ExpectedVal = 2 .* ExpectedVal;
ExpectedVal = ExpectedVal .* exp(-2 .* DeltaX.^2 ./ ((OMEGA2_F./2).^2 + (OMEGA2_X./2).^2));
ValForTEST5 = function_eta_x(OMEGA2_F, OMEGA2_X, Lambda, DeltaZ, DeltaX);
ErrorTEST5 = abs(ValForTEST5 - ExpectedVal);
assert (ErrorTEST5 < 1e-3, "TEST5 FAILED")
disp("TEST5 PASSED")