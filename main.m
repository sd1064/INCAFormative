% Clear and read in
clc;
clear all;
data = csvread('parkinsons_updrs.data',1,0);

% Training Data   : 21 people
% Test Data       : 11 people
% Validation Data : 10 people
Training = 1;
Validation = 2929;
Test = 4531;
End = size(data,1);

% Divy up to multiple types of input and targerts
target = data(:,6).';
% one with no scores but everything else 
inputBase = [data(:,2:3) data(:,7:end)].';
% one with all the vars removed by me 
input = [data(:,2:3)  data(:,7:8) data(:,10:13) data(:,15:end)].';
% one reduced by PCA
inputPCA = input(1:8,:);

% -------------------------------------------------------------------------

% MLP - input
% inputMLP51  =  MLP(5,Training,Validation,Test,End,input,target,'inputMLP51');
% inputMLP52  =  MLP(5,Training,Validation,Test,End,input,target,'inputMLP52');
% inputMLP53  =  MLP(5,Training,Validation,Test,End,input,target,'inputMLP53');
% 
% inputMLP101 = MLP(10,Training,Validation,Test,End,input,target,'inputMLP101');
% inputMLP102 = MLP(10,Training,Validation,Test,End,input,target,'inputMLP102');
% inputMLP103 = MLP(10,Training,Validation,Test,End,input,target,'inputMLP103');
% 
% inputMLP151 = MLP(15,Training,Validation,Test,End,input,target,'inputMLP151');
% inputMLP152 = MLP(15,Training,Validation,Test,End,input,target,'inputMLP152');
% inputMLP153 = MLP(15,Training,Validation,Test,End,input,target,'inputMLP153');
% 
% inputMLP201 = MLP(20,Training,Validation,Test,End,input,target,'inputMLP201');
% inputMLP202 = MLP(20,Training,Validation,Test,End,input,target,'inputMLP202');
% inputMLP203 = MLP(20,Training,Validation,Test,End,input,target,'inputMLP203');
% inputMLP251 = MLP(25,Training,Validation,Test,End,input,target,'inputMLP251');
% inputMLP252 = MLP(25,Training,Validation,Test,End,input,target,'inputMLP252');
% inputMLP253 = MLP(25,Training,Validation,Test,End,input,target,'inputMLP253');
% 

% inputMLP5101  =  MLP([5 10],Training,Validation,Test,End,input,target,'inputMLP5101');
% inputMLP5102  =  MLP([5 10],Training,Validation,Test,End,input,target,'inputMLP5102');
% inputMLP5103  =  MLP([5 10],Training,Validation,Test,End,input,target,'inputMLP5103');
% 
% inputMLP10151 =  MLP([10 15],Training,Validation,Test,End,input,target,'inputMLP10151');
% inputMLP10152 =  MLP([10 15],Training,Validation,Test,End,input,target,'inputMLP10152');
% inputMLP10153 =  MLP([10 15],Training,Validation,Test,End,input,target,'inputMLP10153');
% 
% inputMLP15201 =  MLP([15 20],Training,Validation,Test,End,input,target,'inputMLP15201');
% inputMLP15202 =  MLP([15 20],Training,Validation,Test,End,input,target,'inputMLP15202');
% inputMLP15203 =  MLP([15 20],Training,Validation,Test,End,input,target,'inputMLP15203');

% % % MLP - inputBase 
% 
% inputBaseMLP51  =  MLP(5,Training,Validation,Test,End,inputBase,target,'inputBaseMLP51');
% inputBaseMLP52  =  MLP(5,Training,Validation,Test,End,inputBase,target,'inputBaseMLP52');
% inputBaseMLP53  =  MLP(5,Training,Validation,Test,End,inputBase,target,'inputBaseMLP53');
% 
% inputBaseMLP101 = MLP(10,Training,Validation,Test,End,inputBase,target,'inputBaseMLP101');
% inputBaseMLP102 = MLP(10,Training,Validation,Test,End,inputBase,target,'inputBaseMLP102');
% inputBaseMLP103 = MLP(10,Training,Validation,Test,End,inputBase,target,'inputBaseMLP103');
% 
% inputBaseMLP151 = MLP(15,Training,Validation,Test,End,inputBase,target,'inputBaseMLP151');
% inputBaseMLP152 = MLP(15,Training,Validation,Test,End,inputBase,target,'inputBaseMLP152');
% inputBaseMLP153 = MLP(15,Training,Validation,Test,End,inputBase,target,'inputBaseMLP153');
% 
% inputBaseMLP201 = MLP(20,Training,Validation,Test,End,inputBase,target,'inputBaseMLP201');
% inputBaseMLP202 = MLP(20,Training,Validation,Test,End,inputBase,target,'inputBaseMLP202');
% inputBaseMLP203 = MLP(20,Training,Validation,Test,End,inputBase,target,'inputBaseMLP203');
% 
% inputBaseMLP251 = MLP(25,Training,Validation,Test,End,inputBase,target,'inputBaseMLP251');
% inputBaseMLP252 = MLP(25,Training,Validation,Test,End,inputBase,target,'inputBaseMLP252');
% inputBaseMLP253 = MLP(25,Training,Validation,Test,End,inputBase,target,'inputBaseMLP253');
 
