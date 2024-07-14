
% 导入前1万组数据，进行可视化与相关性分析，得到10000×22矩阵
%data = train; % 
data = table2array(train);

% 绘制散点图1
figure;
subplot(5, 4, 1);
scatter(data(:, 2), data(:, end));
% 添加标题和轴标签
title('季风强度 vs 洪水概率');
xlabel('季风强度');
ylabel('洪水概率');

% 计算相关系数

r = corrcoef(data(:, 2), data(:, end));
correlation_coefficient = r(1, 2);
disp(['季风强度与洪水概率的相关性: ', num2str(correlation_coefficient)]);

% 绘制散点图2
%figure;
subplot(5, 4, 2);
scatter(data(:, 3), data(:, end));
% 添加标题和轴标签
title('地形排水 vs 洪水概率');
xlabel('地形排水');
ylabel('洪水概率');
% 计算相关系数
r = corrcoef(data(:, 3), data(:, end));
correlation_coefficient = r(1, 2);
disp(['地形排水与洪水概率的相关性: ', num2str(correlation_coefficient)]);

% 绘制散点图3
%figure;
subplot(5, 4, 3);
scatter(data(:, 4), data(:, end));
% 添加标题和轴标签
title('河流管理 vs 洪水概率');
xlabel('河流管理');
ylabel('洪水概率');
% 计算相关系数
r = corrcoef(data(:, 4), data(:, end));
correlation_coefficient = r(1, 2);
disp(['河流管理与洪水概率的相关性: ', num2str(correlation_coefficient)]);

% 绘制散点图4
%figure;
subplot(5, 4, 4);
scatter(data(:, 5), data(:, end));
% 添加标题和轴标签
title('森林砍伐 vs 洪水概率');
xlabel('森林砍伐');
ylabel('洪水概率');
% 计算相关系数
r = corrcoef(data(:, 5), data(:, end));
correlation_coefficient = r(1, 2);
disp(['森林砍伐与洪水概率的相关性: ', num2str(correlation_coefficient)]);

% 绘制散点图5
%figure;
subplot(5, 4, 5);
scatter(data(:, 6), data(:, end));
% 添加标题和轴标签
title('城市化 vs 洪水概率');
xlabel('城市化');
ylabel('洪水概率');
% 计算相关系数
r = corrcoef(data(:, 6), data(:, end));
correlation_coefficient = r(1, 2);
disp(['城市化与洪水概率的相关性: ', num2str(correlation_coefficient)]);

% 绘制散点图6
%figure;
subplot(5, 4, 6);
scatter(data(:, 7), data(:, end));
% 添加标题和轴标签
title('气候变化 vs 洪水概率');
xlabel('气候变化');
ylabel('洪水概率');
% 计算相关系数
r = corrcoef(data(:, 7), data(:, end));
correlation_coefficient = r(1, 2);
disp(['气候变化与洪水概率的相关性: ', num2str(correlation_coefficient)]);

% 绘制散点图7
%figure;
subplot(5, 4, 7);
scatter(data(:, 8), data(:, end));
% 添加标题和轴标签
title('大坝质量 vs 洪水概率');
xlabel('大坝质量');
ylabel('洪水概率');
% 计算相关系数
r = corrcoef(data(:, 8), data(:, end));
correlation_coefficient = r(1, 2);
disp(['大坝质量与洪水概率的相关性: ', num2str(correlation_coefficient)]);

% 绘制散点图8
%figure;
subplot(5, 4, 8);
scatter(data(:, 9), data(:, end));
% 添加标题和轴标签
title('淤积 vs 洪水概率');
xlabel('淤积');
ylabel('洪水概率');
% 计算相关系数
r = corrcoef(data(:, 9), data(:, end));
correlation_coefficient = r(1, 2);
disp(['淤积与洪水概率的相关性: ', num2str(correlation_coefficient)]);

% 绘制散点图9
%figure;
subplot(5, 4, 9);
scatter(data(:, 10), data(:, end));
% 添加标题和轴标签
title('农业实践 vs 洪水概率');
xlabel('农业实践');
ylabel('洪水概率');
% 计算相关系数
r = corrcoef(data(:, 10), data(:, end));
correlation_coefficient = r(1, 2);
disp(['农业实践与洪水概率的相关性: ', num2str(correlation_coefficient)]);

% 绘制散点图10
%figure;
subplot(5, 4, 10);
scatter(data(:, 11), data(:, end));
% 添加标题和轴标签
title('侵蚀 vs 洪水概率');
xlabel('侵蚀');
ylabel('洪水概率');
% 计算相关系数
r = corrcoef(data(:, 11), data(:, end));
correlation_coefficient = r(1, 2);
disp(['侵蚀与洪水概率的相关性: ', num2str(correlation_coefficient)]);

