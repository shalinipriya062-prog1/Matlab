% WRITE YOU CODE HERE
function myplotarea(file,n)
     [x,x_coord,y,y_coord] = textread(file,'%s%f%s%f','delimiter',' ');
     if(n>length(x_coord))
         fprintf('n is greater that the number of coordinates, enter a smaller value \n');
     else
         plot_x = x_coord(1:n);
         plot_y = y_coord(1:n);
         area(plot_x,plot_y);
         t = strcat(string(n),' data points');
         title(t);
     end
end
