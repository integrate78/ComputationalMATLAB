clc; clear;

m1 = input("Enter square matrix A : ");
m2 = input("Enter column matrix B : ");
gaussEl(m1,m2)
fprintf("\n Saumya Pathak [2022PPH6847] \n");

function X = gaussEl(m1,m2)
    if size(m1)-size(m1)' ~= [0,0]
        disp("Error : Entered matrix A is not square matrix.");    
        return;
    end
    if size(m1,1) ~= size(m2,1)
        disp("Error : Entered matrix B is not dimensionally correct."); 
        return;
    end
    a = [m1 m2];
    [m,n] = size(a);
    for i=1:m
        for j=2:m
            if abs(a(i,i))<abs(a(j,i))
                x = a(i,:);
                a(i,:) = a(j,:);
                a(j,:) = x;
            end
        end
    end
    disp("Augmented Matrix : "); disp(a);
    for i=1:m
        if a(i,i) == 0
            disp("Error : Entered matrix has Zero on diagonal matrix");
            return;
        else
            for j=i+1:m
                a(j,:) = a(j,:)-(a(j,i)/a(i,i)).*a(i,:);
            end
        end
    end
    disp("Upper triangular Matrix : "); disp(a);
    X(m,1) = a(m,n)./a(m,m);
    for i=m-1:-1:1
        X(i)=(a(i,n)-a(i,i+1:n-1)*X(i+1:m,1))./a(i,i);  
    end
end