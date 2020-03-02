clear all;
clc;
f=50;
fs = 75;
ts=1/fs;
n= 0:1:100
x = sin (2*pi*f*n*ts);
stem (n,x);