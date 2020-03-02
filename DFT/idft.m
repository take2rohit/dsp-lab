function y = IDFT_25(Xk,N)
L = length(Xk);
b = [];
if(N>=L)
Xk = [Xk zeros(1,N-L)];
for n = 0:1:N-1
a = 0;
for k = 0:1:N-1
a = a + Xk(k+1)*exp(j*2*pi*k*n/N);
end
b = [b a/N];
end
end
y = b;