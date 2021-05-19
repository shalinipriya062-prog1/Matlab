% WRITE HERE YOUR FUNCTION FOR EXERCISE 9
function [most_freq_words,occurences] = wordscountstarting(n,c)
    word_string = textread('LittleMermaid.txt','%s','delimiter',' ');
    c_words = startsWith(word_string,c,'IgnoreCase',true); %getting indices of words starting with c
    occurences = length(word_string(c_words==1));
    lower_words_c = lower(word_string(c_words==1));
    c_lower_cat = categorical(lower_words_c);
    M = [categories(c_lower_cat),num2cell(countcats(c_lower_cat))]; %making a matrix of words and the frequencies
    sorted_words = sortrows(M,2,'descend');
    most_freq_words = sorted_words(1:n,:);
end