% WRITE HERE YOUR FUNCTION FOR EXERCISE 1
function parts = waferstore(partno,quantity,costper)
    if (all(size(partno)==size(quantity)) && all(size(quantity)==size(costper))) %checkinf if all 3 input parameters length is same
        cell_partno = num2cell(partno); %converting vector to cell aray for manipulation
        cell_quantity = num2cell(quantity);
        cell_costper = num2cell(costper);
        total_cost = quantity.*costper;
        parts = struct('partno',cell_partno,'quantity',cell_quantity,'costper',cell_costper);
        matr = [partno;total_cost];
        disp(matr');
    else  %if any of the input parameter length is different
        fprintf('The input arguments are of different lengths !');
        parts = 0; % setting default value
    end
end