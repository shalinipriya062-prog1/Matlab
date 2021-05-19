% WRITE HERE YOUR SCRIPT FOR EXERCISE 7
flag = 0;
n = 0;
fact = 1;
approx_e = 1;

while (flag == 0)
    n = n+1;
    fact = fact*n; %calculating factorial
    approx_e = approx_e + 1/fact; %calculating approximate e as given in question
    if(abs(exp(1)-approx_e)<0.00001)
        fprintf('Build in value of e : %0.5f . Approximation of e : %0.5f \n',exp(1),approx_e);
        fprintf('n required for this accuracy: %d\n',n);
        flag = 1;   %to end the loop
    end
end