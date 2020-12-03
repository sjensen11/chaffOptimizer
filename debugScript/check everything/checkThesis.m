%% thesis comparison
%using this to check against whats in the thesis

%operating frequency (this can be an array, using one value, so rcs plots
%don't get crazy)
freq = 10*10^9; %hz 

%plate size
lda = physconst('lightspeed')/freq;
plateLength = 1 * lda; %2 inches converted to meters

%angles to be optimized over
%not showing that part of code, so just leaving these as a single value
thetaVals = 0;
phiVals = 0;
%setNumCell
NumCells = 10;


pixelSize = 1;



%create odd chaff
% tic
% chf10 = chaffElt(freq,plateLength,thetaVals, phiVals,NumCells ,pixelSize);
% toc

% null plate stuff

% nullPixelPos = [1,3;1,4;4,3;4,4];
% nullPixelPos = [2,3;2,4;3,3;3,4];
nullPixelPos = [5,5;1,5; 1,10];
chf10 = chf10.nullPixels(nullPixelPos);

[Jx_phi_mat,Jy_phi_mat,Jx_theta_mat,Jy_theta_mat,del] = plotcurrent(chf10.plateNull) ;

surf(abs(Jx_phi_mat))

plateNull = chf10.plateNull;
phi = pi/6;
theta = pi/4;
plateNull = plateNull.changeEinc(phi,theta)
phiScat = pi/6;
[theta,rcs_tt,rcs_tp,rcs_pt,rcs_pp] = plateNull.plotRCS(phiScat,1);


% figure
% plot(theta*180/pi, 10*log10(rcs_tt))
% title('VV')
% ylim([-40 20])
% 
% figure
% plot(theta*180/pi, 10*log10(rcs_tp))
% title('VH')
% ylim([-40 20])





%checking fullplate
% plateFull = chf40.plateFull;
% phi =  pi/6;
% theta = pi/4;
% phiScat = pi/6;
% 
% plateFull = plateFull.changeEinc(phi,theta);
% [theta,rcs_tt30,rcs_tp30,rcs_pt,rcs_pp] = plateFull.plotRCS(phiScat,1);
% 
% phi =  pi/3;
% theta = pi/4;
% phiScat = pi/3;
% 
% plateFull = plateFull.changeEinc(phi,theta);
% [theta,rcs_tt60,rcs_tp60,rcs_pt,rcs_pp] = plateFull.plotRCS(phiScat,1);
% close all
% 
% figure;
% plot(theta*180/pi, 10*log10(rcs_tt30),theta*180/pi, 10*log10(rcs_tt60),'o')
% 
% figure;
% plot(theta*180/pi, 10*log10(rcs_tp30),theta*180/pi, 10*log10(rcs_tp60),'o')
