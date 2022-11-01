clc
clear all

% Pruebas de validez de codeword

disp('Prueba #1')
load base_matrices\NR_1_2_20.txt
B = NR_1_2_20;
size(B); % 46 rows, 68 columns
z = 20;
msg = randi([0 1],1,22*z);
c = nrldpc_encode(B,z,msg);
check_cword(B,z,c) % Si da 1 quiere decir que la codeword es válida y por ende el encoder funcionó

disp('Prueba #2')
load base_matrices\NR_2_1_48.txt
B = NR_2_1_48;
size(B); % 42 rows, 52 columns
z = 48;
msg = randi([0 1],1,10*z);
c = nrldpc_encode(B,z,msg);
check_cword(B,z,c)