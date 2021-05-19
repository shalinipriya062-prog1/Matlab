% WRITE HERE YOUR FUNCTION FOR EXERCISE 2
function output =  countdown()
    persistent n; %to recover value of n for every call
    if isempty(n)
        n = 5;
        output =  strcat(string(n),' seconds left');
    elseif(n~=1)
        n = n-1;
        output =  strcat(string(n),' seconds left');
    else
        output = 'Countdown has expired !'; %when n reaches 0
    end
end