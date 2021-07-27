function [allWaves_mean,allWaves_std,vals_sixty,vals_i_sixty] = getOverallValues(allWaves)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
allWaves_mean = mean(allWaves);
allWaves_std = std(allWaves);
%allWaves_mean_sixty = mean(allWaves(length(allWaves)-70:length(allWaves)-10,:));
%allWaves_std_sixty = std(allWaves(length(allWaves)-70:length(allWaves)-10,:));
vals_sixty = allWaves(length(allWaves)-70:length(allWaves)-10,:);
vals_i_sixty = allWaves(10:70,:);
end

