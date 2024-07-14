% 加载数据
data = table2array(train);
features = data(:,[1,3,6,8,15]); % 选择5个作为特征
probabilities = data(:,end); % 第21列作为概率

% 数据预处理
featuresNorm = zscore(features); % 特征标准化

% 划分数据集
trainRatio = 0.7; % 训练集占比
totalSamples = size(featuresNorm,1);
trainSamples = round(totalSamples * trainRatio);
testSamples = totalSamples - trainSamples;

% 生成随机索引
allInd = randperm(totalSamples);
trainInd = allInd(1:trainSamples);
testInd = allInd(trainSamples+1:end);

% 从数据集中选取训练集和测试集
trainFeatures = featuresNorm(trainInd,:);
trainProbabilities = probabilities(trainInd);
testFeatures = featuresNorm(testInd,:);
testProbabilities = probabilities(testInd);


% 定义网络层
% 定义网络层
inputSize = size(trainFeatures,2); % 输入层大小等于特征数量
layers = [
    featureInputLayer(inputSize) % 明确指定输入层及其尺寸
    fullyConnectedLayer(20) % 第一层全连接层
    reluLayer % ReLU激活函数
    fullyConnectedLayer(128) % 第二层全连接层
    reluLayer % ReLU激活函数
    fullyConnectedLayer(64) % 第三层全连接层
    reluLayer % ReLU激活函数
    fullyConnectedLayer(1) % 输出层
    regressionLayer % 回归层
];

% 设置训练选项
options = trainingOptions('adam', ...
    'MaxEpochs', 1000, ...
    'MiniBatchSize', 32, ...
    'InitialLearnRate', 0.001, ...
    'Shuffle', 'every-epoch', ...
    'ValidationData', {testFeatures, testProbabilities}, ...
    'ValidationFrequency', 10, ...
    'Verbose', false, ...
    'Plots', 'training-progress');

% 将 trainProbabilities 转置为列向量
trainProbabilities = trainProbabilities(:);

% 训练网络
net = trainNetwork(trainFeatures, trainProbabilities, layers, options);

% 测试网络
predictedProbabilities = predict(net, testFeatures);
predictedProbabilities = predictedProbabilities * std(probabilities) + mean(probabilities);
testProbabilities = testProbabilities * std(probabilities) + mean(probabilities);

% 评估模型
mse = mean((predictedProbabilities - testProbabilities).^2);
fprintf('Mean Squared Error: %f\n', mse);

% 将表格转换为数组
newData = table2array(test);
% 对新数据进行与训练数据相同的预处理
features_newData = newData(:,[1,3,6,8,15]); % 选择5个作为特征
%probabilities_newData = newData(:,end); % 第21列作为概率
% 对新数据进行标准化
newDataNorm = zscore(features_newData);

% 使用训练好的网络进行预测
predictedProbabilitiesNew = predict(net, newDataNorm);
predictedProbabilitiesNew = predictedProbabilitiesNew * std(probabilities) + mean(probabilities); % 反标准化

% 打印预测结果
disp(predictedProbabilitiesNew);

