close all;
clear; clc;
syms n

n = 0:1/15000:4/500;
imp = zeros(1, length(n));
imp(1,1) = 1;
x = imp;
y1 = zeros(1, length(n));
y = sin(2*pi*n*500) +  sin(2*pi*n*1500);

y1(1,1) = x(1);
y1(1,2) = x(2) + 2.56*y1(1, 1);
y1(1,3) = x(3) + 2.56*y1(1, 2) - 2.22*y1(1, 1);
y1(1,4) = x(4) + 2.56*y1(1, 3) - 2.22*y1(1, 2) + x(1) + 0.65*y1(1, 1);

for i = 5:1:49
y1(1, i) = x(i) + x(i-3) + 2.56*y1(1, i-1) - 2.22*y1(1, i-2) + 0.65*y1(1,i-3);
y1(1, i)

end

% opt = ifft(fft(y1) .* fft(y))
% stem(n, opt)
% hold on
plot(n,y)