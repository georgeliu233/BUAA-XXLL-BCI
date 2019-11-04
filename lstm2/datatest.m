load('matlab2');
load('ytrain');
%load('xtest');
XTrain=xtrain;

YTrain=ytrain;%将数值数组转化为类别数组

%XTest=xtest;
%num0 = xlsread('C:\Users\24829\Desktop\data\s0');
%num1 = xlsread('C:\Users\24829\Desktop\data\s1');
%num2 = xlsread('C:\Users\24829\Desktop\data\s2');
%num6 = xlsread('C:\Users\24829\Desktop\data\s6');
%num7 = xlsread('C:\Users\24829\Desktop\data\s7');
%num8 = xlsread('C:\Users\24829\Desktop\data\s8');
%YTest=categorical(mts.testlabels);

%% 构建LSTM网络
inputSize = 5;%特征的维度
numHiddenUnits = 200;%LSTM网路包含的隐藏单元数目
numClasses = 3;%label标签的种数,该例子中为人数

layers = [ ...
    sequenceInputLayer(inputSize)
    bilstmLayer(numHiddenUnits,'OutputMode','last')
    fullyConnectedLayer(numClasses)
    softmaxLayer
    classificationLayer];

maxEpochs = 50;%最大训练周期数
miniBatchSize = 12;%分块尺寸

options = trainingOptions('adam', ...
    'MiniBatchSize',miniBatchSize,...
    'MaxEpochs',maxEpochs, ...
    'GradientThreshold',1, ...
    'Verbose',true, ...
    'Plots','training-progress');
%% 训练
net=trainNetwork(XTrain,YTrain,layers, options)
%YPred = classify(net,XTest, ...
%   'MiniBatchSize',miniBatchSize, ...
%    'SequenceLength','longest')
%YPred