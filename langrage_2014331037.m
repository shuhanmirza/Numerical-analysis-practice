%2014331037
clc
clear all

f = [1 -3 3 -10];

x = 0:0.001:4;
y = polyval(f,x);
plot(x,y,'g') ; hold on


x = [0.231 0.732 1.411 2.132 2.841 3.532 3.911];
y = [ -9.4548   -9.0192   -8.9306   -7.5494   -2.7603    7.2327   15.6676];
%y = [ -9.4548   -9.0192   -8.9306   3   -2.7603    7.2327   15.6676];

i = 1;

while i <= 7
   plot(x(i),y(i),'or'); hold on
    i = i+1;
end

a = 0 ;
i = 1;
d = 1;
g = 0;
l = 1;
while a <= 4
  
    g = 0;
    i = 1;
    while i <= 7
        
        j = 1;
        l = 1;
        while j <= 7            
            if ~(i == j)
                l = l * (a - x(j));
            end 
            j = j + 1;
        end
        
        l = l * y(i);
        
        j = 1;
        d = 1;
        while j <= 7  
            
            if ~ (i == j )
                d = d * (x(i) - x(j));
            end
            
            j = j + 1;
        end
        
        g = g + l/d;
        
        i = i + 1;
    end
    
    plot(a,g,'b'); hold on
    
    a = a + 0.0001;
end