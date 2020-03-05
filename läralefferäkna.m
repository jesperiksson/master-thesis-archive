%%% Generera 200 st intervaller av 4

intervall=zeros(200,4);
for i=1:200
    int=randi([-100 100]);
    intervall(i,1)=randi([-100 100]);
    for n=2:4
        intervall(i,n)= intervall(i,n-1)+int;
    end
end
header = {'timestep1','timestep2','timestep3', 'timestep4'};
intervall=[header; num2cell(intervall)];


% Convert cell to a table and use first row as variable names
T = cell2table(intervall(2:end,:),'VariableNames',intervall(1,:));
 
% Write the table to a CSV file
writetable(T,'intervall.csv');
