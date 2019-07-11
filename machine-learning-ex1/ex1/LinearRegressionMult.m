% Linear Regression with multiples features

clear;

% Load data

data = readtable('ex1data2.txt');

data.Properties.VariableNames = {'Size','Bedrooms','Price'};

% Fit a linear model using fitlm and estimate housing prices

linMdl = fitlm(data);

theta = linMdl.Coefficients.Estimate;

fprintf('Theta computed by fitlm: %f and % f',theta(1),theta(2));

price = predict(linMdl,[1650 3]);

fprintf('The price for a house of 1650 ft and 3 bd is: $%f',price)