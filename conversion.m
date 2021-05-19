% CS5810J  -- Programming for data analysis (January)
%
%  Assignment 1 | Dr. Matteo Sammartino
%  Deadline: February 18, 2021, at 10:00 am
%
% 
% Insert BELOW your function for exercise 3


% INSERT YOUR CODE HERE
function output = conversion(scale,weight)
    if scale == 'g' | scale == 'o'
        if scale == 'g'
            output = 0.035274.* weight;
        else
            output = 28.3495.* weight;
        end
    else
        disp('Please enter ''g'' or ''o'' for the first argument')
    end
end

