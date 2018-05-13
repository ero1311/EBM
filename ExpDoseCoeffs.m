function [ dose, exposure ] = ExpDoseCoeffs(M,N,alpha,beta,eta)
    dose=[];
    exposure=[];
    for m=1:M
        for n=1:N
            exposure(m,n)=4*((cos(9*pi*n/10)-cos(pi*n/10))*(cos(3*pi*m/10)+cos(9*pi*m/10)-cos(pi*m/10)-cos(7*pi*m/10))+(cos(6*pi*n/10)-cos(4*pi*n/10))*(cos(7*pi*m/10)-cos(3*pi*m/10)))/(pi*pi*m*n);
            dose(m,n)=exposure(m,n)*(1+eta)/(exp(-(pi*alpha/20)^2*(m^2+n^2))+eta*exp(-(pi*beta/20)^2*(m^2+n^2)));
        end
    end
end

