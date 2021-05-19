% CS5810J  -- Programming for data analysis (January)
%
%  Assignment 1 | Dr. Matteo Sammartino
%  Deadline: February 18, 2021, at 10:00 am
%
% 
% Insert BELOW your function for exercise 2


% INSERT YOUR CODE HERE
function area = calctriangarea(base,height)
    if ~all(size(base)==size(height))
        fprintf('Base and Height arrays should have the same number of elements !\n')
    else
        area = 0.5.*base.*height;
    end
end


