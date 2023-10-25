clc; clear;

n = input("Enter the number : ");
calFact(n);
fprintf("\n Saumya Pathak [2022PPH6847] \n");

function fact = calFact(n)
    fact=1;
    for i=1:n
        fact=fact*i;
    end
    disp("Factorial of "+string(n)+" = "+string(fact));
end