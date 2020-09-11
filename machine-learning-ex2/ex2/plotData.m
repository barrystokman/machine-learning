function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%

idx_admitted = find(y == 1);
admitted = X(idx_admitted,:);
exam1_admitted = admitted(:,1);
exam2_admitted = admitted(:,2);
plot(exam1_admitted, exam2_admitted, 'g+', 'markersize', 7, 'LineWidth', 2)

idx_denied = find(y == 0);
denied = X(idx_denied,:);
exam1_denied = denied(:,1);
exam2_denied = denied(:,2);
plot(exam1_denied, exam2_denied, 'ro', 'markersize', 7, 'MarkerFaceColor', 'r');

%% Suggested solution
%% Find Indices of Positive and Negative Examples
%pos = find(y==1); neg = find(y == 0);
%% Plot Examples
%plot(X(pos, 1), X(pos, 2), 'k+','LineWidth', 2, ...
%'MarkerSize', 7);
%plot(X(neg, 1), X(neg, 2), 'ko', 'MarkerFaceColor', 'y', ...
%'MarkerSize', 7);







% =========================================================================



hold off;

end
