clc; clear;

f = input("Enter function : ");
a = input("Enter lower limit of integration : ");
b = input("Enter upper limit of integration : ");
iter = input("Enter number of iterations : ");

s13(f,a,b,iter);
fprintf("\n Saumya Pathak [2022PPH6847] \n");

function in = s13(f,a,b,n)
    delx = (b-a)/n;
    A = 0;
    for i = 1:n-1
        xi = a + i*delx;
        add = f(xi);
        if mod(i,2) == 0 
            A = A + 2*f(xi);
        else
            A = A + 4*f(xi);
        end
    end
    d = f(a)+f(b);
    in = (delx/3)*(d+A);
    disp("Approximated value of integral : "+string(in))
end


