% WRITE YOU CODE HERE
function plottrigs(plot_name,colour,width,marker,varargin)
    x = -(2*pi):0.1:(2*pi);
    if(nargin == 1)
        if (strcmp(plot_name,'sin') == 1)
            p = plot(x,sin(x));
            p.Color = 'k';
            p.Marker = '.';
            p.LineWidth = 1;
            t = strcat(string(nargin),' input arguments');
            title(t)
            grid on;
        elseif (strcmp(plot_name,'cos') == 1)
            p = plot(x,cos(x));
            p.Color = 'k';
            p.Marker = '.';
            p.LineWidth = 1;
            t = strcat(string(nargin),' input arguments');
            title(t)
            grid on;
        end
    elseif(nargin == 2)
       if (strcmp(plot_name,'sin') == 1)
            p = plot(x,sin(x));
            p.Color = colour;
            p.Marker = '.';
            p.LineWidth = 1;
            t = strcat(string(nargin),' input arguments');
            title(t)
            grid on;
        elseif (strcmp(plot_name,'cos') == 1)
            p = plot(x,cos(x));
            p.Color = colour;
            p.Marker = '.';
            p.LineWidth = 1;
            t = strcat(string(nargin),' input arguments');
            title(t)
            grid on;
        end 
    elseif(nargin == 3)
        if (strcmp(plot_name,'sin') == 1)
            p = plot(x,sin(x));
            p.Color = colour;
            p.Marker = '.';
            p.LineWidth = width;
            t = strcat(string(nargin),' input arguments');
            title(t)
            grid on;
        elseif (strcmp(plot_name,'cos') == 1)
            p = plot(x,cos(x));
            p.Color = colour;
            p.Marker = '.';
            p.LineWidth = width;
            t = strcat(string(nargin),' input arguments');
            title(t)
            grid on;
        end 
    elseif(nargin == 4)
        if (strcmp(plot_name,'sin') == 1)
            p = plot(x,sin(x));
            p.Color = colour;
            p.Marker = marker;
            p.LineWidth = width;
            t = strcat(string(nargin),' input arguments');
            title(t)
            grid on;
        elseif (strcmp(plot_name,'cos') == 1)
            p = plot(x,cos(x));
            p.Color = colour;
            p.Marker = marker;
            p.LineWidth = width;
            t = strcat(string(nargin),' input arguments');
            title(t)
            grid on;
        end 
    else
        fprintf('Please pass minimum of 1 and maximum of 4 inputs \n');
    end
end