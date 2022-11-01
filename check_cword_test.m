clc
clear all

% Prueba de validez de codeword

load base_matrices\NR_1_2_20.txt
B = NR_1_2_20;
size(B) % 46 rows, 68 columns
z = 20;
c1 = randi([0 1],1,68*z); % dado que son números aleatorios, es poco probable que la codeword sea válida (0)
check_cword(B,z,c1)
c2 = zeros(1,68*z); % se rellena de ceros para forzar que la codeword sea válida (1)
check_cword(B,z,c2)