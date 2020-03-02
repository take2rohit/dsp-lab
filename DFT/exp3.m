clc;
clear all;
close all;

n=0:199;
x1=2*cos(2*pi*n/10)+cos(2*pi*n/5);
stem(n,x1);
figure;

x2=n;
stem(n,x2);
figure;

X1=[];
X1=dft(x1);
stem(n,abs(X1));
figure;

X2=[];
X2=dft(x2);
stem(n,abs(X2));
figure;

Y1=[];
Y1=idft(X1);
stem(n,Y1);
figure;

Y2=[];
Y2=idft(X2);
stem(n,Y2);
figure;


