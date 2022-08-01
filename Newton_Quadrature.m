%Title: To evaluate a definite Integrals by using Newton Cotes quadrature
%formula
%Developed by: Bikram Pun
%Date: 18 July 2022
%-----------------------------------------------------------------
%---------Three critical statement----------------------------
%-----------------------------------------------------------------
close all;
clear variables;
clc;
%-----------------------------------------------------------------
%-----------user input section--------------------------
%-----------------------------------------------------------------
func=input('Enter the function  f(x)=');
f=inline(func);
range=input('Enter the upper and lower limit of integration [a,b]=');
n=input('Enter the value for n=');
%-----------------------------------------------------------------
%-----------calculation section--------------------------
%-----------------------------------------------------------------
h=(range(2)-range(1))/n;
%-----here,h is step in for(loop)
for i=0:n
    x(i+1)=range(1)+i*h;
    y(i+1)=f(x(i+1));
end
op=[x;y];
disp(op);
%-----------------------------------------------------------------
%-----------trapezoidal rule--------------------------
%-----------------------------------------------------------------
if n<2
    display('Trapezoidal rule cant be applied');
else
    sum=y(1)+y(n+1);
    for i=2:n
        sum=sum+2*y(i);
    end
    sum=(h/2)*sum;
    result=strcat('The integration by Trapezoidal rule is I=',num2str(sum));
    disp(result);
end
%-----------simpson 1/3rd rule--------

if (n<2||mod(n,2)~=0)
    display('simpson 1/3rd rule cant be applied');
else
    sum=y(1)+y(n+1);
    for i=2:n
        if(mod(i-1,2)~=0)
            sum=sum+4*y(i);
        else
            sum=sum+2*y(i);
        end
    end
    sum=(h/3)*sum;
    result=strcat('The integration by Trapezoidal rule is I=',num2str(sum));
    disp(result);
end
%-----------simpson 3/8th rule--------
if (n<2||mod(n,3)~=0)
    display('simpson 3/8th rule cant be applied');
else
    sum=y(1)+y(n+1);
    for i=2:n
        if(mod(i-1,3)~=0)
            sum=sum+3*y(i);
        else
            sum=sum+2*y(i);
        end 
    end
    sum=(3*h/8)*sum;
    result=strcat('The integration by Trapezoidal rule is I=',num2str(sum));
    disp(result);
end