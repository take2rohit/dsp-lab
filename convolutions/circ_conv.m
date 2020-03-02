clc; clear;
a = [1 2 3 2 3 4];
b = [1 2 3];

len_a = length(a); len_b = length(b)

if len_a > len_b
    b = [zeros(1, len_a-len_b) b];
else
    a = [zeros(1, len_b-len_a) a];
end


b_rev = flip(b);
op = zeros(1,len_a);

for i=1:len_a
	op(i) = sum(circshift(b_rev,i) .* a);
end

