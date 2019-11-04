load('matlab2');
load('ytrain');
%load('xtest');
XTrain=xtrain;

YTrain=ytrain;%����ֵ����ת��Ϊ�������

%XTest=xtest;
%num0 = xlsread('C:\Users\24829\Desktop\data\s0');
%num1 = xlsread('C:\Users\24829\Desktop\data\s1');
%num2 = xlsread('C:\Users\24829\Desktop\data\s2');
%num6 = xlsread('C:\Users\24829\Desktop\data\s6');
%num7 = xlsread('C:\Users\24829\Desktop\data\s7');
%num8 = xlsread('C:\Users\24829\Desktop\data\s8');
%YTest=categorical(mts.testlabels);

%% ����LSTM����
inputSize = 5;%������ά��
numHiddenUnits = 200;%LSTM��·���������ص�Ԫ��Ŀ
numClasses = 3;%label��ǩ������,��������Ϊ����

layers = [ ...
    sequenceInputLayer(inputSize)
    bilstmLayer(numHiddenUnits,'OutputMode','last')
    fullyConnectedLayer(numClasses)
    softmaxLayer
    classificationLayer];

maxEpochs = 50;%���ѵ��������
miniBatchSize = 12;%�ֿ�ߴ�

options = trainingOptions('adam', ...
    'MiniBatchSize',miniBatchSize,...
    'MaxEpochs',maxEpochs, ...
    'GradientThreshold',1, ...
    'Verbose',true, ...
    'Plots','training-progress');
%% ѵ��
net=trainNetwork(XTrain,YTrain,layers, options)
%YPred = classify(net,XTest, ...
%   'MiniBatchSize',miniBatchSize, ...
%    'SequenceLength','longest')
%YPred