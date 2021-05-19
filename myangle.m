% WRITE HERE YOUR FUNCTION FOR EXERCISE 6
function M = myangle(limit1,limit2)
    if(limit1<limit2) %checking for any order of input arguments
        min = limit1;
        max = limit2;
    else
        min = limit2;
        max = limit1;
    end
    D = (min:max);
    R = (D*pi)/180;
    matr = [D;R]; %matrix with Degree and Radian
    M = matr'; %transposing for correct result
    command_print(M);
end

function command_print(M)
    fprintf("   Degree     Radians \n");
    disp(M);
end