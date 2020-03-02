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

X(1,:) = [x(1:N) zeros(1,L-N)]
Y(1,:) = cconv(X(1,:), h1, L);

for i=2:length(x)/L 
    X(i,:) = [x(N*(i-1)+1: N*(i)) zeros(1,M-1) ];
    Y(i,:) = cconv(X(i,:), h1, L);
end
size_y = size(Y);

% for i = 1:size_y(1)
%     
% end
% Z = Y(:,M:L);
% size_z = size(Z);
% output = reshape(Z,[1,size_z(2)*size_z(1)]);