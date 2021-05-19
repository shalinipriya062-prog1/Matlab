% WRITE HERE YOUR FUNCTION FOR EXERCISE 5
function area = calctrianglearea(m)
    x = m(:,1); %getting x and y vectors
    y = m(:,2);
    x_left = [];
    y_left = [];
    if(mod(height(x),3)~=0) %removing last coordinates that are not divisible by 3
        x_left = x(end);
        x(end) = [];
        y_left = y(end);
        y(end) = [];
        if(mod(height(x),3)~=0)
            x_left(end+1) = x(end);
            x(end) = [];
            y_left(end+1) = y(end);
            y(end) = [];
        end
    end
    first_point = (mod(find(x),3)==1); % making 3 vectors each for x1,x2 and x3, and y1,y2 and y3 for a trangle
    second_point = (mod(find(x),3)==2);
    third_point = (mod(find(x),3)==0);
    x1 = x(first_point);
    x2 = x(second_point);
    x3 = x(third_point);
    y1 = y(first_point);
    y2 = y(second_point);
    y3 = y(third_point);
    distance_x1_y1_x2_y2 = length(x1,y1,x2,y2); %calling length function to get lengths between each points
    distance_x2_y2_x3_y3 = length(x2,y2,x3,y3);
    distance_x3_y3_x1_y1 = length(x3,y3,x1,y1);
    s = (distance_x1_y1_x2_y2 + distance_x2_y2_x3_y3 + distance_x3_y3_x1_y1) / 2;
    area = (s.*(s-distance_x1_y1_x2_y2).*(s-distance_x2_y2_x3_y3).*(s-distance_x3_y3_x1_y1)).^0.5; %calculationg area
    fprintf('The number of areas calculated = %d \n', height(area));
    matr = [flip(x_left);flip(y_left)];
    fprintf('Unused coordinates: \n');
    disp(matr')
end


function output = length(x1,y1,x2,y2)
    %function to calculate the distance between 2 coordinates
    output = ((x1-x2).^2+(y1-y2).^2).^0.5;
end