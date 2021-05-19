% WRITE YOU CODE HERE
function myplot(x,y)
    s = load('plot_properties.mat');
    plot__properties = {s.plot_properties.plotproperties};

    subplot(3,1,1);
    p1 = plot(x,y);
    p1.Color = plot__properties{1}.Color;
    p1.LineWidth = plot__properties{1}.LineWidth;
    p1.LineStyle =plot__properties{1}.LineStyle;
    grid on
    subplot(3,1,2);
    p2 = bar(x,y);
    p2.BarWidth = plot__properties{2}.BarWidth;
    p2.FaceColor = plot__properties{2}.FaceColor;
    p2.EdgeColor = plot__properties{2}.EdgeColor;
    grid on
    subplot(3,1,3);
    p3 = barh(x,y);
    p3.BarWidth = plot__properties{3}.BarWidth;
    p3.FaceColor = plot__properties{3}.FaceColor;
    p3.EdgeColor = plot__properties{3}.EdgeColor;
    grid on
end