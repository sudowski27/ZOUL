% Unit test for function function_psi_f()
x = 0;
y = 0;
global OMEGA2_F
OMEGA2_F = 2.5*1e-6;
ExpectedVal = sqrt(2/pi) * 1/OMEGA2_F/2;
ValForTEST1 = function_psi_f(x,y);
ErrorTEST1 = abs(ExpectedVal - ValForTEST1);
assert( ErrorTEST1 > 0.1 , "TEST1 FAILED")
disp("TEST1 PASSED")
