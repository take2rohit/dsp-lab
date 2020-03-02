clc; clear

a = [0.5 0.5 0.5 0.5 0 0 0 0];
a_mod = [ a(1) a(5) a(3) a(7) a(2) a(6) a(4) a(8)];
s1 = zeros(1,8);
s2 = s1;
w = s1;
op = s1;

for j=1:8
    w(j) = exp(2*i*pi* j / 8)
end

for i=1:2:8
     s1(i) = a_mod(i) + a_mod(i+1);
     s1(i+1) = a_mod(i) + a_mod(i+1);
end

s1

s1(4) = s1(4) * w(2)
s1(8) = s1(8) * w(2)

s1

for i=1:4:8

     s2(i) = s1(i) + s1(i+2);
     s2(i+1) = s1(i+1) + s1(i+3);
     s2(i+2) = s1(i) - s1(i+2);
     s2(i+3) = s1(i+1) - s1(i+3);
     
end

s2(6) = s2(6) * w(1)
s2(7) = s2(7) * w(2)
s2(8) = s2(8) * w(3)

for i=1:4
     op(i) = s2(i) + s2(i+4)
     op(i+4) = s2(i) - s2(i+4)
end

op