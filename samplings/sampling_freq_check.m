freq1 = [80 250 5000]
freq2 = [100 320 5000]
freq3 = [125 320 5000]

for i=1:3
    fs = freq1(i);
    t = 0:1/fs:0.05;
    subplot(3,3,i)
    y1 = cos(2*pi*125*t);
    y1_fft = fft(y1)
    y1 = ifft(y1)
    fplot(@(x) cos(2*pi*125*x),[0 0.05])
    hold on
    plot(t,y1)
end

for i=1:3
    fs = freq2(i);
    t = 0:1/fs:0.05;
    subplot(3,3,i+3)
    y2 = cos(2*pi*160*t);
    fplot(@(x) cos(2*pi*160*x),[0 0.05])
    hold on
    plot(t,y2)

end

for i=1:3
    
    fs = freq3(i);
    t = 0:1/fs:0.05;
    y1 = cos(2*pi*125*t);
    y2 = cos(2*pi*160*t);
    y3 = y1+y2;
    subplot(3,3,i+6)
    fplot(@(x) cos(2*pi*160*x)+cos(2*pi*125*x),[0 0.05])
    hold on
    plot(t,y3)
end