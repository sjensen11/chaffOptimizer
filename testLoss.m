

%% trying just real values
%start values
phiInc = 0;
thetaInc = 0;

ZZ = 1  ;
len = 1
NumCells = 20 %for 1/10 division
 
plateZ1ab= thePlate(NumCells, len ,phiInc,thetaInc,ZZ);
% plateZ = thePlate_Metal(NumCells, len ,phiInc,thetaInc);
plateZ1ab = plateZ1ab.generateMatrix();

%% plot current
plateZ1ab.plotCurrent
% [theta,rcs_tt,rcs_tp,rcs_pt,rcs_pp] =plateZ1_10div.plotMonoRCS(0);
[theta,rcs_tt,rcs_tp,rcs_pt,rcs_pp] = plateZ1ab.plotRCS(0,0);
close all
freq = 10*10^9;
lambda = physconst('LightSpeed')/freq;
figure;plot(theta*180/pi,rcs_tt*(lambda^2)*10^6)
title('Bi RCS')
xlabel('theta (deg)')
ylabel('rcs mm^2')
%% from paper
ZL = -80.13-153.58j;
Z0 = 192.79-89.45j;
ZV = 126.79-39.37j;
Zs = 63.40-19.67j;
epsReal = 24;

%start values
phiInc = 0;
thetaInc = 0;

f0 = 10*10^9; %10GHz
lambda = physconst('lightspeed')/f0;
% lambda = c * l0/sqrt(epsReal);
len = (8.86*10^-2)/lambda %8cm, but need in terms of wavelengths
NumCells = 2*ceil(10*len) %for 1/10 division

paperZVLambda = thePlate(NumCells, len ,phiInc,thetaInc,ZV);
paperZVLambda = paperZVLambda.generateMatrix();


%% plot current and Rcs
paperZV = paperZVLambda
paperZV.plotCurrent
paperZV.plotMonoRCS(0);
%% my test
NumCells = 10;
len = 1;
phiInc = 0;
thetaInc = 0;

% %generate no loss plate
% ZL = 0;
% noLoss = thePlate(NumCells, len ,phiInc,thetaInc,ZL);
% noLoss = noLoss.generateMatrix();
% 
% %generate with ZL = 1
% ZL = 1;
% ZL1 = thePlate(NumCells, len ,phiInc,thetaInc,ZL);
% ZL1 = ZL1.generateMatrix();
% 
% %generate with ZL = 10^4
% ZL = 10^4;
% ZLBig = thePlate(NumCells, len ,phiInc,thetaInc,ZL);
% ZLBig = ZLBig.generateMatrix();

%% plot current
noLoss.plotCurrent()
title('no loss')

ZL1.plotCurrent()
title('Z_L = 1')

ZLBig.plotCurrent()
title('Z_L = 10^4')



