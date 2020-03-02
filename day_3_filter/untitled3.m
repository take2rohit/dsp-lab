clear all;
clc;
f=50;
fs = 75;
ts=1/fs;
i=1;

for w= pi:1:2*pi
for n = 1:1:10
X(w)=X(w)+ sin(2*pi*f*n*ts)*exp(-j*w*n);
end
X(i)

end
plot (w,X(w));

