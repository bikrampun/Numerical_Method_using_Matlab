%TITLE:- TO CALCULATE ROOT OF EQUATION USING POSITION METHOD
%Developed by: Bikram Pun
%Date: 5/30/2022
%--------------------------------------
%--- Three critival statements ----
%--------------------------------------
close all;
clear variables;
clc;
%--------------------------------------
%--- function declaration section ----
%--------------------------------------
func=input('Enter the function f(x)= ');
f=inline(func);
disp(f);
E=0.0005;
%---- user input section ---
a=input('Enter starting print of root interval a= ');
b=input('Enter end print of root interval b= ');
fa=f(a);
fb=f(b);
while(fa*fb>0)
 a=input('Enter starting print of root interval a= ');
 b=input('Enter end print of root interval b= ');
 fa=f(a);
 fb=f(b);
end
temp=[a b; fa fb];
disp(temp);
%calculation section
x=(a*fb-b*fa)/(fb-fa);
fx=f(x);
result=[a fa b fb x fx];
disp('--------------------------------------------------------------------');
disp(' a    f(a)    b   f(b)    x   f(x)');
disp('--------------------------------------------------------------------');
disp(result);
temp=0;
while(abs(x-temp)>E)
    temp=x;
if(fa*fx>0)
 a=x;
 fa=fx;
else
 b=x;
 fb=fx;
end
x=(a*fb-b*fa)/(fb-fa);
fx=f(x);
result=[a fa b fb x fx];
disp(result);
end
%output section
result=strcat('the root lies at x=',num2str(x),'with f(x)=',num2str(fx));
disp('--------------------------------------------------------------------');
disp(result);
disp('--------------------------------------------------------------------');