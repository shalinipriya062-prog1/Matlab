% WRITE YOU CODE HERE
function membersplot(plot1,plot2)
    dept = {'ME','BM','CE','EE'};
    count_faculty = [22,45,23,33];
    plots_allowed = ["bar","barh","pie"];
    X_c = categorical({'ME','BM','CE','EE'});
    X_rc = reordercats(X_c,{'ME','BM','CE','EE'});
    if( ((sum(plots_allowed==plot1)) > 0) && ((sum(plots_allowed==plot2)) > 0))
        if(strcmp(plot1,plot2) == 1)
            fprintf('Please enter 2 different plots \n');
        else
            if(plot1 == "bar" && plot2=="barh")
                subplot(1,2,1);
                bar(X_rc,count_faculty);
                xlabel('Departments')
                ylabel('Number of Faculty members')
                grid on;
                subplot(1,2,2);
                barh(X_rc,count_faculty);
                xlabel('Number of Faculty members')
                ylabel('Departments')
                grid on;
            elseif(plot1 == "barh" && plot2=="bar")
                subplot(1,2,1);
                barh(X_rc,count_faculty);
                xlabel('Number of Faculty members')
                ylabel('Departments')
                grid on;
                subplot(1,2,2);
                bar(X_rc,count_faculty);
                xlabel('Departments')
                ylabel('Number of Faculty members')
                grid on;
            elseif(plot1 == "barh" && plot2=="pie")
                subplot(1,2,1);
                barh(X_rc,count_faculty);
                xlabel('Number of Faculty members')
                ylabel('Departments')
                grid on;
                subplot(1,2,2);
                pie(count_faculty,dept) 
                title('Faculty members by department')
                grid on;
            elseif(plot1 == "pie" && plot2=="barh")
                subplot(1,2,1);
                pie(count_faculty,dept) 
                title('Faculty members by department')
                grid on;
                subplot(1,2,2);
                barh(X_rc,count_faculty);
                xlabel('Number of Faculty members')
                ylabel('Departments')
                grid on;
            elseif(plot1 == "pie" && plot2=="bar")
                subplot(1,2,1);
                pie(count_faculty,dept) 
                title('Faculty members by department')
                grid on;
                subplot(1,2,2);
                bar(X_rc,count_faculty);
                xlabel('Departments')
                ylabel('Number of Faculty members')
                grid on;
            elseif(plot1 == "bar" && plot2=="pie")
                subplot(1,2,1);
                bar(X_rc,count_faculty);
                xlabel('Departments')
                ylabel('Number of Faculty members')
                grid on;
                subplot(1,2,2);
                pie(count_faculty,dept) 
                title('Faculty members by department')
                grid on;
            end
        end
    else
        fprintf('Please enter correct values for the plot type \n');
    end
end
