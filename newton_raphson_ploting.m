clear all
clc

xo = 0:0.1:5;
yo = xo.^xo - 5;

plot(xo,yo,'r'); hold on

xi = 5;

fx = xi^xi - 5;
fxdx = xi^xi * ( log(xi) + 1);

xj = xi - (fx)/fxdx;


e = 100;
time = 1;
while(e > 0.000000000000001 )
    xi = xj;
    
    fx = vpa(xi^xi - 5);
    fxdx = vpa(xi^xi * ( log(xi) + 1));
    
    xj = xi - fx/fxdx;
    e = abs((xi-xj)/xi)*100;
    
    time = time+1;
    
    m = [xi,xj];
    n = [fx,0];
    plot(m,n,'b'); hold on
    
end

xi





