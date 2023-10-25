clc; clear; clf;

rad = input("Enter the radius of circle : ");
x = input("Enter the X coordinates for center of circle : ");
y = input("Enter the Y coordinates for center of circle : ");
plotCircle(rad,x,y)
fprintf("\n Saumya Pathak [2022PPH6847] \n");

function i = plotCircle(rad,x,y)
    th = linspace(0,2*pi,100);
    X = rad*cos(th)+x;
    Y = rad*sin(th)+y;
    plot(X,Y); grid;
    set(gca, "XAxisLocation", "origin", "YAxisLocation", "origin")
end