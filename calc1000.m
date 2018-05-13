clear;
clc;
[dose,exposure]=ExpDoseCoeffs(1000,1000,1,10,0.5);
[I,J]=size(x);
expos_eval=[];
for i=1:I
    for j=1:J
        expos_eval(i,j)=Exposure(x(i,j),y(i,j),exposure);
    end
end
surf(x,y,expos_eval);