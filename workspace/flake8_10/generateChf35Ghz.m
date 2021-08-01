%% Generating chaff 
%operating frequency8-10Ghz
%size of chaff: 2"x2"


%% this is demostration of chaffElt
freq = 35.*10^9; %hz, operating frequency

plateLength = 3*10^-3;
%angles to be optimized over
thetaVals = linspace(0,pi/2,181);
phiVals = linspace(0,pi/4,12);

NumCells = 60;
pixelSize = 4;
tic
chf = chaffElt(freq,plateLength,thetaVals, phiVals,NumCells,pixelSize);
toc
%% playing with nullPixel
% close all
nullPlot = randi([0,1],NumCells/pixelSize);
nullPlot = [1 1 1 1 1;...
            1 0 1 1 1;...
            1 1 0 1 1;...
            1 1 1 1 1;...
            1 1 1 1 1];

[row,col]=find(nullPlot==0)
nullPos = [row,col];
chf = chf.nullPixels(nullPos)
chf.plotNullPos

%% symmetric nulling
%function takes in a lower triangle matrix and transforms it for a
%symmetric chaff
%this sets it to something random for testing
pixelNum = NumCells/pixelSize 
% lt = randi([0 1],4);
% nullPixelLT = tril(lt)

% can control pattern
nullPixelLT = [1 0 0 0;...
               1 1 0 0;...
               0 1 1 0;...
               1 1 0 1];
           
chf = chf.symmetricNullPix(nullPixelLT)
chf.plotNullPos
%% optimize 
maxRuns = 25; %controls max times ga will run
tic
[chfNulledGA,pointsOnFullGA,RCSavgGA] = chf.maximizeRCSAvgSymm(maxRuns);
runtime = toc
disp(['minues to run ' num2str(runtime/60)])

%% optimize pattern search
on = 0; %controls if starting with full metal or nothing
maxIterations = 40;
tic
[chfNulledPS,pointsOnFullPS,RCSavgPS] = chf.maximizeRCSAvgSymmPatternSearch(on,maxIterations);
runtime = toc
disp(['minues to run ' num2str(runtime/60)])