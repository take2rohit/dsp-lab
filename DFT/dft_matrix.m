clc;clear;
fs = 1000;
N = 2^13;
t = 0:1/fs:(N-1)/fs;
Y = sin(2 * pi * t/10) + sin(2 * pi * t/5)
w = exp(-i*2*pi/N);
M = ones(N, N);

for col=0:N-2
    for row=0:N-2
        M(row+2,col+2) = w ^ ( row+1 + (row+1)*col ) ;
    end
end

output = M * Y';

n = 2^nextpow2(N);
plot(0:(fs/n):(fs-fs/n), abs(output));

M_inv = inv(M);

reconstructed = M_inv * output;
plot(t,abs(reconstructed))

plot(t, Y)
