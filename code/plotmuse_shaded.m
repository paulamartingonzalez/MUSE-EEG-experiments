function [allWaves] = plotmuse_shaded(museData,condition)
%UNTITLED7 Summary of this function goes here
%   Detailed explanation goes here

options.handle     = figure('Units','normalized','Position',[0 0 1 1]);
options.color_area = [128 193 219]./255;    % Blue theme
options.color_line = [ 52 148 186]./255;
options.alpha      = 0.5;
options.line_width = 2;
options.error      = 'std';

subplot(5,1,1)
data = [museData.Delta_TP9,museData.Delta_AF7,museData.Delta_AF8,museData.Delta_TP10];
data = data';
plot_areaerrorbar(data,options)
title('Delta waves - mean and std', 'FontSize', 18)
xlabel('Time (s)' ,'FontSize', 16)
a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',16)
ylabel('dB', 'FontSize', 16)
mean_D = mean(data)';

subplot(5,1,2)
data = [museData.Theta_TP9,museData.Theta_AF7,museData.Theta_AF8,museData.Theta_TP10];
data = data';
options.color_area = [243 169 114]./255;    % Orange theme
options.color_line = [236 112  22]./255;
plot_areaerrorbar(data,options)
title('Theta waves - mean and std', 'FontSize', 18)
xlabel('Time (s)', 'FontSize', 16)
ylabel('dB', 'FontSize', 16)
a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',16)
mean_T = mean(data)';

subplot(5,1,3)
data = [museData.Alpha_TP9,museData.Alpha_AF7,museData.Alpha_AF8,museData.Alpha_TP10];
data = data';
options.color_area = [0.4940, 0.1840, 0.5560];    % Orange theme
options.color_line = [0.4340, 0.1640, 0.5360];
plot_areaerrorbar(data,options)
title('Alpha waves - mean and std', 'FontSize', 18)
xlabel('Time (s)','fontsize',16)
ylabel('dB','fontsize',16)
a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',16)
mean_A = mean(data)';

subplot(5,1,4)
data = [museData.Beta_TP9,museData.Beta_AF7,museData.Beta_AF8,museData.Beta_TP10];
data = data';
options.color_area = [0.4660, 0.6740, 0.1880];    % Orange theme
options.color_line = [0.4460, 0.6540, 0.1680];
plot_areaerrorbar(data,options)
title('Beta waves - mean and std', 'FontSize', 18)
xlabel('Time (s)','fontsize',16)
ylabel('dB','fontsize',16)
a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',16)
mean_B = mean(data)';

subplot(5,1,5)
data = [museData.Gamma_TP9,museData.Gamma_AF7,museData.Gamma_AF8,museData.Gamma_TP10];
data = data';
options.color_area = [0.6350, 0.0780, 0.1840];    % Orange theme
options.color_line = [0.6150, 0.0680, 0.1640];
plot_areaerrorbar(data,options)
title('Gamma waves - mean and std', 'FontSize', 18)
xlabel('Time (s)','fontsize',16)
ylabel('dB','fontsize',16)
a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',16)
mean_G = mean(data)';

allWaves = [mean_A,mean_B,mean_G,mean_D,mean_T];
saveas(gcf,strcat(condition,'_mean_absolute.png'));
% 
% rel_change_A = relChange(smooth(mean_A,100));
% rel_change_B = relChange(smooth(mean_B,100));
% rel_change_G = relChange(smooth(mean_G,100));
% rel_change_D = relChange(smooth(mean_D,100));
% rel_change_T = relChange(smooth(mean_T,100));
% 
% rel_changes = [rel_change_A,rel_change_B,rel_change_G,rel_change_D,rel_change_T]
% 
% figure;
% 
% rIndex = rel_changes >= 0;
% bIndex = rel_changes <  0;
% xVec = 1:5;
% 
% lw2 = 5;
% figure
% ax = axes();
% hold on
% stem(xVec(rIndex),rel_changes(rIndex),'g','filled','LineWidth',lw2)
% stem(ax,xVec(bIndex),rel_changes(bIndex),'r','filled','LineWidth',lw2)
% xlim([0,6])
% ylim([-150,150])
% xticks([1 2 3 4 5])
% xticklabels({'alpha','beta','gamma','delta','theta'})
% xlabel('Each wave')
% ylabel('Relative change (%)')
% title('Change in absolute brain waves during the recording') 

end

