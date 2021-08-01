%% paper
%needed to do a stupid check

%operating frequency (this can be an array, using one value, so rcs plots
%don't get crazy)
freq = 35*10^9; %hz 

%plate size
lda = physconst('LightSpeed')/freq;
plateLength = 1*lda
%angles to be optimized over
%not showing that part of code, so just leaving these as a single value
thetaVals = linspace(0,pi/2,20);
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
NumCells_odd = 5*2;

%set pixelSize: the number of cells in each pixel, needs to be able to
%divide NumCells and get an integer value out which will be the number
%of pixels... ex) 24/6 will give a 4 pixel resolution
pixelSize = 2;


%set ZL
%impedance sheet value
ZL =0; %metal

%create odd chaff
tic
chf_odd = chaffElt(freq,plateLength,thetaVals, phiVals,NumCells_odd ,pixelSize,ZL);
toc


%% set pattern
%function takes in a lower triangle matrix and transforms it for a
%symmetric chaff


% can control pattern

nullPixelQUAD = [1 1 1;...
                 1 1 0;...
                 1 0 0];

nullPixelQUAD = [nullPixelQUAD fliplr(nullPixelQUAD(:,1:end-1))];

nullPix = [nullPixelQUAD; flipud(nullPixelQUAD(1:end-1,:))]

[row,col] = find(nullPix == 0);
chf_odd = chf_odd.nullPixels([row,col])
% chf_odd = chf_odd.symmetricNullPix(nullLT)
chf_odd.plotNullPos


%% plot current
[Jx_phi_mat,Jy_phi_mat,Jx_theta_mat,Jy_theta_mat,del] = plotcurrent(chf_odd.plateNull);
figure;imagesc(abs(Jy_theta_mat))
title('Jy_{\theta} for 7 across')
figure;imagesc(abs(Jx_theta_mat))
title('Jx_{\theta} for 7 across')

%% plot RCS

%chfNulled.plotMonoFlat(0); %no dB
[theta,rcsTT, rcsPT, rcsTP, rcsPP] =  chf_odd.getBiRCSValsFULL(0);
% [theta,rcsTT, rcsPT, rcsTP, rcsPP] =  chf_odd.getMonoRCSValsFULL(0);
% figure;plot(theta,rcsTT)
figure;plot(theta,rcsTT);

% figure;plot(theta,rcsTT/(lda^2));

%% plate RCS
plate = chf_odd.removeNulls();
[theta,rcsTT, rcsPT, rcsTP, rcsPP] =  plate.getBiRCSValsFULL(0);
% [theta,rcsTT, rcsPT, rcsTP, rcsPP] =  plate.getMonoRCSValsFULL(0);
% figure;plot(theta,rcsTT)
figure;plot(theta,rcsTT*lda^2);

%plot current
[Jx_phi_mat,Jy_phi_mat,Jx_theta_mat,Jy_theta_mat,del] = plotcurrent(chf_odd.plateFull);
figure;imagesc(abs(Jx_theta_mat))
%% to feko
filename ='chfNull35GHz3mm.lua'
toFeko(chf_odd,filename,nullPix)

%% mark's to feko
FILENAME ='chfNull35GHz3mm.lua'
W = chf_odd.plateLength;
fo = 35*10^9
thetainc = linspace(0,pi/2,90);
phiinc = linspace(0,pi/2,3);
write_chaff_FEKO(FILENAME,nullPix,W,fo,thetainc,phiinc)


%% testing plate code? Think problem might be there
NumCells = 10;
len = 1;
phiInc = 0;
thetaInc =0;
noZLplate = thePlateNOZL(NumCells, len ,phiInc,thetaInc)
noZLplate = noZLplate.generateMatrix();


ZL = 0;
ZLplate = thePlate(NumCells, len ,phiInc,thetaInc,ZL);
ZLplate = ZLplate.generateMatrix();

%% plot bir RICS


[theta,rcs_tt2,rcs_tp2,rcs_pt2,rcs_pp2] = ZLplate.plotRCS(0,0);
close all

figure;plot(theta,rcs_tt2*lda^2)


