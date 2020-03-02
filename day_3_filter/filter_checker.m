close all;
clear; clc;
n = 0:1/15000:2/500;

y= sin(2*pi*n*500) +  sin(2*pi*n*1500);

% fou = fft(op);
% subplot(1,2,1)
% plot(abs(fft(op))), title('MAGNITUDE PLOT')
% subplot(1,2,2)
% plot(angle(fft(op))), title('PHASE PLOT')
% 
% stem(op),title('Filter response'), xlabel('n'), ylabel('amplitude');

fft()
noisy_output = awgn(y,5)
op = filter([1, 0, 0, 1],[1, -2.56, 2.22, -0.65], y);
figure(1)
stem(n,noisy_output),title('Noisy response'), xlabel('n'), ylabel('amplitude');

hold on
plot(n, y)
figure(2)
hold on
stem(n,op),title('Filtered response'), xlabel('n'), ylabel('amplitude');
