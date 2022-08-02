% Exp4: Simulation study of Linear Block Codes.
% Name: Rathod Chittaranjan
% Roll No:32457

clc; 
clear all; 
%input generated matrix 
g=input('enter the generator matrix:'); 
disp('G=') 
disp('the order of the linear block code for given generator matrix is:') 
[n,k]=size(transpose(g)) 
for i=1:2^k 
 for j=k:-1:1 
 if rem(i-1,2^(-j+k+1))>=2^(-j+k) 
 u(i,j)=1; 
 else 
 u(i,j)=0; 
 end 
 end 
end
u; 
disp('the possible codewords are:') 
c=rem(u*g,2) 
disp('the minimum hamming distance dmin for given block code=') 
d_min=min(sum((c(2:2^k,:))')) 
%codeword 
r=input('enter the received code word:') 
p=[g(:,n-k+2:n)]; 
h=[transpose(p),eye(n-k)]; 
disp('hamming code') 
ht=transpose(h) 
disp('syndrome of a given codeword is:') 
s=rem(r*ht,2) 
for i=1:1:size(ht) 
 if (ht(i,1:3)==s) 
 r(i)=1-r(i); 
 break; 
 end 
end 
disp('the error is in bit:') 
i 
disp('the corrected codeword is:') 
r 