% source: https://www.mathworks.com/help/matlab/creating_plots/making-graphsresponsive-with-data-linking.html
% Set up two data points to get us started.
x2 = [1 2];
y2 = [0 0];
% Start the plot. Set the x- and y-boundaries
% we'll plot black dots and yellow dashed lines b/w the dots
figure(1);
p = plot(x2,y2,'y.--','MarkerEdgeColor','k');
xlim([0 100])
ylim([0 80])
% Label the plots
xlabel('Iteration')
ylabel('Time [sec]')
title('Time per loop iteration');
% tell the plot object what the data sources are when it refreshes.
p.XDataSource = 'x2';
p.YDataSource = 'y2';
% Start recording time
tic;
% Loop nearly 100 times. (Modify so that it finishes at 30)
for t = 3:30 % (HINT: change the 100 to be 30)
    % Set new x and y values
    x2(t) = t; % loop iteration
    y2(t) = toc; % time taken

    % refresh the data for the plot
    refreshdata
    title('Current time: ',y2(t));
    drawnow

    % add a random pause to make things interesting.
    pause(rand());
end
title('Time per loop iteration');