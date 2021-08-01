%% timing stuff
numQuartPixel = ceil(chf.numPixels/2); %in case of odd number 
numPoints = numQuartPixel^2; %number of points in a quarter
pointsOn_ub = ones(numPoints,1);

pointsOn = [ones(numPoints/2,1) zeros(numPoints/2,1)];

chf.null2minRCSAvgSym(pointsOn)