% inputBaseMLP5101  =  MLP([5 10],Training,Validation,Test,End,inputBase,target,'inputBaseMLP5101');
% inputBaseMLP5102  =  MLP([5 10],Training,Validation,Test,End,inputBase,target,'inputBaseMLP5102');
% inputBaseMLP5103  =  MLP([5 10],Training,Validation,Test,End,inputBase,target,'inputBaseMLP5103');
% 
% inputBaseMLP10151 =  MLP([10 15],Training,Validation,Test,End,inputBase,target,'inputBaseMLP10151');
% inputBaseMLP10152 =  MLP([10 15],Training,Validation,Test,End,inputBase,target,'inputBaseMLP10152');
% inputBaseMLP10153 =  MLP([10 15],Training,Validation,Test,End,inputBase,target,'inputBaseMLP10153');
% 
% inputBaseMLP15201 =  MLP([15 20],Training,Validation,Test,End,inputBase,target,'inputBaseMLP15201');
% inputBaseMLP15202 =  MLP([15 20],Training,Validation,Test,End,inputBase,target,'inputBaseMLP15202');
% inputBaseMLP15203 =  MLP([15 20],Training,Validation,Test,End,inputBase,target,'inputBaseMLP15203');

% % % MLP - inputPCA
% 
% inputPCAMLP51  =  MLP(5,Training,Validation,Test,End,inputPCA,target,'inputPCAMLP51');
% inputPCAMLP52  =  MLP(5,Training,Validation,Test,End,inputPCA,target,'inputPCAMLP52');
% inputPCAMLP53  =  MLP(5,Training,Validation,Test,End,inputPCA,target,'inputPCAMLP53');
% 
% inputPCAMLP101 = MLP(10,Training,Validation,Test,End,inputPCA,target,'inputPCAMLP101');
% inputPCAMLP102 = MLP(10,Training,Validation,Test,End,inputPCA,target,'inputPCAMLP102');
% inputPCAMLP103 = MLP(10,Training,Validation,Test,End,inputPCA,target,'inputPCAMLP103');
% 
% inputPCAMLP151 = MLP(15,Training,Validation,Test,End,inputPCA,target,'inputPCAMLP151');
% inputPCAMLP152 = MLP(15,Training,Validation,Test,End,inputPCA,target,'inputPCAMLP152');
% inputPCAMLP153 = MLP(15,Training,Validation,Test,End,inputPCA,target,'inputPCAMLP153');
% 

% inputPCAMLP201 = MLP(20,Training,Validation,Test,End,inputPCA,target,'inputPCAMLP201');
% inputPCAMLP202 = MLP(20,Training,Validation,Test,End,inputPCA,target,'inputPCAMLP202');
% inputPCAMLP203 = MLP(20,Training,Validation,Test,End,inputPCA,target,'inputPCAMLP203');

% 
% inputPCAMLP251 = MLP(25,Training,Validation,Test,End,inputPCA,target,'inputPCAMLP251');
% inputPCAMLP252 = MLP(25,Training,Validation,Test,End,inputPCA,target,'inputPCAMLP252');
% inputPCAMLP253 = MLP(25,Training,Validation,Test,End,inputPCA,target,'inputPCAMLP253');

% inputPCAMLP5101  =  MLP([5 10],Training,Validation,Test,End,inputPCA,target,'inputPCAMLP5101');
% inputPCAMLP5102  =  MLP([5 10],Training,Validation,Test,End,inputPCA,target,'inputPCAMLP5102');
% inputPCAMLP5103  =  MLP([5 10],Training,Validation,Test,End,inputPCA,target,'inputPCAMLP5103');
% 
% inputPCAMLP10151 =  MLP([10 15],Training,Validation,Test,End,inputPCA,target,'inputPCAMLP10151');
% inputPCAMLP10152 =  MLP([10 15],Training,Validation,Test,End,inputPCA,target,'inputPCAMLP10152');
% inputPCAMLP10153 =  MLP([10 15],Training,Validation,Test,End,inputPCA,target,'inputPCAMLP10153');

