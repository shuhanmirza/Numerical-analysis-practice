clear all

h = 0.01;
x = sqrt(2);
y = 0;
yold = y;

k1 = x*exp(-y);
k2 = (x+(h/2)) * exp(-(y+(k1*(h/2))));
ynew = yold + (k2*h);

while x < 10 
    
    k1 = x*exp(-y);
    k2 = (x+(h/2)) * exp(-(y+(k1*(h/2))));
    ynew = yold + (k2*h);
    
    yold = ynew;
    
    x = x+h;
    y = yold;
    
    plot(x,y,'r'); hold on
    
end

y