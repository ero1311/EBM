function [ value ] = Exposure(x,y,e)
    value=0;
    [M,N]=size(e);
    for m=1:M
        for n=1:N
            value=value+e(m,n)*sin(m*pi*x/10)*sin(n*pi*y/10);
        end
    end
end

