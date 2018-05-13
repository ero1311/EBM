function [ value ] = Dose(x,y,d)
    value=0;
    [M,N]=size(d);
    for m=1:M
        for n=1:N
            value=value+d(m,n)*sin(m*pi*x/10)*sin(n*pi*y/10);
        end
    end
end

