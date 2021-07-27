function [] = plotmusediff_shaded(museData)
%UNTITLED7 Summary of this function goes here
%   Detailed explanation goes here
subplot(5,1,1)
data = [museData.Delta_TP9,museData.Delta_AF7,museData.Delta_AF8,museData.Delta_TP10];
data = diff(data');
options.handle     = figure(2);
options.color_area = [128 193 219]./255;    % Blue theme
options.color_line = [ 52 148 186]./255;
options.alpha      = 0.5;
options.line_width = 2;
options.error      = 'std';
plot_areaerrorbar(data,options)
yline(0,'k','--')
title('DiffDelta waves - mean and std')
xlabel('Time (s)')

subplot(5,1,2)
data = [museData.Theta_TP9,museData.Theta_AF7,museData.Theta_AF8,museData.Theta_TP10];
data = diff(data');
options.color_area = [243 169 114]./255;    % Orange theme
options.color_line = [236 112  22]./255;
plot_areaerrorbar(data,options)
yline(0,'k','--')
title('DiffTheta waves - mean and std')
xlabel('Time (s)')

subplot(5,1,3)
data = [museData.Alpha_TP9,museData.Alpha_AF7,museData.Alpha_AF8,museData.Alpha_TP10];
data = diff(data');
options.color_area = [0.4940, 0.1840, 0.5560];    % Orange theme
options.color_line = [0.4340, 0.1640, 0.5360];
plot_areaerrorbar(data,options)
yline(0,'k','--')
title('DiffAlpha waves - mean and std')
xlabel('Time (s)')

subplot(5,1,4)
data = [museData.Beta_TP9,museData.Beta_AF7,museData.Beta_AF8,museData.Beta_TP10];
data = diff(data');
options.color_area = [0.4660, 0.6740, 0.1880];    % Orange theme
options.color_line = [0.4460, 0.6540, 0.1680];
plot_areaerrorbar(data,options)
yline(0,'k','--')
title('DiffBeta waves - mean and std')
xlabel('Time (s)')

subplot(5,1,5)
data = [museData.Gamma_TP9,museData.Gamma_AF7,museData.Gamma_AF8,museData.Gamma_TP10];
data = diff(data');
options.color_area = [0.6350, 0.0780, 0.1840];    % Orange theme
options.color_line = [0.6150, 0.0680, 0.1640];
plot_areaerrorbar(data,options)
yline(0,'k','--')
title('DiffGamma waves - mean and std')
xlabel('Time (s)')
ylabel('dB')
end

