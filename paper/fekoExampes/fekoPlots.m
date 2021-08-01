%% my stuff
phi = 0;
[theta,rcsTT, rcsPT, rcsTP, rcsPP] =  chfNulled.getBiRCSVals(phi);

%% 30 GHz
%feko stuff
fekoFile = '3mmKA_30GHz.dat';   
fekoVals = readmatrix(fekoFile);

thetaFeko = fekoVals(:,1);
rcsFeko = fekoVals(:,2);

figure;plot(theta*180/pi,rcsTT(1,:)*10^6,'x',thetaFeko,rcsFeko*10^6)
title('30GHz BiRCS')
xlabel('\theta (deg)'); ylabel('bi rcs (mm^2)')
legend('Matlab','FEKO')
set(gca,'FontSize',15)
%% 35 GHz
fekoFile = '3mmKA_35GHz.dat';   
fekoVals = readmatrix(fekoFile);

thetaFeko = fekoVals(:,1);
rcsFeko = fekoVals(:,2);

figure;plot(theta*180/pi,rcsTT(2,:)*10^6,'x',thetaFeko,rcsFeko*10^6)
title('35GHz BiRCS')
xlabel('\theta (deg)'); ylabel('bi rcs (mm^2)')
legend('Matlab','FEKO')
set(gca,'FontSize',15)
%% 40 GHz
fekoFile = '3mmKA_40GHz.dat';   
fekoVals = readmatrix(fekoFile);

thetaFeko = fekoVals(:,1);
rcsFeko = fekoVals(:,2);

figure;plot(theta*180/pi,rcsTT(3,:)*10^6,'x',thetaFeko,rcsFeko*10^6)
title('40GHz BiRCS')
xlabel('\theta (deg)'); ylabel('bi rcs (mm^2)')
legend('Matlab','FEKO')
set(gca,'FontSize',15)