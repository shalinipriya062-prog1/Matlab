% WRITE YOU CODE HERE
function [Xmu,mu] =  subtractMean(m)
    mu = mean(m);
    Xmu = m - mu;
end