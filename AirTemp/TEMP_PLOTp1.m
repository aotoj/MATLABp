close all; clear; clc;
n_vec = 1:100;
num_distinct_sol = 1;
for x = 2:100
    Y = 1:ceil(x^2/2);
    MULT = [Y(rem(x^2, Y)==0) x^2];
    num_distinct_sol = [num_distinct_sol (size(MULT,2)+1)/2];
end

plot(n_vec,num_distinct_sol,'-bo')