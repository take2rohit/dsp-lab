function y = DFT_25(xn,N)
L = length(xn);
b = [];
if (N>=L)
xn = [xn zeros(1,N-L)];
for k = 0:1:N-1
a = 0;
for n = 0:1:N-1
a = a + xn(n+1)*exp(-1j*2*pi*k*n/N);
end
b = [b a];
end
end
y = b;