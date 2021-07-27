function [] = plotmuse_raw(museData)
%UNTITLED7 Summary of this function goes here
%   Detailed explanation goes here
figure;
data = museData.RAW_AF7;
subplot(4,1,1)
plot(museData.TimeStamp, museData.RAW_TP9,'Color','#CC0000');
title('TP9 (raw)')
xlabel('Time (s)')
ylabel('uV')
subplot(4,1,2)
plot(museData.TimeStamp, museData.RAW_AF7, 'Color','#9933CC');
title('AF7 (raw)')
xlabel('Time (s)')
ylabel('uV')
subplot(4,1,3)
plot(museData.TimeStamp, museData.RAW_AF8, 'Color','#0099CC');
title('AF8 (raw)')
xlabel('Time (s)')
ylabel('uV')
subplot(4,1,4)
plot(museData.TimeStamp, museData.RAW_TP10, 'Color','#669900');
title('TP10 (raw)')
xlabel('Time (s)')
ylabel('uV')
end

