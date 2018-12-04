clc
clear

num_experiment = 10;
resolution = 1E-15;
N = 100;
time_LAPJV = zeros(num_experiment ,1);
time_Bregman = zeros(num_experiment ,1);
objective_value = zeros(num_experiment ,1);
for i = (1 : num_experiment)
    A = rand(N);
    
    % LAPJV
    tic
    [rowsol,cost,v,u,costMat]=lapjv(A);
    time_LAPJV(i) = toc;
    
    % Bregman divergence approach
    tic
    V = assbreg(A);
    objective = -sum(sum(A.*V));
    time_Bregman(i) = toc;
    objective_value(i) = objective;
end







