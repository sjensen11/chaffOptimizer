%% test impedance plate
%operating frequency (this can be an array, using one value, so rcs plots
%don't get crazy)
freq = 10*10^9; %hz 
lda = physconst('LightSpeed')/freq;
%plate size
plateLength = 1*lda; %set to 1 wavelength length

%angles to be optimized over
%not showing that part of code, so just leaving these as a single value
thetaVal = 0;
phiVal = 0;

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
NumCells = 20;

%set pixel size
pixelSize = 4;

%set Impedance
ZL = 10+10j;

%create chaff
chf = chaffElt(freq,plateLength,thetaVal, phiVal,NumCells,pixelSize,ZL );

%% plot out bircs
chf.plotBiRCS(0);

%% put big null in center
% can control pattern
nullPixel = [1 1 1 1 1;...
             1 1 0 1 1;...
             1 1 0 1 1;...
             1 1 0 1 1;...
             1 1 1 1 1];
 [row,col] = find(nullPixel ==0);        
         
chf = chf.nullPixels([row,col]);
[Jx_phi_mat,Jy_phi_mat,Jx_theta_mat,Jy_theta_mat,del] = plotcurrent(chf.plateNull);
imagesc(abs(rot90(Jy_phi_mat)))
%% mine
filename = 'test.txt'
toFeko(chf,filename)

%% output FEKO file MARK
FILENAME = 'test.inc';
thetaInc = linspace(0,pi/4,3);
phiInc = linspace(0,pi/4,3);
write_chaff_FEKO(FILENAME,nullPixel,plateLength,freq,thetaInc,phiInc);