%需要同第三问进行深度学习模型的训练
%需要加载数据集，导入数据
% 将表格转换为数组
newData = table2array(test);
% 对新数据进行与训练数据相同的预处理
features_newData = newData(:,1:end); % 选择前20列作为特征
%probabilities_newData = newData(:,end); % 第21列作为概率
% 对新数据进行标准化
newDataNorm = zscore(features_newData);

% 使用训练好的网络进行预测
predictedProbabilitiesNew = predict(net, newDataNorm);
predictedProbabilitiesNew = predictedProbabilitiesNew * std(probabilities) + mean(probabilities); % 反标准化

% 打印预测结果
disp(predictedProbabilitiesNew);


% 绘制直方图
figure;
histogram(predictedProbabilitiesNew);
title('Predicted Flood Probabilities Histogram');
xlabel('Flood Probability');
ylabel('Frequency');

% 绘制折线图
figure;
plot(predictedProbabilitiesNew);
title('Predicted Flood Probabilities Line Plot');
xlabel('Event Index');
ylabel('Flood Probability');

% 进行正态性检验
[h, p] = kstest(predictedProbabilitiesNew);
if h == 0
    disp('该分布与正态分布一致');
else
    disp('该分布与正态分布不一致');
end







