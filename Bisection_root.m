clear all
clc

L = 1;
H = 2;
mid = (L+H)/2;

x = mid^2 - 2 ;

e = 100;
while(e > 0.001)
        
    if( x < 0)
        L = mid;
    end
    
    if( x > 0)
        H = mid;
    end
    
    old_mid = mid;
    
    mid = (L+H)/2

    x = mid^2 - 2 ;
    
    e = abs((old_mid - mid)/old_mid) * 100;
end

mid
        