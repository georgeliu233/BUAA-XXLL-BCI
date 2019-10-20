clear all
xtrain = cell(1,24);
num1 = xlsread('C:\Users\24829\Desktop\dts\subjecta-concentrating-1.xlsx');
num1 = num1';
num2 = xlsread('C:\Users\24829\Desktop\dts\subjecta-concentrating-2.xlsx');
num2 = num2';
num3 = xlsread('C:\Users\24829\Desktop\dts\subjectb-concentrating-1.xlsx');
num3 = num3';
num4 = xlsread('C:\Users\24829\Desktop\dts\subjectb-concentrating-2.xlsx');
num4 = num4';
num5 = xlsread('C:\Users\24829\Desktop\dts\subjectc-concentrating-1.xlsx');
num5 = num5';
num6 = xlsread('C:\Users\24829\Desktop\dts\subjectc-concentrating-2.xlsx');
num6 = num6';
num7 = xlsread('C:\Users\24829\Desktop\dts\subjectd-concentrating-1.xlsx');
num7 = num7';
num8 = xlsread('C:\Users\24829\Desktop\dts\subjectd-concentrating-2.xlsx');
num8 = num8';

nnum1 = xlsread('C:\Users\24829\Desktop\dts\subjecta-neutral-1.xlsx');
nnum1 = nnum1';
nnum2 = xlsread('C:\Users\24829\Desktop\dts\subjecta-neutral-2.xlsx');
nnum2 = nnum2';
nnum3 = xlsread('C:\Users\24829\Desktop\dts\subjectb-neutral-1.xlsx');
nnum3 = nnum3';
nnum4 = xlsread('C:\Users\24829\Desktop\dts\subjectb-neutral-2.xlsx');
nnum4 = nnum4';
nnum5 = xlsread('C:\Users\24829\Desktop\dts\subjectc-neutral-1.xlsx');
nnum5 = nnum5';
nnum6 = xlsread('C:\Users\24829\Desktop\dts\subjectc-neutral-2.xlsx');
nnum6 = nnum6';
nnum7 = xlsread('C:\Users\24829\Desktop\dts\subjectd-neutral-1.xlsx');
nnum7 = nnum7';
nnum8 = xlsread('C:\Users\24829\Desktop\dts\subjectd-neutral-2.xlsx');
nnum8 = nnum8';

rnum1 = xlsread('C:\Users\24829\Desktop\dts\subjecta-relaxed-1.xlsx');
rnum1 = rnum1';
rnum2 = xlsread('C:\Users\24829\Desktop\dts\subjecta-relaxed-2.xlsx');
rnum2 = rnum2';
rnum3 = xlsread('C:\Users\24829\Desktop\dts\subjectb-relaxed-1.xlsx');
rnum3 = rnum3';
rnum4 = xlsread('C:\Users\24829\Desktop\dts\subjectb-relaxed-2.xlsx');
rnum4 = rnum4';
rnum5 = xlsread('C:\Users\24829\Desktop\dts\subjectc-relaxed-1.xlsx');
rnum5 = rnum5';
rnum6 = xlsread('C:\Users\24829\Desktop\dts\subjectc-relaxed-2.xlsx');
rnum6 = rnum6';
rnum7 = xlsread('C:\Users\24829\Desktop\dts\subjectd-relaxed-1.xlsx');
rnum7 = rnum7';
rnum8 = xlsread('C:\Users\24829\Desktop\dts\subjectd-relaxed-2.xlsx');
rnum8 = rnum8';

xtrain = {num1,num2,num3,num4,num5,num6,num7,num8,nnum1,nnum2,nnum3,nnum4,nnum5,nnum6,nnum7,nnum8,rnum1,rnum2,rnum3,rnum4,rnum5,rnum6,rnum7,rnum8};
save xtrain

ytrain = categorical([1;1;1;1;1;1;1;1;2;2;2;2;2;2;2;2;3;3;3;3;3;3;3;3]);
save ytrain

xtest = cell(1,3);
sam1=xlsread('C:\Users\24829\Desktop\dts\test1.xlsx');
sam2=xlsread('C:\Users\24829\Desktop\dts\test2.xlsx');
sam3=xlsread('C:\Users\24829\Desktop\dts\test3.xlsx');
xtest = {sam1,sam2,sam3};
save xtest