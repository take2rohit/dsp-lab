clc;clear
N = 8;
a = [0.5 0.5 0.5 0.5 0 0 0 0];

stages =log2(N)
layers = zeros(stages,N)

y = DFT_calc(a,length(a)) 

