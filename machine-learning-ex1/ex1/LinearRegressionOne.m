% Linear Regression with one variable:

% Load the data into a table:

clear;

data = readtable('ex1data1.txt'); % read tabular data into a table

data.Properties.VariableNames = {'Population', 'Profit'}; % Name of the variables

summary(data);
methods(data);

help table.outerjoin;

% Fit a linear Model

LinMdl =fitlm(data);

% See coefficients

LinMdl.Coefficients;

theta = table2array(LinMdl.Coefficients);

fprintf('Theta computed by fitlm: [%f and %f]',theta(1,1),theta(2,1));

% Making predictions using the LinearModel variable

% Predict values for population sizes of 35,000 and 70,000

predict1 = predict(LinMdl,35000);
fprintf('For population equal 35.000, We predicted a profit of %f',round(predict1,2));
predict2 = predict(LinMdl, 70000);
fprintf('For population equal 70.000, We predicted a profit of %f',round(predict2,2));

% Plot the linear fit
plot(data.Population,data.Profit,'rx'); hold on
profit = predict(LinMdl,data);
plot(data.Population, profit, '-')
legend('Training data', 'Linear regression'); hold off 

