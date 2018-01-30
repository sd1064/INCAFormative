function [ net , tr] = FitNet( neurons,Training,Validation,Test,End,input,target )
%FITNET Summary of this function goes here
%   Detailed explanation goes here

    net = fitnet(neurons);
    net.divideFcn = 'divideind';
    net.divideParam.trainInd = Training:(Validation-1);
    net.divideParam.valInd   = Validation:(Test-1);
    net.divideParam.testInd  = Test:End;
    [net , tr] = train(net,input,target);
    
    % Save regression
    regressionFile = strcat(filename,'reg');
    outputs = net(input);
    plotregression(target(tr.trainInd), outputs(tr.trainInd), 'Train', target(tr.valInd), outputs(tr.valInd), 'Validation', target(tr.testInd), outputs(tr.testInd), 'Testing')
    saveas(gcf, strcat(regressionFile,'.png'));
    
    % Save MSE
    mseFile = strcat(filename,'MSE');
    plotperform(tr);
    saveas(gcf, strcat(mseFile ,'.png'));
    
end

