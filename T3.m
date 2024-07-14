% 加载数据
data = table2array(train);
features = data(:,1:end-1); % 选择前20列作为特征
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



% 设置网络参数
net.divideFcn = ''; % 关闭自动划分数据集功能
net.trainParam.epochs = 1000; % 最大训练轮数
net.trainParam.goal = 1e-5; % 目标误差

% 将 trainProbabilities 转置为列向量
trainProbabilities = trainProbabilities(:);

% 对于深度学习网络
layers = ... % 定义网络层
options = trainingOptions('adam'); % 设置训练选项
net = trainNetwork(trainFeatures, trainProbabilities, layers, options);


% 测试网络
predictedProbabilities = net(testFeatures');
predictedProbabilities = predictedProbabilities * std(probabilities) + mean(probabilities);
testProbabilities = testProbabilities * std(probabilities) + mean(probabilities);

% 评估模型
mse = mean((predictedProbabilities - testProbabilities).^2);
fprintf('Mean Squared Error: %f\n', mse);