% inputPCAMLP15201 =  MLP([15 20],Training,Validation,Test,End,inputPCA,target,'inputPCAMLP15201');
% inputPCAMLP15202 =  MLP([15 20],Training,Validation,Test,End,inputPCA,target,'inputPCAMLP15202');
% inputPCAMLP15203 =  MLP([15 20],Training,Validation,Test,End,inputPCA,target,'inputPCAMLP15203');


inputPCAMLP201 = MLP(20,Training,Validation,Test,End,inputPCA,target,'inputPCAMLP201');
inputPCAMLP202 = MLP(20,Training,Validation,Test,End,inputPCA,target,'inputPCAMLP202');
inputPCAMLP203 = MLP(20,Training,Validation,Test,End,inputPCA,target,'inputPCAMLP203');

inputPCAMLP5101  =  MLP([5 10],Training,Validation,Test,End,inputPCA,target,'inputPCAMLP5101');
inputPCAMLP5102  =  MLP([5 10],Training,Validation,Test,End,inputPCA,target,'inputPCAMLP5102');
inputPCAMLP5103  =  MLP([5 10],Training,Validation,Test,End,inputPCA,target,'inputPCAMLP5103');

inputPCAMLP10151 =  MLP([10 15],Training,Validation,Test,End,inputPCA,target,'inputPCAMLP10151');
inputPCAMLP10152 =  MLP([10 15],Training,Validation,Test,End,inputPCA,target,'inputPCAMLP10152');
inputPCAMLP10153 =  MLP([10 15],Training,Validation,Test,End,inputPCA,target,'inputPCAMLP10153');


% -------------------------------------------------------------------------

% Fitnet - input
% inputFitNet5 =  FitNet(5,Training,Validation,Test,End,input,target);

% -------------------------------------------------------------------------

% % Check validity
% % Age : Between 0 and 135
% row1 = input(1,:)>0 & input(1,:)<135 ; 
% row1Valid = all(row1 == row1(1));
% % Sex : 1 or 0
% row2 = input(2,:)==0 | input(2,:)==1 ; 
% row2Valid = all(row2 == row2(2));
% % Jitter(%) : Check between 0 and 1
% row3 = input(2,:)>=0 & input(2,:)<=1 ; 
% row3Valid = all(row3 == row3(2));
% % Jitter(Abs),Jitter:PPQ5,Jitter:DDP,Shimmer,Shimmer(dB),Shimmer:APQ5,Shimmer:APQ11,Shimmer:DDA,NHR,HNR,RPDE,DFA,PPE
% % Simply check if > 0
% row4To16 = input(4:16,:)>0; 
% row4To16Valid = all(row4To16(:) == 1); 
% % Total UDPRS : Between 0 and 176
% totalUDPRSTest = target.';
% totalUDPRSTest = totalUDPRSTest(1,:)>0 & totalUDPRSTest(1,:)<176 ; 
% totalUDPRSValid = all(totalUDPRSTest == totalUDPRSTest(1));

% Plot matrices of Jitter attributes
% Plot matrices of shimmer attributes
% Plot matrices of rest
% From this can see Jitter:RAP and Jitter:DDP correlated
% From this can see Shimmer:APQ3 and Shimmer:DDA correlated
% So can remove Jitter:RAP and Shimmer:ADPQ3 vars
% Code to get figures - can delete once got
%temp = [data(:,2:3)  data(:,7:end)];
%figure;plotmatrix(temp(:,8:13));
%figure;plotmatrix(temp(:,14:18));
%figure;plotmatrix(temp(:,3:7));

% PCA - Remove more vars
% From this can see last 8 vars have an eigenvalue < 0.0005
% Have a training set with these variables removed to see the effect
% [coeff,score,latent]=pca(input.');
% bar(latent);

% NETWORK DECISIONS, TESTING and % ANALYSIS
% Then train the network and record results for each architecture
% Pre-Processing
    % Check help files for nn toolbox to see whats done automatically.
    % mapstd - standardization - 
    % mapminmax - normalization - MATLAB uses MAPMINMAX as a default.
% What do the results look like
% Get a MSE
% What other outputs 
% Useful to show the regression 