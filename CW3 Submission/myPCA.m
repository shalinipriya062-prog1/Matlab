% WRITE YOU CODE HERE
function [eig_vec,eig_val]= myPCA(m)
    c = cov(m);
   [eig_vec,D] = eig(c);
   eig_val = sum(D);
end