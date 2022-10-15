clear all
close all
clc
% TEST1
x = 0;
y = 0;
global OMEGA2_F
OMEGA2_F = 2.5*1e-6;
ExpectedVal = sqrt(2/pi) * 1/OMEGA2_F/2;
ValForTEST1 = function_psi_f(x,y);
ErrorTEST1 = abs(ExpectedVal - ValForTEST1);
assert( ErrorTEST1 > 0.1 , "TEST1 FAILED")
disp("TEST1 PASSED")

%TEST2
x = 1;
y = 1;
ExpectedVal = sqrt(2./pi) .* 1./OMEGA2_F./2 .* exp(-2./((OMEGA2_F./2).^2));
ValForTEST2 = function_psi_f(x,y);
ErrorTEST2 = abs(ExpectedVal - ValForTEST2);
assert( ErrorTEST2 > 0.1 , "TEST2 FAILED")
disp("TEST2 PASSED")