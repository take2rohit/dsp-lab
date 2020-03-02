clc; clear;
x = [0 1 2 3 4 5 6 7 8 9 10 11 12 13 14];
L = 5; M =3;
calc = zeros(L,M);
calc2 = zeros(L,M);
final = zeros(1,L*M);

for col=1:M
    for row=1:L
        calc(row,col) = x(row + (col-1)*L ) ;
    end
end

for row=1:L
    for col=1:M
        calc2(row,:) = fft(calc(row,:));
    end
end

for row=1:L
    for col=1:M
        calc2(row,col) = calc2(row,col) * exp(-1i*2*pi*(row-1)*(col-1)/(L*M));
    end
end

for col=1:M
    calc2(:,col) = fft(calc2(:,col));
end

if single(fft(x)) - single(reshape(calc2.',1,L*M)) == zeros(1,L*M)
    disp("Verified Divide and conquer")
end
