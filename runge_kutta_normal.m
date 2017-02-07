clc
clear all

h = 0.01;
x = sqrt(2);
y = 0;
yold = y;
    
 k1 = x*exp(-y);
 k2 = (x+h) * exp(-(y+(k1*h)));
 ynew = yold + (h*(k1+k2))/2;

while x <= 10 
    
    k1 = x*exp(-y);
    k2 = (x+h) * exp(-(y+(k1*h)));
    ynew = yold + (h*(k1+k2))/2;
    
    yold = ynew;
    
    x = x+h;
    y = yold;
    
    plot(x,y,'r'); hold on
    
end

y
