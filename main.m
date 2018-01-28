clc;
clear all;
data = csvread('parkinsons_updrs.data',1,0);

trainingData = data(1:2929,:);
target=trainingData(:,6).';
input = [trainingData(:,2:3)  trainingData(:,7:8) trainingData(:,10:13) trainingData(:,15:end)].';
testData = data(2929:end,:);

% Plot matrices of Jitter attributes
% Plot matrices of shimmer attributes
% Plot matrices of rest
% From this can see Jitter:RAP and Jitter:DDP correlated
% From this can see Shimmer:ADPQ3 and Shimmer:DDA correlated
% So can remove Jitter:RAP and Shimmer:ADPQ3 vars

% Code to get figures - can delete once got
% temp = [trainingData(:,2:3)  trainingData(:,7:end)];
% figure;plotmatrix(temp(:,8:13));
% figure;plotmatrix(temp(:,14:18));
% figure;plotmatrix(temp(:,3:7));

% Check quality of data against meta data

pcaResult = pca(input.');
%nntool;

% NETWORK DECISIONS AND TESTING
% Decide what sort of nework is appropriate
% Test out different sizes/num of layesr etc
% Then train the network and record results for each architecture

% ANALYSIS
% Pre-Processing
    % Check help files for nn toolbox to see whats done automatically.
    % mapstd - standardization - 
    % mapminmax - normalization - MATLAB uses MAPMINMAX as a default.
% What do the results look like
% Get a MSE
% What other outputs 
% Useful to show the regression 