% 绘制散点图11
%figure;
subplot(5, 4, 11);
scatter(data(:, 12), data(:, end));
% 添加标题和轴标签
title('无效防灾 vs 洪水概率');
xlabel('无效防灾');
ylabel('洪水概率');
% 计算相关系数
r = corrcoef(data(:, 12), data(:, end));
correlation_coefficient = r(1, 2);
disp(['无效防灾与洪水概率的相关性: ', num2str(correlation_coefficient)]);

% 绘制散点图12
%figure;
subplot(5, 4, 12);
scatter(data(:, 13), data(:, end));
% 添加标题和轴标签
title('排水系统 vs 洪水概率');
xlabel('排水系统');
ylabel('洪水概率');
% 计算相关系数
r = corrcoef(data(:, 13), data(:, end));
correlation_coefficient = r(1, 2);
disp(['排水系统与洪水概率的相关性: ', num2str(correlation_coefficient)]);

% 绘制散点图13
%figure;
subplot(5, 4, 13);
scatter(data(:, 14), data(:, end));
% 添加标题和轴标签
title('海岸脆弱性 vs 洪水概率');
xlabel('海岸脆弱性');
ylabel('洪水概率');
% 计算相关系数
r = corrcoef(data(:, 14), data(:, end));
correlation_coefficient = r(1, 2);
disp(['海岸脆弱性与洪水概率的相关性: ', num2str(correlation_coefficient)]);

% 绘制散点图14
%figure;
subplot(5, 4, 14);
scatter(data(:, 15), data(:, end));
% 添加标题和轴标签
title('滑坡 vs 洪水概率');
xlabel('滑坡');
ylabel('洪水概率');
% 计算相关系数
r = corrcoef(data(:, 15), data(:, end));
correlation_coefficient = r(1, 2);
disp(['滑坡与洪水概率的相关性: ', num2str(correlation_coefficient)]);

% 绘制散点图15
%figure;
subplot(5, 4, 15);
scatter(data(:, 16), data(:, end));
% 添加标题和轴标签
title('流域 vs 洪水概率');
xlabel('流域');
ylabel('洪水概率');
% 计算相关系数
r = corrcoef(data(:, 16), data(:, end));
correlation_coefficient = r(1, 2);
disp(['流域与洪水概率的相关性: ', num2str(correlation_coefficient)]);

% 绘制散点图16
%figure;
subplot(5, 4, 16);
scatter(data(:, 17), data(:, end));
% 添加标题和轴标签
title('基础设施恶化 vs 洪水概率');
xlabel('基础设施恶化');
ylabel('洪水概率');
% 计算相关系数
r = corrcoef(data(:, 17), data(:, end));
correlation_coefficient = r(1, 2);
disp(['基础设施恶化与洪水概率的相关性: ', num2str(correlation_coefficient)]);

% 绘制散点图17
%figure;
subplot(5, 4, 17);
scatter(data(:, 18), data(:, end));
% 添加标题和轴标签
title('人口得分 vs 洪水概率');
xlabel('人口得分');
ylabel('洪水概率');
% 计算相关系数
r = corrcoef(data(:, 18), data(:, end));
correlation_coefficient = r(1, 2);
disp(['人口得分与洪水概率的相关性: ', num2str(correlation_coefficient)]);

% 绘制散点图18
%figure;
subplot(5, 4, 18);
scatter(data(:, 19), data(:, end));
% 添加标题和轴标签
title('湿地损失 vs 洪水概率');
xlabel('湿地损失');
ylabel('洪水概率');
% 计算相关系数
r = corrcoef(data(:, 19), data(:, end));
correlation_coefficient = r(1, 2);
disp(['湿地损失与洪水概率的相关性: ', num2str(correlation_coefficient)]);

% 绘制散点图19
%figure;
subplot(5, 4, 19);
scatter(data(:, 20), data(:, end));
% 添加标题和轴标签
title('规划不足 vs 洪水概率');
xlabel('规划不足');
ylabel('洪水概率');
% 计算相关系数
r = corrcoef(data(:, 20), data(:, end));
correlation_coefficient = r(1, 2);
disp(['规划不足与洪水概率的相关性: ', num2str(correlation_coefficient)]);

% 绘制散点图20
%figure;
subplot(5, 4, 20);
scatter(data(:, 21), data(:, end));
% 添加标题和轴标签
title('政策因素 vs 洪水概率');
xlabel('政策因素');
ylabel('洪水概率');
% 计算相关系数
r = corrcoef(data(:, 21), data(:, end));
correlation_coefficient = r(1, 2);
disp(['政策因素与洪水概率的相关性: ', num2str(correlation_coefficient)]);






