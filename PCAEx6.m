% WRITE YOU CODE HERE

%----PART 1----
%Task 1 - loading pcadata.mat
s = load('pcadata.mat');
m = s.X;
row_num = height(m);
col_num = width(m);

%Task 2 - plotting figure 1
figure;
p = scatter(s.X(:,1),s.X(:,2));
xlim([0 7]);
ylim([2 8]);
title('Datapoints and their 2 principal components')
hold on;

%Task 3 - calling subtractMean()
[Xmu, mu] = subtractMean(m);

%Task 4 - calling myPCA()
[eig_vec,eig_val]= myPCA(m);

%sorting based on largest eigen value
[eig_v_s,i] = sort(eig_val,'descend');
U = eig_vec(:,i);

%Task 5 - plotting
eig_vec_s_m= U + mu';
pca1 = eig_vec_s_m(:,1);
pca2 = eig_vec_s_m(:,2);
a = [mu(1) eig_vec_s_m(1,1)];
b = [mu(2) eig_vec_s_m(2,1)];
p2 = plot(a,b);
p2.Color = 'r';
p2.LineWidth = 3;
c = [mu(1) eig_vec_s_m(1,2)];
d = [mu(2) eig_vec_s_m(2,2)];
p3 = plot(c,d);
p3.Color = 'g';
p3.LineWidth = 3;
hold off;

fprintf('Top Eigen Vector coordinates:\n')
disp(U(:,1)');

%Task 6 - calling projectData()
Z = projectData(Xmu,U,1);

%Task 7 - print the projection of the first 3 points in your dataset
fprintf('First 3 points in projectedData output:\n')
disp(Z(1:3))

%Task 8 - calling recoverData()
Xrec = recoverData(Z, U, 1, mu);

%Task 9 - plotting
figure;
p4 = scatter(m(:,1),m(:,2));
xlim([0 7]);
ylim([2 8]);
title('Datapoints and their reconstruction')
hold on;
p5 = scatter(Xrec(:,1),Xrec(:,2),100,'*');
hold off;
 

%----PART 2----
%Task 1
X = load('pcafaces.mat');
X = X.X;

%Task 2
figure;
displayData(X(1:100, :));

%Task 3
[Xmu, mu] = subtractMean(X);
[eig_vec,eig_val]= myPCA(X);
[eig_v_s,i] = sort(eig_val,'descend');
U = eig_vec(:,i);

%Task 4
Z = projectData(Xmu,U,200);

%Task 5
Xrec = recoverData(Z, U, 200, mu);

%Task 6
figure;
subplot(1,2,1);
displayData(X(1:100, :));
title('Original faces')
subplot(1,2,2);
displayData(Xrec(1:100, :));
title('Recovered faces')

