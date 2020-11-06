%% demoscript
%only including this for completeness. Will include a mat file that has
%necessary chaff and this part can be skipped. As such, both chf
%generations are commented out for speed.

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
NumCells_odd = 40;

%set pixelSize: the number of cells in each pixel, needs to be able to
%divide NumCells and get an integer value out which will be the number
%of pixels... ex) 24/6 will give a 4 pixel resolution
pixelSize = 10;

% chf = chaffElt(freq,plateLength,thetaVals, phiVals,NumCells_odd ,pixelSize);

%% null pixels
nullPixel = [0 0 1 1;...
             1 0 1 1;...
             0 1 0 0;...
             1 1 1 1];
nullPixel = rot90(nullPixel,-1);
% nullPixel = [1 1 1 1;...
%              1 1 1 1;...
%              1 0 1 1;...
%              1 0 1 1];
         
[row,col]=find(nullPixel==0);
nullPosLoc = [row,col];
chf = chf.nullPixels( nullPosLoc)

size(chf.plateNull.Bxn_xx)
size(chf.plateNull.Byn_xx)

%% plot current
close all
[Jx_phi_mat,Jy_phi_mat,Jx_theta_mat,Jy_theta_mat,del] = plotcurrent(chf.plateNull);
figure;imagesc(abs(Jx_phi_mat)); 
    colormap jet; caxis([0 0.015])
figure;imagesc(abs(Jy_phi_mat));
    colormap jet; caxis([0 0.015])
figure;imagesc(abs(Jx_theta_mat));
    colormap jet; caxis([0 0.015])
figure;imagesc(abs(Jy_theta_mat));
    colormap jet; caxis([0 0.015])
