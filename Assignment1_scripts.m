% CS5810J  -- Programming for data analysis (January)
%
%  Assignment 1 | Dr. Matteo Sammartino
%  Deadline: February 18, 2021, at 10:00 am
%
% 
% Insert BELOW your code for exercise 1, 5, 6
% The templates for functions for exercises 2, 3 and 4 are provided in separate files.
%


%% ================== Exercise 1 ==================


% INSERT YOUR CODE HERE!
load 'salesfigs.dat'
div1 = salesfigs(1,:);
div2 = salesfigs(2,:); %Not necessary
y_div1 = div1;
x_div1 = 1:length(y_div1);
figure(1)
plot(x_div1,y_div1,'ko');
xlabel('Quarter');
ylabel('Sales (billions)');
hold on
y_div2 = div2;
x_div2 = 1:length(y_div2);
plot(x_div2,y_div2,'k*');
xlabel('Quarter');
ylabel('Sales (billions)');
hold off
legend('Division A','Division B')
title('ABC Corporation Sales: 2013')

%% ================== Exercise 5 ==================


% INSERT YOUR CODE HERE!
x_ud = 10 + (35-10).*rand(5000,1);
y_ud = 10 + (35-10).*rand(5000,1);
figure(2)
plot(x_ud,y_ud,'g*');
axis([-10 40 -5 40])
hold on
variance_x = 1;
mean_x = 2;
x_nd = variance_x.*randn(5000,1) + mean_x;
variance_y = 1;
mean_y = 7;
y_nd = variance_y.*randn(5000,1) + mean_y;
plot(x_nd,y_nd,'r*');
hold off
grid on

%% ================== Exercise 6 ==================

% INSERT YOUR CODE HERE!
x_3d = -3 + (5-(-3)).*rand(10000,1);
y_3d = -3 + (5-(-3)).*rand(10000,1);
z_3d = -3 + (5-(-3)).*rand(10000,1);
x_pos = x_3d>0;
y_pos = y_3d>0;
z_pos = z_3d>0;
x_map = x_3d((x_pos == 1 & y_pos == 1 & z_pos == 1),:);
y_map = y_3d((x_pos == 1 & y_pos == 1 & z_pos == 1),:);
z_map = z_3d((x_pos == 1 & y_pos == 1 & z_pos == 1),:);
xmap = x_map./sqrt(x_map.^2+y_map.^2+z_map.^2);
ymap = y_map./sqrt(x_map.^2+y_map.^2+z_map.^2);
zmap = z_map./sqrt(x_map.^2+y_map.^2+z_map.^2);
figure(3)
plot3(xmap,ymap,zmap,'r*');
grid on



