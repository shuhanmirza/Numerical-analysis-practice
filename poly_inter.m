clear all
clc


x = [0,15,30,45,60,75,80,89];

i = 1;
while i < 9
x(i) = x(i) * (pi /180);
i = i + 1 ;
end

y = tan(x)

matA = magic(8);

i = 1;
j = 1;
val = 1;
x = [0,15,30,45,60,75,80,89];

plot(x,y); hold on

while i < 9 
    j = 1;
    val = 1;
    while j < 9
        matA(i,j) = val;
        val = val * x(i);
        j = j + 1;
    end
    
    i = i + 1;
end

matA

matC = [y(1);y(2);y(3);y(4);y(5);y(6);y(7);y(8)]

x =  linsolve(matA,matC)

X = 45;
y = x(8)*power(X,7) +  x(7)*power(X,6) + x(6)*power(X,5) + x(5)*power(X,4) +  x(4)*power(X,3) +  x(3)*power(X,2) +  x(2)*power(X,1) +  x(1)*power(X,0) ;

X = 0
while X < 89

    y = x(8)*power(X,7) +  x(7)*power(X,6) + x(6)*power(X,5) + x(5)*power(X,4) +  x(4)*power(X,3) +  x(3)*power(X,2) +  x(2)*power(X,1) +  x(1)*power(X,0)
    X = X + 0.01;
    plot(X,y,'-r'); hold on
end




