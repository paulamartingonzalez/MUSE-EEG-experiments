function [allWavesRel] = plotmuse_relative(museData,smoothing,condition)
%UNTITLED7 Summary of this function goes here
%   Detailed explanation goes here

data_A = [museData.Alpha_TP9,museData.Alpha_AF7,museData.Alpha_AF8,museData.Alpha_TP10];
data_B = [museData.Beta_TP9,museData.Beta_AF7,museData.Beta_AF8,museData.Beta_TP10];
data_G = [museData.Gamma_TP9,museData.Gamma_AF7,museData.Gamma_AF8,museData.Gamma_TP10];
data_D = [museData.Delta_TP9,museData.Delta_AF7,museData.Delta_AF8,museData.Delta_TP10];
data_T = [museData.Theta_TP9,museData.Theta_AF7,museData.Theta_AF8,museData.Theta_TP10];

data_A = smooth(mean(data_A'),smoothing);
data_B = smooth(mean(data_B'),smoothing);
data_G = smooth(mean(data_G'),smoothing);
data_D = smooth(mean(data_D'),smoothing);
data_T = smooth(mean(data_T'),smoothing);

denominator = 10.^data_A+10.^data_B+10.^data_G+10.^data_D+10.^data_T
rel_A = 10.^data_A./denominator;
rel_B = 10.^data_B./denominator;
rel_G = 10.^data_G./denominator;
rel_D = 10.^data_D./denominator;
rel_T = 10.^data_T./denominator;

% rel_A = data_A./denominator;
% rel_B = data_B./denominator;
% rel_G = data_G./denominator;
% rel_D = data_D./denominator;
% rel_T = data_T./denominator;
% 
% figure;
% subplot(5,1,1)
% plot(rel_A)
% title('Relative alpha waves')
% xlabel('Time (s)')
% ylabel('Relative')
% ylim([0,1])
% subplot(5,1,2)
% plot(rel_B)
% title('Relative beta waves')
% xlabel('Time (s)')
% ylabel('Relative')
% ylim([0,1])
% subplot(5,1,3)
% plot(rel_G)
% title('Relative gamma waves')
% xlabel('Time (s)')
% ylabel('Relative')
% ylim([0,1])
% subplot(5,1,4)
% plot (rel_D)
% title('Relative delta waves')
% xlabel('Time (s)')
% ylabel('Relative')
% ylim([0,1])
% subplot(5,1,5)
% plot(rel_T)
% title('Relative theta waves')
% xlabel('Time (s)')
% ylabel('Relative')
% ylim([0,1])

lw=2;
figure;
hold on
plot(rel_A,'Color','#CC0000','LineWidth',lw)
hold on
plot(rel_B,'Color','#9933CC','LineWidth',lw)
hold on
plot(rel_G,'Color','#0099CC','LineWidth',lw)
hold on
plot (rel_D,'Color','#669900','LineWidth',lw)
hold on
plot(rel_T, 'Color','#FF8A00','LineWidth',lw)

legend('Alpha','Beta','Gamma','Delta','Theta','FontSize', 16)
title('Mind Monitor - Relative Brain Waves','FontSize', 18);
a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',16)
saveas(gcf,strcat(condition,'_mean_relative.png'));

rel_change_A = relChange(rel_A);
rel_change_B = relChange(rel_B);
rel_change_G = relChange(rel_G);
rel_change_D = relChange(rel_D);
rel_change_T = relChange(rel_T);

rel_changes = [rel_change_A,rel_change_B,rel_change_G,rel_change_D,rel_change_T]



rIndex = rel_changes >= 0;
bIndex = rel_changes <  0;
xVec = 1:5;

lw2 = 5;
figure('Units','normalized','Position',[0 0 1 1]);
ax = axes();
hold on
stem(xVec(rIndex),rel_changes(rIndex),'g','filled','LineWidth',lw2)
stem(ax,xVec(bIndex),rel_changes(bIndex),'r','filled','LineWidth',lw2)
xlim([0,6])
ylim([-50,100])
xticks([1 2 3 4 5])
xticklabels({'alpha','beta','gamma','delta','theta'})
xlabel('Each wave','fontsize',16)
ylabel('Relative change (%)','fontsize',16)
title('Change in relative brain waves during the recording','fontsize',18) 
a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',16)
allWavesRel = [rel_A,rel_B,rel_G,rel_D,rel_T];
saveas(gcf,strcat(condition,'_mean_relative_change.png'));
end

