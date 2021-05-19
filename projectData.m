% WRITE YOU CODE HERE
function [out] = projectData(m,eig_vec,k)
    e_mul = eig_vec(:,1:k);
    out = m * e_mul;
end