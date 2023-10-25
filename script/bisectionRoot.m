clc; clear; clf;

a = input("Enter LHS approximation : ");
b = input("Enter RHS approximation : ");
f = input("Enter function : ");
tol = input("Enter allowed tolerance : ");
iterMx = input("Enter maximum iterations : ");
root(f,a,b,tol,iterMx);
fprintf("\n Saumya Pathak [2022PPH6847] \n");
arg = linspace(a,b,1000);
for l=1:1000
    FX(l) = f(arg(l));
end
plot(arg,FX);  set(gca, "XAxisLocation", "origin", "YAxisLocation", "origin");

function x = root(f,a,b,tol,iterMx)
    if f(a)*f(b)<0
        
        for i=1:iterMx
            x = (a+b)/2;
            if f(x)*f(b)<0
                a = x;
            elseif f(a)*f(x)<0
                b = x;
            end
            X(i) = x; A(i) = a; B(i) = b;
            if i>1
                err = abs(X(i)-X(i-1));
                ERR(i) = err;
                if err<=tol
                    break;
                end
            end
        end
    else
        disp("Root does not lie between given values.");
    end
    T1 = table(A', B', ERR', X');
    newVar = ["LHS Approximation","RHS Approximation","Relative Error","Root"];
    T1.Properties.VariableNames = newVar;
    disp(T1);
    disp("Calculated value of root = "+string(X(i)))
end
