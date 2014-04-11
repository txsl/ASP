close all; clear all; clc;

%% 1.3.2

% The three different lengths we will be testing
size = [ 100, 1000, 10000 ];

for i = 1:3
    
    % Generate the data from our samples
    data = rp3(1, size(i));
    
    % Specify where in the plot to go
    subplot(1,3,i);
    
    % Run our pdf function and 
    pdf(data);
    
    % Titles etc
    t = sprintf('Estimated PDF, N = %i',size(i));
    title(t);
    % Add the theoretical line
    hl = refline(0, 1/30);
    set(hl, 'Color', 'r'); 
    
    legend('Estimated pdf', 'Theoretical pdf');
    
end
