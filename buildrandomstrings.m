% WRITE HERE YOUR FUNCTION FOR EXERCISE 4
function output = buildrandomstrings(n)
    inputs = ['a':'z' 'A':'Z'];
    if(n>=0) %for positive value of n
        random_string_index = randi(numel(inputs),[1 n]);
        random_string = inputs(random_string_index);
        char_sequence = convertStringsToChars(random_string);
        matr = repmat(char_sequence,n,1);
        increasing_chars = tril(matr); %tril returns lower diagonal of the matrix
        output = cellstr(increasing_chars);
    else %for negative value of n
        random_string_index = randi(numel(inputs),[1 abs(n)]); %using abs for absolute value
        random_string = inputs(random_string_index);
        char_sequence = convertStringsToChars(random_string);
        matr = repmat(char_sequence,abs(n),1);
        increasing_chars = tril(matr);
        output = flip(cellstr(increasing_chars)); %flipping the matrix to get desired results
    end
end