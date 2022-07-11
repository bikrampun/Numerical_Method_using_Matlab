%Title: To Evaluate Functional value of a discrete function using
%langranges's Interpolation
%Developed by: Bikram Pun
%Date: 04 July 2022
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
n=length(x);
msg=[x;y];
disp(msg);

X=input('Input the value at which y is to be calculated x=');
%-----------------------------------------------------------------
%-----------calculation section--------------------------
%-----------------------------------------------------------------
sum=0;
for(i=1: n)
    temp=1;
    for(j=1:n)
        if(i~=j)
            temp=temp*(X-x(j))/(x(i)-x(j));
        end
    end
    sum=sum+temp*y(i);
end
%------------output--------------
result=strcat('The value at given x is: ',num2str(sum));
disp(result);
    