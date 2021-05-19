% WRITE YOU CODE HERE
%reading from files
RedRidingHood_words = textread('RedRidingHood.txt','%s','delimiter',' ');
PrincessPea_words = textread('PrincessPea.txt','%s','delimiter',' ');
Cinderella_words = textread('Cinderella.txt','%s','delimiter',' ');
CAFA1_words = textread('CAFA1.txt','%s','delimiter',' ');
CAFA2_words = textread('CAFA2.txt','%s','delimiter',' ');
CAFA3_words = textread('CAFA3.txt','%s','delimiter',' ');

%converting to string array for manipulation
r_words = strings(size(RedRidingHood_words));
[r_words{:}] = RedRidingHood_words{:};
r_words_lower = lower(r_words);
p_words = strings(size(PrincessPea_words));
[p_words{:}] = PrincessPea_words{:};
p_words_lower = lower(p_words);
c_words = strings(size(Cinderella_words));
[c_words{:}] = Cinderella_words{:};
c_words_lower = lower(c_words);
ca1_words = strings(size(CAFA1_words));
[ca1_words{:}] = CAFA1_words{:};
ca1_words_lower = lower(ca1_words);
ca2_words = strings(size(CAFA2_words));
[ca2_words{:}] = CAFA2_words{:};
ca2_words_lower = lower(ca2_words);
ca3_words = strings(size(CAFA3_words));
[ca3_words{:}] = CAFA3_words{:};
ca3_words_lower = lower(ca3_words);

%array of total words
total_words_dup = [lower(r_words);lower(p_words);lower(c_words);lower(ca1_words);lower(ca2_words);lower(ca3_words)];
total_words = unique(total_words_dup);

%count of documents
doc_count = 6;

r_lower_cat = categorical(r_words_lower);
p_lower_cat = categorical(p_words_lower);
c_lower_cat = categorical(c_words_lower);
ca1_lower_cat = categorical(ca1_words_lower);
ca2_lower_cat = categorical(ca2_words_lower);
ca3_lower_cat = categorical(ca3_words_lower);

%occurence of workds for each of the documents
occurences_r = (ismember(total_words,r_words_lower));
occurences_p = (ismember(total_words,p_words_lower));
occurences_c = (ismember(total_words,c_words_lower));
occurences_ca1 = (ismember(total_words,ca1_words_lower));
occurences_ca2 = (ismember(total_words,ca2_words_lower));
occurences_ca3 = (ismember(total_words,ca3_words_lower));

% total count of words in documents
no_of_doc_t_appear = occurences_r+occurences_p+occurences_c+occurences_ca1+occurences_ca2+occurences_ca3;

%frequency calculation for each document
freq_r = [categories(r_lower_cat),num2cell(countcats(r_lower_cat))];
n_r = [freq_r{:,2}];

freq_p = [categories(p_lower_cat),num2cell(countcats(p_lower_cat))];
n_p = [freq_p{:,2}];

freq_c = [categories(c_lower_cat),num2cell(countcats(c_lower_cat))];
n_c = [freq_c{:,2}];

freq_ca1 = [categories(ca1_lower_cat),num2cell(countcats(ca1_lower_cat))];
n_ca1 = [freq_ca1{:,2}];

freq_ca2 = [categories(ca2_lower_cat),num2cell(countcats(ca2_lower_cat))];
n_ca2 = [freq_ca2{:,2}];

freq_ca3 = [categories(ca3_lower_cat),num2cell(countcats(ca3_lower_cat))];
n_ca3 = [freq_ca3{:,2}];

%Term Frequencies for each document
term_freq_r = zeros(length(total_words),1);
term_freq_r(occurences_r) = term_freq_r(occurences_r) + n_r';
term_freq_p = zeros(length(total_words),1);
term_freq_p(occurences_p) = term_freq_p(occurences_p) + n_p';
term_freq_c = zeros(length(total_words),1);
term_freq_c(occurences_c) = term_freq_c(occurences_c) + n_c';
term_freq_ca1 = zeros(length(total_words),1);
term_freq_ca1(occurences_ca1) = term_freq_ca1(occurences_ca1) + n_ca1';
term_freq_ca2 = zeros(length(total_words),1);
term_freq_ca2(occurences_ca2) = term_freq_ca2(occurences_ca2) + n_ca2';
term_freq_ca3 = zeros(length(total_words),1);
term_freq_ca3(occurences_ca3) = term_freq_ca3(occurences_ca3) + n_ca3';

%Inverse document frequency
idf = log10(doc_count./no_of_doc_t_appear);

%tf-idf
tf_idf_r = term_freq_r.*idf;
tf_idf_p = term_freq_p.*idf;
tf_idf_c = term_freq_c.*idf;
tf_idf_ca1 = term_freq_ca1.*idf;
tf_idf_ca2 = term_freq_ca2.*idf;
tf_idf_ca3 = term_freq_ca3.*idf;

%creating a matrix
tf_m(:,1) = tf_idf_r;
tf_m(:,2) = tf_idf_p;
tf_m(:,3) = tf_idf_c;
tf_m(:,4) = tf_idf_ca1;
tf_m(:,5) = tf_idf_ca2;
tf_m(:,6) = tf_idf_ca3;

%calculating the cosine distance between every pair of tf-idf vectors
d = zeros(6,6);
for i = 1:doc_count
    for j = 1:doc_count
        d(i,j) = pdist2(tf_m(:,i)',tf_m(:,j)','cosine');
    end
end


imagesc(d)
set(gca, 'XTickLabel', ["RRH","PPea","Cinde","CAFA1","CAFA2","CAFA3"])
set(gca,'YTickLabel', ["RRH","PPea","Cinde","CAFA1","CAFA2","CAFA3"])
colormap gray
colorbar
title("Cosine Distance")








