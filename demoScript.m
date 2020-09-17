%% demoscript

%operating frequency (this can be an array, using one value, so rcs plots
%don't get crazy)
freq = 10*10^9; %hz 

%plate size
plateLength = 2 * .0254; %2 inches converted to meters

%angles to be optimized over
%not showing that part of code, so just leaving these as a single value
thetaVals = 0;
phiVals = 0;

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
NumCells = 18;

%don't pre-load a plate
%honestly kind of want to get rid of this, I think keeping a library 
%is going to be to big? defaults to zero though
loadVal = 0; 

%create chaff
chf = chaffElt(freq,plateLength,thetaVals, phiVals,NumCells);

%% plot RCS
%here's a couple lines that plot rcs

%plots monostatic RCS in cartesian grid with theta and phi as the axes
dbOn = 0; %plot raw values
chf.plotMonoFlat(obj,dbOn)

%plots bistatic RCS at at scattering angle. Theta is the x-axis
%generates 4 graphs for each incident polarization vs scattering
%polarization
phiScat = 0;
chf.plotBiRCS(phiScat)
