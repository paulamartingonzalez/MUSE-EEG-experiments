clc
clear all
close all

%% Meditation:
condition = 'meditation'
smoothing = 100;
[museData, museElements] = mmImport('mindMonitor_2021-04-25--23-16-05.csv')
%mmPlotAve(museData)
[allWaves_med] = plotmuse_shaded(museData,condition);
%close all
[allWaves_mean_med,allWaves_std_med,vals_sixty_med,vals_i_sixty_med] = getOverallValues(allWaves_med);
[allWavesRel_med] = plotmuse_relative(museData,smoothing,condition);
[allWavesRel_mean_med,allWavesRel_std_med,valsRel_sixty_med,valsRel_i_sixty_med] = getOverallValues(allWavesRel_med);
%figure;
%plotmusediff_shaded(museData)


%% Mindless scrolling:
condition = 'scrolling';
[museData, museElements] = mmImport('mindMonitor_2021-04-25--23-03-58.csv')
%mmPlotAve(museData)
[allWaves_s] = plotmuse_shaded(museData,condition);
[allWaves_mean_s,allWaves_std_s,vals_sixty_s,vals_i_sixty_s] = getOverallValues(allWaves_s);
%close all
%plotmuse_relative(museData,smoothing)

[allWavesRel_s] = plotmuse_relative(museData,smoothing,condition);
[allWavesRel_mean_s,allWavesRel_std_s,valsRel_sixty_s,valsRel_i_sixty_s] = getOverallValues(allWavesRel_s);




%% Reading:
condition = 'reading'
[museData, museElements] = mmImport('mindMonitor_2021-04-25--22-31-27.csv')
%mmPlotAve(museData)
[allWaves_red] = plotmuse_shaded(museData,condition);
[allWaves_mean_red,allWaves_std_red,vals_sixty_red,vals_i_sixty_red] = getOverallValues(allWaves_red);
close all

[allWavesRel_red] = plotmuse_relative(museData,smoothing,condition);
[allWavesRel_mean_red,allWavesRel_std_red,valsRel_sixty_red,valsRel_i_sixty_red] = getOverallValues(allWavesRel_red);

% figure;
% h = {vals_i_sixty_med,vals_i_sixty_s,vals_i_sixty_red};
% aboxplot(h,'labels',[1,2,3,4,5]); % Advanced box plot
% xlabel('Each wave'); % Set the X-axis label
% ylabel('dB'); % Set the X-axis label
% xticklabels({'alpha','beta','gamma','delta','theta'})
% legend('medidation','scrolling','reading'); % Add a legend
% title('Absolute brain waves')

figure('Units','normalized','Position',[0 0 1 1]);
h = {vals_sixty_med,vals_sixty_s,vals_sixty_red};
aboxplot(h,'labels',[1,2,3,4,5]); % Advanced box plot
xlabel('Each wave','fontsize',16); % Set the X-axis label
ylabel('dB','fontsize',16); % Set the X-axis label
xticklabels({'alpha','beta','gamma','delta','theta'})
a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',16)
legend('medidation','scrolling','reading','fontsize',16); % Add a legend
title('Absolute brain waves','fontsize',18)
saveas(gcf,strcat('ALL_absolute_final.png'));

figure('Units','normalized','Position',[0 0 1 1]);
h = {valsRel_i_sixty_med,valsRel_i_sixty_s,valsRel_i_sixty_red};
aboxplot(h,'labels',[1,2,3,4,5]); % Advanced box plot
xlabel('Each wave','fontsize',16); % Set the X-axis label
ylabel('dB','fontsize',16); % Set the X-axis label
ylim([0 0.5])
xticklabels({'alpha','beta','gamma','delta','theta'})
a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',16)
legend('medidation','scrolling','reading','fontsize',16); % Add a legend
title('Relative brain waves (initial 60 s)','fontsize',18)

saveas(gcf,strcat('ALL_relative_initial.png'));

figure('Units','normalized','Position',[0 0 1 1]);
h = {valsRel_sixty_med,valsRel_sixty_s,valsRel_sixty_red};
aboxplot(h,'labels',[1,2,3,4,5]); % Advanced box plot
xlabel('Each wave','fontsize',16); % Set the X-axis label
ylabel('%','fontsize',16); % Set the X-axis label
ylim([0 0.5])
xticklabels({'alpha','beta','gamma','delta','theta'})
a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',16)
legend('medidation','scrolling','reading','fontsize',16); % Add a legend
title('Relative brain waves (final 60 s)','fontsize',18)
saveas(gcf,strcat('ALL_relative_final.png'));

% %% Meditation 2:
% % this one was a bit chaotic, my family outside talking, youtube adds
% % popping...
% count = -2
% smoothing = 100
% [museData, museElements] = mmImport('/Users/martin09/Documents/biohacking/muse exps/data/mindMonitor_2021-04-28--22-09-18.csv')
% %mmPlotAve(museData)
% [allWaves_med2] = plotmuse_shaded(museData,count+3);
% close all
% [allWaves_mean_med2,allWaves_std_med2,vals_sixty_med2] = getOverallValues(allWaves_med);
% [allWavesRel_med2] = plotmuse_relative(museData,smoothing);
% [allWavesRel_mean_med2,allWavesRel_std_med2,valsRel_sixty_med2] = getOverallValues(allWavesRel_med);
% %figure;
% %plotmusediff_shaded(museData)

