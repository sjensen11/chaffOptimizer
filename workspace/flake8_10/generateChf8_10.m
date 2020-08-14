%% Generating chaff 
%operating frequency8-10Ghz
%size of chaff: 2"x2"

%% this is demostration of chaffElt
freq = [8 9 10]*10^9; %hz, operating frequency
plateLength = 2 * .0254; %2 inches converted to meters
%angles to be optimized over
thetaVals = linspace(0,pi/3,3);
phiVals = 0;linspace(0,pi,3);
loadVal = 0; % don't have to have value, lets you preload a plate to speed up process (if already generated)
chf = chaffElt(freq,plateLength,thetaVals, phiVals,loadVal);

%% optimize code
tic
[chfNulled,pointsOnFull,RCSavg] = chf.maximizeRCSAvgSymmPatternSearch(1)
runtime = toc;
disp(['minues to run ' num2str(runtime/60)])


%% optimize pattern search
tic
[chfNulledZero,pointsOnFullZero,RCSavgZero] = chf.maximizeRCSAvgSymmPatternSearch(0);
runtime = toc;
disp(['minues to run ' num2str(runtime/60)])
%% getting and plotting the mono rcs