clear;

i = input("Press [1] to convert C to F or Press [2] to convert F to C : ");
convert(i);
fprintf("\n Saumya Pathak [2022PPH6847] \n");

function y = convert(i)
    if i == 1
        x = input("Enter temperature in Celsius : ");
        y = ((9/5)*(x)) + 32;
        disp("Temperature in Fahrenhite = "+string(y));
    elseif i ~= 1
        x = input("Enter temperature in Fahrenhite : ");
        y = (x - 32)*(5/9);
        disp("Temperature in Celsius = "+string(y));
    end
end