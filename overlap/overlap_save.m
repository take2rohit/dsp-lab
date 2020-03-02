clc; clear
h = [2 2 1];
x = [3 0 -2 0 2 1 0 -1 -2 0 3 0 -2 0 2 1 0 -1 -2 0 3 0 -2 0 2 1 0 -1 -2 0 3 0 -2 0 2 1 0 -1 -2 0];
disp(length(x))
M = length(h);
L = 2 ^ M;
N = L - M + 1;
h1 = [h zeros(1,N-1)];

X = zeros(length(x)/L, L);
Y = zeros(length(x)/L, L);

X(1,:) = [zeros(1,L-N) x(1:N)]
Y(1,:) = cconv(X(1,:), h1, L);

for i=2:length(x)/L 
    X(i,:) = [X(i-1,N+1:L) x(N*(i-1)+1: N*(i))];
    Y(i,:) = cconv(X(i,:), h1, L);
end

Z = Y(:,M:L)
size_z = size(Z)
output = reshape(Z,[1,size_z(2)*size_z(1)])