function [y] = DFT_calc(x,N)

y=1;

    if N == 1
        return
    
    else
        x1 = x(1:N/2);
        x2 = x(N/2+1:N);
        
        X1 = DFT_calc(x1,N/2);
        X2 = DFT_calc(x2,N/2);
        
        Z = fft(X1) + exp(2*i*pi* j / N) * fft(X2)
     end   

        
return
end

