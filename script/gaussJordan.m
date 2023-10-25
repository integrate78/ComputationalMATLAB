clc; clear;

m1 = input("Enter square matrix A : ");
m2 = input("Enter column matrix B : ");
gaussJ(m1,m2)
fprintf("\n Saumya Pathak [2022PPH6847] \n");

function X = gaussJ(m1,m2)
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
            for i=1:m
                if a(i,i)~=0
                    a(i,:) = a(i,:)./a(i,i);
                    if a(i,i)<0
                       a(i,:) = a(i,:).*(-1);
                    end
                end
                for j=1:m
                   if j~=i
                        a(j,:) = a(j,:)-a(i,:).*a(j,i);
                    end
                end 
            end
        end
    end
    disp("Reduced echelon form Matrix : "); disp(a);
    X = a(:,n);
end