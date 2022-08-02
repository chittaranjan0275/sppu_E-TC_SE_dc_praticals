%                       Experiment - 3
% Simulation study of Source Coding technique (Huffman Coding)
% Name : Rathod Chittaranjan 
% Roll No : 32457

diary on;
clear all;
clc;
pkg load communications
symbols = 1:6;
p = [0.3 0.25 0.20 0.12 0.08 0.05];
disp (symbols);
disp(p);
dict = huffmandict(symbols,p);
disp(dict);
inputSig = randsrc(10,1,[symbols;p]);
disp(inputSig);
code = huffmanenco(inputSig,dict);
disp(code);
decode = huffmandeco(code, dict);
disp(decode);

diary off;