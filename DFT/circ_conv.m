x = [1 3 -2 4 7];
x_len = length(x);

h = [3 1 21 -3 0];
h_len = length(h);

h = [h zeros(x_len - h_len)]

op= zeros(1,x_len)

for i=1:x_len
    op(1,i) = sum(x .* circshift(h,i));
end
op