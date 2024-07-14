% 加载数据
data = table2array(train);
% 假设第22列是洪水概率
probabilities = data(:, end);
data = data(:, 1:end-1); % 只保留特征

% 标准化数据
data = zscore(data);

% 设置聚类数量
numClusters = 3;

% 执行K-Means聚类
[idx, C] = kmeans(probabilities, numClusters);

% 可视化聚类结果
figure;
histogram(idx, 'Normalization', 'probability');
title('洪水风险聚类直方图');


% 分离不同风险级别的数据
lowRiskData = data(idx == 1, :);
mediumRiskData = data(idx == 2, :);
highRiskData = data(idx == 3, :);

% 计算每个聚类中各指标的平均值
meanLowRisk = mean(lowRiskData);
meanMediumRisk = mean(mediumRiskData);
meanHighRisk = mean(highRiskData);

% 使用线性回归计算权重
mdl = fitlm(data, probabilities);
weights = mdl.Coefficients.Estimate;


% 建立线性回归模型
mdl = fitlm(data, probabilities);

% 选取一个关键参数进行灵敏度分析

keyFeatureIndex = 19; % 选择第二个特征作为例子
x0 = mean(data(:, keyFeatureIndex));
h = 0.8 * std(data(:, keyFeatureIndex));

dataPointX0MinusH = data;
dataPointX0MinusH(:, keyFeatureIndex) = x0 - h;

dataPointX0PlusH = data;
dataPointX0PlusH(:, keyFeatureIndex) = x0 + h;

P_x0MinusH = predict(mdl, dataPointX0MinusH);
P_x0PlusH = predict(mdl, dataPointX0PlusH);

SensitivityCoefficient = (P_x0PlusH - P_x0MinusH) / (2*h);
meanSensitivityCoefficient = mean(SensitivityCoefficient);
fprintf('灵敏度系数 = %f: %f\n', meanSensitivityCoefficient);




