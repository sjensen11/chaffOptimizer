%% demoscript
%only including this for completeness. Will include a mat file that has
%necessary chaff and this part can be skipped. As such, both chf
%generations are commented out for speed.

%operating frequency (this can be an array, using one value, so rcs plots
%don't get crazy)
freq = 35*10^9; %hz 

%plate size
plateLength = 3*10^-3;%2 * .0254; %2 inches converted to meters

%angles to be optimized over
%not showing that part of code, so just leaving these as a single value
thetaVals = linspace(0,pi/2,181);
phiVals = linspace(0,pi/4,12);

%set NumCells: controls number of cells across a single row, so for example 
%a 10x10 would have 100 cells total. each one of these cells can be turned
%on or off
%what the z-matrix actually cares about is edges of each of those cells 
%though, because that's where the basis function 'exists' There's a set of 
%basis function for the x-directed current and the y-directed current, so
%total size of the z-matrix would be 2*N*(N-1) x 2*N*(N-1) or taking
%ex) 10x10, z-matrix size would be 180x180 
%to turn a cell off, the edges surrounding that cell are removed
%can set here or its defaults to lambda/10 division 
NumCells_odd = 28;

%set pixelSize: the number of cells in each pixel, needs to be able to
%divide NumCells and get an integer value out which will be the number
%of pixels... ex) 24/6 will give a 4 pixel resolution
pixelSize = 4;



%create odd chaff
% tic
% chf_odd = chaffElt(freq,plateLength,thetaVals, phiVals,NumCells_odd ,pixelSize);
% toc

%create even chaff
NumCells_even = 32
% tic
chf_even = chaffElt(freq,plateLength,thetaVals, phiVals,NumCells_even,pixelSize);
% toc

%% set pattern
%function takes in a lower triangle matrix and transforms it for a
%symmetric chaff
%this sets it to something random for testing
pixelNum = NumCells_even/pixelSize 
% lt = randi([0 1],4);
% nullPixelLT = tril(lt)

% can control pattern
nullPixelLT = [1 1 1 1;...
               1 0 1 1;...
               1 1 0 1;...
               1 1 1 1];
%% set symmetric pattern - even

%odd plots
chf_even = chf_even.symmetricNullPix(nullPixelLT)
chf_even.plotNullPos

%plot one of the currents
[Jx_phi_mat,Jy_phi_mat,Jx_theta_mat,Jy_theta_mat,del] = plotcurrent(chf_even.plateNull);
figure;imagesc(abs(Jx_phi_mat))
title('Jx_{\phi} for 8 across')
%% set symmetric pattern - odd

%odd plots
chf_odd = chf_odd.symmetricNullPix(nullPixelLT)
chf_odd.plotNullPos
[Jx_phi_mat,Jy_phi_mat,Jx_theta_mat,Jy_theta_mat,del] = plotcurrent(chf_odd.plateNull);
figure;imagesc(abs(Jx_phi_mat))
title('Jx_{\phi} for 7 across')


%% debug optimization code
obj = chf_even;
            numQuartPixel = obj.numPixels/2; 
            numPoints = numQuartPixel^2; %number of points in a quarter

            pointsOn_lb = zeros(numPoints,1);
            pointsOn_ub = ones(numPoints,1);
xxQuarter = pointsOn_ub
xxQuarter([1,2,6]) = 0
avgRCS = chf_odd.null2minRCSAvgSym(xxQuarter)

%% optimization code
chf_odd.maximizeRCSAvgSymm()

