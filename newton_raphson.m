clear all

fx = [1 -5 -2 24];
fxdx = [3 -10 -2];

x = -5:0.1:20;
y = polyval(fx,x);
plot(x,y,'k');hold on

xi = 10;
xj = xi - (polyval(fx,xi)/polyval(fxdx,xi));

e = 100;
time = 1;
while(e > 0.00001 )
    xi = xj;
    xj = xi - (polyval(fx,xi)/polyval(fxdx,xi));
    e = abs((xi-xj)/xi)*100;
    
    time = time+1;
    stem(xi,e); hold on
end

xi
time