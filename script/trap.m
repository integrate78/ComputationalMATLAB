clc; clear;

f = input("Enter function : ");
a = input("Enter lower limit of integration : ");
b = input("Enter upper limit of integration : ");
iter = input("Enter number of iterations : ");

trapez(f,a,b,iter);
fprintf("\n Saumya Pathak [2022PPH6847] \n");

function in = trapez(f,a,b,n)
    delx = (b-a)/n;
    A = 0;
    for i = 0:n
        xi = a + i*delx;
        add = f(xi);
        if i == 0 || i==n
            A = A + f(xi);
        else
            A = A + 2*f(xi);
        end
    end
    in = (delx/2)*(A);
    disp("Approximated value of integral : "+string(in));
end