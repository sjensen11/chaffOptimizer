%% Generating chaff 
%operating frequency8-10Ghz
%size of chaff: 2"x2"


%% this is demostration of chaffElt
freq = [8,9,10].*10^9; %hz, operating frequency

plateLength = 2 * .0254; %2 inches converted to meters
%angles to be optimized over
thetaVals = linspace(0,pi/2,100);
phiVals = linspace(0,pi/2,50);

NumCells = 100;
pixelSize = 10;

if(mod(NumCells/pixelSize,2))
    error('you want even girl :/ probably should fix this')
end
chf = chaffElt(freq,plateLength,thetaVals, phiVals,NumCells,pixelSize);

%% playing with nullPixel
% close all
% nullPlot = randi([0,1],NumCells/pixelSize);
% % nullPlot = [0 1 0 1;...
% %             1 0 1 0;...
% %             1 1 1 1;...
% %             1 1 1 1];
% [row,col]=find(nullPlot==0)
% nullPos = [row,col];
% chf = chf.nullPixels(nullPos)
% chf.plotNullPos
%% nulling for checkerboard
% nullPos = [ones(6,1) (1:6).';2*ones(6,1) (1:6).';3*ones(6,1) (1:6).';...
%          4*ones(6,1) (1:6).';5*ones(6,1) (1:6).';6*ones(6,1) (1:6).';...
%          7*ones(6,1) (7:12).';8*ones(6,1) (7:12).';9*ones(6,1) (7:12).';...
%          10*ones(6,1) (7:12).';11*ones(6,1) (7:12).';12*ones(6,1) (7:12).'] 
% % nullPos = [ones(5,1) (1:5).';2*ones(5,1) (1:5).';3*ones(5,1) (1:5).';...
% %          4*ones(5,1) (1:5).';5*ones(5,1) (1:5).';6*ones(5,1) (1:5).';...
% %          7*ones(6,1) (7:12).';8*ones(6,1) (7:12).';9*ones(6,1) (7:12).';...
% %          10*ones(6,1) (7:12).';11*ones(6,1) (7:12).';12*ones(6,1) (7:12).'] 
% 
% chf = chf.nullNew(nullPos);
% chf.plotNullPos


%% optimize code
% tic
% [chfNulled,pointsOnFull,RCSavg] = chf.maximizeRCSAvgSymmPatternSearch(1)
% runtime = toc
% disp(['minues to run ' num2str(runtime/60)])


%% optimize pattern search
% tic
% [chfNulledZero,pointsOnFullZero,RCSavgZero] = chf.maximizeRCSAvgSymmPatternSearch(0);
% runtime = toc
% disp(['minues to run ' num2str(runtime/60)])

% optimize - genetic algorithm
tic
[chfNulledGA,pointsOnFullGA,RCSavgGA] = chf.maximizeRCSAvgSymm;
runtime = toc
disp(['minues to run ' num2str(runtime/60)])
%% getting and plotting the mono rcs
% numPoints = chf.getNumCellsFull();
% xx = zeros(numPoints,1);
% % xx(numPoints/2:end) = 1;
% % sum(xx)
% 
% xx = randi([0,1],[1,numPoints]);
% 
% avgRCSPLATE = chf.null2minRCSAvg(xx)