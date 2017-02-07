clear all
clc

x = [0 1 2 5 5.4 5.5 6 7];
y = [ -9.4548   -9.0192   -8.9306   -7.5494   -2.7603    7.2327   15.6676 16];
i = 1;
while i <= 8
   plot(x(i),y(i),'ob'); hold on
    i = i+1;
end

fn = y(1);
i = 1;
j = 1;
n = 1;
d = 1;

an = x(1)+ 0.001 ;
ao = x(1);
fo = fn;

while an < x(8)

    i = 1;
    j = 1;
    
    fn = 0;
    while i <= 8
       j = 1;
       n = 1;
       
       while j <= 8
           
           if ~(i == j)
               n = n*(an - x(j));
           end
           j = j+1;
       end
       
       n = n * y(i);
       
       d = 1;
       j = 1;
       while j <= 8
           
           if ~(i == j)
               d = d*(x(i) - x(j));
           end
           j = j + 1;
           
       end
       
       fn = fn + n/d;
       i = i + 1;
    end
    
    px = [ao an];
    py = [fo fn];
    
    plot(px,py,'r');
    
    ao = an;
    an = an + 0.001;
    fo = fn;
end