clear all

u1 = 0;
u2 = 0;
h = 0.005;
c = 2 / sqrt(pi);

erf =  (u2-u1) * (exp(-(u2*u2)) + exp(-(u1*u1))) / 2;
erf = erf * c;

while u2 <= 10 
    erf =  (u2-u1) * (exp(-(u2*u2)) + exp(-(u1*u1))) / 2;
    erf = erf * c;
    
    plot(u2, erf, 'r'); hold on
    
    u2 =  u2 + h;
end


