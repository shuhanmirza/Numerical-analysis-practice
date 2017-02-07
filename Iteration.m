clear all

xi = 1;
fx = xi^3 + xi^2 - 9*xi - 9;
gx = (xi^3 + xi^2 - 9)/9;
gxdx = (xi^2)/3 + (2*xi)/9;

if abs(gxdx) < 1
    e = 100;
    xi = gx;
    while(e > 1)
        gx = (xi^3 + xi^2 - 9)/9;
        xi = gx;
        e = abs((gx - xi) / xi ) * 100;
    end
    xi
end

if abs(gxdx) >= 1
    out = 'will not converge';
    out
end