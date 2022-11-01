clc
clear all

load base_matrices\NR_1_2_20.txt
B = NR_1_2_20;
size(B) % 46 rows, 68 columns
z = 20
k = (68-46)*20 % = 440 
n = 68*20      % = 1360
tasa = k/n     % = 1/3
