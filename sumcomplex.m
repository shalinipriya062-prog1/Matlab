% WRITE HERE YOUR FUNCTION FOR EXERCISE 8
function [whole_num, selected_sum] = sumcomplex(R,I,S)
    if(length(R)==length(I) && all(S<=length(R))) %checking length of real and imaginary parts are equal and S value does not exceed the index of R and I
        cell_R = num2cell(R);
        cell_I = num2cell(I);
        whole_num = struct('real',cell_R,'img',cell_I); %returning all complex numbers
        sum_R = sum(R(S));
        sum_I = sum(I(S));
        selected_sum = struct('real',sum_R,'img',sum_I); %sum of selected indices
    else
        if(length(R)~=length(I))
            fprintf('Lengths of Real and Imaginary parts do not match');
            whole_num = 0;
            selected_sum = 0;
        else
            fprintf('Index for S exceeds the length of the number array');
            whole_num = 0;
            selected_sum = 0;
        end
    end
    
end