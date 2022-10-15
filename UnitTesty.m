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
disp(ValForTEST4)
assert( ErrorTEST4 < 0.1 , "TEST4 FAILED")
disp("TEST4 PASSED")