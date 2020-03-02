clc; clear;
a = [1 2 3 2 3 4];
b = [4 1 1 3 8];
len_a = length(a);
len_b = length(b);
op = zeros(1,len_a + len_b -1);
rev = flip(b);

p = [zeros(1,len_b-1) a zeros(1,len_b-1)]

for i =1:len_a+len_b-1
        op(i) = sum(p(i:i+len_b-1) .* rev)
end
