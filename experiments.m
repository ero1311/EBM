clear;
clc;
[x,y]=meshgrid(0:0.1:10,0:0.1:10);
[I,J]=size(x);
M=[10,20,50,100];
N=[10,20,50,100];
figNum=1;
for m=M
    for n=N
        [dose,exposure]=ExpDoseCoeffs(m,n,1,10,0.5);
        expos_eval=[];
        for i=1:I
            for j=1:J
                expos_eval(i,j)=Exposure(x(i,j),y(i,j),exposure);
            end
        end
        figure(figNum);
        surf(x,y,expos_eval);
        title(strcat(strcat('M=',num2str(m)),strcat(',N=',num2str(n))));
        figNum=figNum+1;
    end
end
dose_eval=[];
for i=1:I
    for j=1:J
        dose_eval(i,j)=Dose(x(i,j),y(i,j),dose);
    end
end
figure(figNum);
surf(x,y,dose_eval);
title(strcat(strcat('Dose for M=',num2str(m)),strcat(',N=',num2str(n))));