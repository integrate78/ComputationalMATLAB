clc; clear;

m1 = input("Enter square matrix A : ");
m2 = input("Enter square matrix B : ");
scalar(m1,m2);
vector(m1,m2);
fprintf("\n Saumya Pathak [2022PPH6847] \n");

function dS = scalar(m1,m2)
    dS = m1*m2';
    disp("Dot product of M1 and M2 = "+string(dS)); 
end
function dV = vector(m1,m2)
    a = [m1;m2];
    for i=1:size(m1,2)
        a(:,i) = [];
        if mod(i,2)~=0
            dV(i) = det(a);
            a = [m1;m2];
        else
            dV(i) = -det(a);
            a = [m1;m2];
        end
    end
    disp("Cross product of M1 and M2 : "); disp(dV);
end