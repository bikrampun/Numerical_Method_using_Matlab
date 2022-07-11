%Title: To Fit a st line to the given data set using least square method
%Developed by: Bikram Pun
%Date: 11 July 2022
%-----------------------------------------------------------------
%---------Three critical statement----------------------------
%-----------------------------------------------------------------
close all;
clear variables;
clc;
%-----------------------------------------------------------------
%-----------user input section--------------------------
%-----------------------------------------------------------------
x=input('Enter the value of x[]=');
y=input('Enter the value of y[]=');
% here  ~= is not equal to

while(length(x)~=length(y))
    clc;
    disp('Dimension of x and y must be same.');
    x=input('Enter the value of x[]=');
    y=input('Enter the value of y[]=');
end
msg=[x;y];
disp(msg);

disp('----------------------------------');
disp('  x       y       xy      x^2');
disp('----------------------------------');
%-----------------------------------------------------------------
%-----------calculation section--------------------------
%-----------------------------------------------------------------
n=length(x);
sx=0;sy=0;sxx=0;sxy=0;
sum=0;
for(i=1: n)
    sx=sx+x(i);
    sy=sx+y(i);
    sxx=sxx+x(i)*x(i);
    sxy=sxy+x(i)*y(i);
    temp=[x(i)  y(i)    x(i)*y(i)       x(i)*x(i)];
    disp(temp);
end
disp('----------------------------------');
result=[sx  sy   sxy     sxx];
disp(result);
disp('----------------------------------');
%------------output----------------------------------
b=(n*sxy-sx*sy)/(n*sxx-sx*sx);
a=(sy-b*sx)/n;
op=strcat('the required curve of best fit is y=',...
    num2str(a),'+',num2str(b),'x');
disp(op);
