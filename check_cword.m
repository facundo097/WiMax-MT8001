% Revisa validez de palabra clave (codeword)

function out = check_cword(B,z,c)
%B: base matrix
%z: expansion factor
%c: candidate codeword, length = #cols(B) * z
%out = 1, if codeword is valid; 0, else

[m,n] = size(B);

syn = zeros(m*z,1); %Hc^T, The pattern of errors, called the error syndrome, identifies the bit in error
for i = 1:m
    for j = 1:n
        syn((i-1)*z+1:i*z) = mod(syn((i-1)*z+1:i*z) + mul_sh(c((j-1)*z+1:j*z),B(i,j))',2);
    end
end
if any(syn) % if any element of the syndrome is different to zero, the codeword is invalid
    out = 0;
else
    out = 1;
end