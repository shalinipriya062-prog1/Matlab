% WRITE HERE YOUR FUNCTION FOR EXERCISE 3
function mycos(n1,n2)
    colour_choice = menu('Choose a color','red','blue','green');
    point_choice = menu('Choose the point','circle','star');
    cos_graph1 = linspace(-pi,pi,n1);
    cos_graph2 = linspace(-pi,pi,n2);
    switch colour_choice %selecting color for marker to plots
        case 1
            color = 'r';
        case 2
            color = 'b';
        case 3
            color = 'g';
    end
    
    switch point_choice %selecting marker to plots
        case 1
            marker = 'o';
        case 2
            marker = '*';
    end
    subplot(2,1,1); %plot1
    p1 = plot(cos_graph1,cos(cos_graph1));
    p1.Color = color;
    p1.Marker = marker;
    grid on
    t1 = strcat(string(n1),' points');
    title(t1)
    subplot(2,1,2); %plot2
    p2 = plot(cos_graph2,cos(cos_graph2));
    p2.Color = color;
    p2.Marker = marker;
    grid on
    t2 = strcat(string(n2),' points');
    title(t2)
end