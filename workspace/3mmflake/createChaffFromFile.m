% need to take the stuff mark gave me and turn into chaff
%% generate chaff
freq = 35.*10^9; %hz, operating frequency

plateLength = 3*10^-3; %2 inches converted to meters
%angles to be optimized over
thetaVals = linspace(0,pi/2,20);
phiVals = linspace(0,pi/2,20);

NumCells = 60;
pixelSize = 4;

chf = chaffElt(freq,plateLength,thetaVals, phiVals,NumCells,pixelSize);

%% pattern to be used
pattern = Fullpattern_3mm_35GHz_without_registration;
[row,col]=find(pattern==0);
chf = chf.nullNew([row,col]);
