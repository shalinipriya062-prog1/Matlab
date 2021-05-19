% CS5810J  -- Programming for data analysis (January)
%
%  Assignment 1 | Dr. Matteo Sammartino
%  Deadline: February 18, 2021, at 10:00 am
%
% 
% Insert BELOW your function for exercise 4


% INSERT YOUR CODE HERE

function output = div3even(n)
    v = randi([0, 50], 1,n)
    v_divby3 = find(mod(v,3)==0);
    v_even = v_divby3(mod(v_divby3,2)==0);
    output = v(v_even);
end

