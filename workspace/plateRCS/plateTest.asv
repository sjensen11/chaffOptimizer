%% testing RCS of just plate

%% compare to thesis
%% generate 1da plate
%comparing current
NumCells = 10;
len = 1;
phiInc = 0;
thetaInc = pi/4;
plate10 = thePlate(NumCells, len ,phiInc,thetaInc);
plate10 = plate10.generateMatrix;

%% testing against Scattering from a thin perfecly-conducting square plate by Glisson
phiInc = pi/2;
thetaInc = 0;
plate10 = plate10.changeEinc(phiInc,thetaInc);

phiScat = 0;
dBOn = 0; %won't plot in dB
plate10.plotRCS(phiScat,dBOn);

%testing at some points
thetaScat = pi/6;
plate10.getRCSVal(thetaScat,phiScat)

thetaScat = pi/3;
plate10.getRCSVal(thetaScat,phiScat)
%% testing RCS
%% create chaff 4lda plate
%wanted to come in from chaff functions to make sure overlay is ok
freq = 8*10^9;
lda = physconst('lightspeed')/freq

plateLength = 4*lda;

%not optimizing so don't need this
thetaVals = 0;
phiVals = 0;
loadVal = 0; % don't have to have value, lets you preload a plate to speed up process (if already generated)

% chf = chaffElt(freq,plateLength,thetaVals, phiVals,loadVal);

%% change incident E-field and get rcs
phiInc = pi/3;
thetaInc = pi/4;
chf =chf.changeEinc(phiInc,thetaInc);

phiScat = pi/3;
polarPlot = 0; %plots xy grid
chf.plotBiRCS(phiScat,0)

%% plate for 8-10GHz, going to use 2lda to compare against another graph
%% create plate
NumCells = 20;
len = 2;
phiInc = pi/2;
thetaInc = 0;
plate20 = thePlate(NumCells, len ,phiInc,thetaInc);
plate20 = plate20.generateMatrix;

%% get RCS
phiScat = pi/2;
dBOn = 1; %won't plot in dB

[theta,rcs_tt,rcs_tp,rcs_pt,rcs_pp] = plate20.plotRCS(phiScat,dBOn);
%scaling stuff
freq = 8*10^9;
lda = physconst('lightspeed')/freq;

figure;plot(theta*180/pi,10*log10(rcs_tt))
title('RCS VV (dB), E_{s theta}/E_{i theta}')
xlim([0 90]); ylim([-60 30])
xlabel('theta (deg)'); ylabel('bircs db')


figure;plot(theta*180/pi,10*log10(rcs_tt*lda^2))
title('RCS VV (dB), E_{s theta}/E_{i theta} SCALED')
xlim([0 90]);
xlim([0 90]); ylim([-90 0])
xlabel('theta (deg)')


figure;plot(theta*180/pi,rcs_tt*lda^2)
title('RCS VV , E_{s theta}/E_{i theta} SCALED')
xlim([0 90]);
xlabel('theta (deg)'); ylabel('bircs m^2')