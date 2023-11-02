clc; clear;

% X = [1891 1901 1911 1921 1931];
% Y = [46 66 81 93 101];
X = input("Enter X matrix : ");
Y = input("Enter Y matrix : ");

x = input("Enter the point of enquiry : ");

newtonFr(X,Y,x);
fprintf("\n Saumya Pathak [2022PPH6847] \n");

function y = newtonFr(X,Y,x)
    if x<X(1) || x>X(5)
        disp("ERROR : Inquired value can not be evaluated withing given data bounds.");
        return;
    end
    h = X(2) - X(1);
    for i =1:4
        Y1(i) = Y(i+1)-Y(i);
    end
    for i =1:3
        Y2(i) = Y1(i+1)-Y1(i);
    end
    for i =1:2
        Y3(i) = Y2(i+1)-Y2(i);
    end
    Y4 = Y3(2)-Y3(1);
    p = (x-X(1))/h;
    y = Y(1)+Y1(1)*p+Y2(1)*(p*(p-1))/2+Y3(1)*(p*(p-1)*(p-2))/6+Y4*(p*(p-1)*(p-2)*(p-3))/24;
    disp("For given point "+string(x)+", value is calculated to be "+string(y));
end
