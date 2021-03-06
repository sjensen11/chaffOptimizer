%% Generating chaff 
%operating frequency8-10Ghz
%size of chaff: 2"x2"
%needed another file to muck around with on home pc without messing up git
%stuff

%% this is demostration of chaffElt
freq = [8 9 10]*10^9; %hz, operating frequency
plateLength = 2 * .0254; %2 inches converted to meters
%angles to be optimized over
thetaVals = linspace(0,pi/2,10);
phiVals = linspace(0,pi,20);
loadVal = 0; % don't have to have value, lets you preload a plate to speed up process (if already generated)
chf = chaffElt(freq,plateLength,thetaVals, phiVals,loadVal);

%% optimize pattern search
tic
[chfNulledZero,pointsOnFullZero,RCSavgZero] = chf.maximizeRCSAvgSymmPatternSearch(1);
runtime = toc;
disp(['minues to run ' num2str(runtime/60)])

%% getting and plotting the mono rcs
%something is wrong here
numPoints = chf.getNumCellsFull();
xx = ones(numPoints,1);
avgRCSPLATE = chfNulled.null2minRCSAvg(xx)

avgRCSCHF = chfNulled.null2minRCSAvg(pointsOnFull)


%% getting RCS averages and percent differences
%avgRCSFull is right?
[perfDif,avgRCSNull,avgRCSFull] = chfNulledZero.compareRCS()

%% plot monostatic RCS 3d
chfNulledGA.plotMonoFlat(0)
