function [mean_meanA, std_meanA, mean_meanA_sixty, std_meanA_sixty] = overallValues(meanA)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
mean_meanA = mean(meanA);
std_meanA = std(meanA);
mean_meanA_sixty = mean(meanA(length(meanA)-70:length(meanA)-10));
std_meanA_sixty = std(meanA(length(meanA)-70:length(meanA)-10));

end

