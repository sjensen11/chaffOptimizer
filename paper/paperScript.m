%% paper
%only including this for completeness. Will include a mat file that has
%necessary chaff and this part can be skipped. As such, both chf
%generations are commented out for speed.

%TIMING: 
%plate creation (3): 3.2 hours

%operating frequency (this can be an array, using one value, so rcs plots
%don't get crazy)
freq = [30 35 40]*10^9; %hz 

%plate size
lda = physconst('LightSpeed')./freq;
plateLength = 3*10^-3;%1*lda
%angles to be optimized over
%not showing that part of code, so just leaving these as a single value
thetaVals = linspace(0,pi/2,20);
phiVals = linspace(0,pi/4,20);

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
NumCells_odd = 15*4;

%set pixelSize: the number of cells in each pixel, needs to be able to
%divide NumCells and get an integer value out which will be the number
%of pixels... ex) 24/6 will give a 4 pixel resolution
pixelSize = 4;


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
% nullUpCorner = [1 1 1 0 1 1 0 1;...
%                1 1 0 0 0 1 1 1;...
%                1 0 1 1 1 0 0 1;...
%                0 0 1 0 0 1 0 0;...
%                1 0 1 0 0 0 1 1;...
%                1 1 0 1 0 0 0 1;...
%                0 1 0 0 1 0 0 1;...
%                1 1 1 0 1 1 1 0];
nullPixelQUAD = [1 1 0 0 1 1 0 0;...
                 1 1 0 0 1 1 0 0;...
                 0 0 1 1 0 0 1 1;...
                 0 0 1 1 0 0 1 1;...
                 1 1 0 0 1 1 0 0;...
                 1 1 0 0 1 1 0 0;...
                 0 0 1 1 0 0 1 1;...
                 0 0 1 1 0 0 1 1];

nullPixelQUAD = [nullPixelQUAD fliplr(nullPixelQUAD(:,1:end-1))];

nullPix = [nullPixelQUAD; flipud(nullPixelQUAD(1:end-1,:))];

[row,col] = find(nullPix == 0);
chfPattern = chfNulled.nullPixels([row,col])
% chf_odd = chf_odd.symmetricNullPix(nullLT)
chfPattern.plotNullPos


%% plot current
[Jx_phi_mat,Jy_phi_mat,Jx_theta_mat,Jy_theta_mat,del] = plotcurrent(chfPattern.plateNull(1));
figure;imagesc(abs(Jy_theta_mat))
title('Jy_{\theta} for 7 across')
figure;imagesc(abs(Jx_theta_mat))
title('Jx_{\theta} for 7 across')

%% plot RCS

%chfNulled.plotMonoFlat(0); %no dB
[theta,rcsTT, rcsPT, rcsTP, rcsPP] =  chf_odd.getBiRCSValsFULL(0);

% figure;plot(theta,rcsTT)
figure;plot(theta,rcsTT);


%% plate RCS
plate = chf_odd.removeNulls();
[theta,rcsTT, rcsPT, rcsTP, rcsPP] =  plate.getBiRCSValsFULL(0);

% figure;plot(theta,rcsTT)
figure;plot(theta,rcsTT);

%plot current
[Jx_phi_mat,Jy_phi_mat,Jx_theta_mat,Jy_theta_mat,del] = plotcurrent(chf_odd.plateFull);
figure;imagesc(abs(Jx_phi_mat))
%% to feko
filename ='chfNull35GHz3mm.lua'
toFeko(chfNulled,filename,nullPix)

%% mark's to feko
FILENAME ='chfNull35GHz3mm.lua'
W = chf_odd.plateLength;
fo = 35*10^9
thetainc = linspace(0,pi/2,90);
phiinc = linspace(0,pi/2,3);
write_chaff_FEKO(FILENAME,nullPix,W,fo,thetainc,phiinc)

%% optimization GA
maxRuns = 50
[chfNulled,nullMat,RCSavg] = chf_odd.maximizeRCSAvgSymm(maxRuns);

%% get mono RCS
phi = 0;
theta = linspace(-pi/2,pi/2,180);
[theta,rcsTT, rcsPT, rcsTP, rcsPP] =  chfNulled.getMonoRCSVals(phi,theta);

[theta,rcsTTFULL, rcsPTFULL, rcsTPFULL, rcsPPFULL] =  chfNulled.getMonoRCSValsFULL(0,theta);

%% plot monoRCS
figure;plot(theta*180/pi,rcsTT(1,:)*10^6,theta*180/pi,rcsTTFULL(1,:)*10^6)
title('30GHz monoRCS')
xlabel('\theta (deg)'); ylabel('bi rcs (mm^2)')
legend('Optimized Flake','Full Metal Plate')
set(gca,'FontSize',15)

figure;plot(theta*180/pi,rcsTT(2,:)*10^6,theta*180/pi,rcsTTFULL(2,:)*10^6)
title('35GHz monoRCS')
xlabel('\theta (deg)'); ylabel('bi rcs (mm^2)')
legend('Optimized Flake','Full Metal Plate')
set(gca,'FontSize',15)

figure;plot(theta*180/pi,rcsTT(3,:)*10^6,theta*180/pi,rcsTTFULL(3,:)*10^6)
title('40GHz monoRCS')
xlabel('\theta (deg)'); ylabel('bi rcs (mm^2)')
legend('Optimized Flake','Full Metal Plate')
set(gca,'FontSize',15)

%% pattern search optimization
maxIterations = 50
on = 0; %start with nothing
[chfNulled,nullMat,RCSavg] = maximizeRCSAvgSymmPatternSearch(chf,on,maxIterations)

%% partical swarm optimization
maxIterations = 50

[chfNulled,nullMat,RCSavg] = chf.maximizeRCSAvgSymmParticlSwarm(maxIterations)


%% chaff improvement
[avgRCSNull,avgRCSFull] = chfNulled.getAvgRCS()
   
percentBetter = avgRCSNull/avgRCSFull