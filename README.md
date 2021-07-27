# MUSE-EEG-experiments

This is the acompanying code for the Medium post "My first experience analysing at-home EEG using the MUSE headband data" [link]

## Code:

The code here is based on the one available from [MindMonitor](https://mind-monitor.com/FAQ.php#matlab) but I have expanded it in the following ways:

- I plot the mean and standard deviation of the absolute brainwaves to analyse better the patterns.

- I calculate the relative brain waves at each time point using the description [here](https://web.archive.org/web/20181105231756/http://developer.choosemuse.com/tools/available-data#Absolute_Band_Powers) and added some smoothing as well.

- Also, I think it is very interesting to look at the changes in relative brain waves over different activities. I calculate the relative change in the last and final twenty seconds of each recording. Before that, I removed the first and last ten seconds to avoid artifacts when starting or pausing the recording as I was doing this myself.

## Data:

The data here corresponds to the three different scenarios described in the post. Go to the runAll.m script to analyse them all :) 
