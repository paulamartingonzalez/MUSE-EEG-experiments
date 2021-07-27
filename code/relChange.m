function [rel_change] = relChange(rel_A)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
wait = 10; %seconds we don't count at the begining and at the end, acounting for changes when pressing record and pausing
timespan = 20; %seconds of the time span to be analysed
rel_A_i = mean(rel_A(wait:wait+timespan,1));
rel_A_f = mean(rel_A(length(rel_A)-(timespan+wait):length(rel_A)-wait,1));
rel_change = 100*(rel_A_f-rel_A_i)/rel_A_i;
end

