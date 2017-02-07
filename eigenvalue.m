clc
clear all

mat = magic(7);
e_new = [1;1;1;1;1;1;1];
e_old = e_new;

ans = max(eig(mat));
ans_mat = eig(mat);

e_new = mat * e_old;
ans_new = max(e_old);
ans_old = ans_new;
e_mat = e_new;
e_new = e_new / ans_old;


err = 100;

while err > 0.01
    
    e_new = mat * e_old;
    ans_new = max(e_new);
    e_mat = e_new;
    e_new = e_new / ans_new;
    
    err = abs(ans_new - ans_old) / ans_new;
    err = err * 100;
    
    ans_old = ans_new;
    e_old = e_new;
end
magic(7)
ans_new
e_new
        
