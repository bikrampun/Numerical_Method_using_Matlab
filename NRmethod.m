%TITLE:- TO CALCULATE ROOT OF EQUATION USING Newton Raphson METHOD
%Developed by: Bikram Pun
%Date: 6/27/2022
%--------------------------------------
%--- Three critival statements ----
%--------------------------------------
close all;
clear variables;
clc;
%--------------------------------------
%--- function declaration section ----
%--------------------------------------
syms x;
func=input('Enter the function f(x)= ');
f=inline(func);
der=diff(f(x));
g=inline(der);
disp(f);
disp(g);
E=0.0005;
%---- user input section ---
xo=input('Enter initial print of root interval a= ');
fxo=f(xo);
gxo=g(xo);

temp=[xo; fxo];
disp(temp);
%calculation section
%root
x=(xo-fxo/gxo);
fx=f(x);
result=[xo fxo gxo x fx];
disp('--------------------------------------------------------------------');
disp('xo    f(xo)    g(xo)    x    f(x)');
disp('--------------------------------------------------------------------');
disp(result);
temp=0;
while(abs(x-temp)>E)
    temp=x;
    xo=x;
    fxo=f(x);
    gxo=g(xo);
    
  x=(xo-fxo/gxo);
  fx=f(x);
result=[xo fxo gxo x fx];
disp(result);
end
%output section
result=strcat('the root lies at x=',num2str(x),'with f(x)=',num2str(fx));
disp('--------------------------------------------------------------------');
disp(result);
disp('--------------------------------------------------------------------');