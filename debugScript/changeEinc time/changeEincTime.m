%% set theta and phi
% don't actually care about values
thetaLoc = 0;
phiLoc = 0;

numRuns = 50000;

%% in object
tic 
for ii = 1:numRuns
chf.changeEinc(thetaLoc,phiLoc);
end
runtimeObj = toc

%% out of it

% %constant
% kk = 2*pi;
% %about plate
% freq = chf.freq;
% del = chf_even.plateFull(1).len/ chf_even.plateFull(1).NumCells; %a in the book
% 
% 
% 
% % for ii = 1:length(obj.freq)
% %     plateF = obj.plateFull(ii);
% %     plateN = obj.plateNull(ii);
% % 
% %     obj.plateFull(ii) = plateF.changeEinc(phiInc,thetaInc);
% %     obj.plateNull(ii) = plateN.changeEinc(phiInc,thetaInc);
% % end
% tic 
% for jj =1:numRuns
%     for ii = 1:length(freq)
%         %full plate
%         obj = chf_even.plateFull(ii);
%         %theta 
%         ex_theta = del * (cos(thetaLoc)*cos(phiLoc))...
%                           * sinc(del*sin(thetaLoc)*cos(phiLoc))...
%                           * exp(1j*kk*(obj.Bxn_xx*sin(thetaLoc)*cos(phiLoc)...
%                                       +obj.Bxn_yy*sin(thetaLoc)*sin(phiLoc)));
%         ey_theta =del * (cos(thetaLoc)*sin(phiLoc))...
%                       * sinc(del*sin(thetaLoc)*sin(phiLoc))...
%                       * exp(1j*kk*(obj.Byn_xx*sin(thetaLoc)*cos(phiLoc)...
%                                   +obj.Byn_yy*sin(thetaLoc)*sin(phiLoc)));
%         %now phi
%         ex_phi = del * (-sin(phiLoc))...
%                      * sinc(del*sin(thetaLoc)*cos(phiLoc))...
%                      * exp(1j*kk*(obj.Bxn_xx*sin(thetaLoc)*cos(phiLoc)...
%                                  +obj.Bxn_yy*sin(thetaLoc)*sin(phiLoc)));
%         ey_phi = del * (cos(phiLoc))...
%                     * sinc(del*sin(thetaLoc)*sin(phiLoc))...
%                     * exp(1j*kk*(obj.Byn_xx*sin(thetaLoc)*cos(phiLoc)...
%                                 +obj.Byn_yy*sin(thetaLoc)*sin(phiLoc)));
% 
% 
%         obj.EE_theta = [ex_theta ey_theta].'; %update EE and make col vector
%         obj.EE_phi = [ex_phi ey_phi].';
%         obj.JJ_theta = obj.ZZinv*obj.EE_theta; %update JJ
%         obj.JJ_phi = obj.ZZinv*obj.EE_phi; %update JJ
% 
%         chf.plateFull(ii) = obj;
% 
% 
%         %nullPlate
%         obj = chf.plateNull(ii);
%         %theta 
%         ex_theta = del * (cos(thetaLoc)*cos(phiLoc))...
%                           * sinc(del*sin(thetaLoc)*cos(phiLoc))...
%                           * exp(1j*kk*(obj.Bxn_xx*sin(thetaLoc)*cos(phiLoc)...
%                                       +obj.Bxn_yy*sin(thetaLoc)*sin(phiLoc)));
%         ey_theta =del * (cos(thetaLoc)*sin(phiLoc))...
%                       * sinc(del*sin(thetaLoc)*sin(phiLoc))...
%                       * exp(1j*kk*(obj.Byn_xx*sin(thetaLoc)*cos(phiLoc)...
%                                   +obj.Byn_yy*sin(thetaLoc)*sin(phiLoc)));
%         %now phi
%         ex_phi = del * (-sin(phiLoc))...
%                      * sinc(del*sin(thetaLoc)*cos(phiLoc))...
%                      * exp(1j*kk*(obj.Bxn_xx*sin(thetaLoc)*cos(phiLoc)...
%                                  +obj.Bxn_yy*sin(thetaLoc)*sin(phiLoc)));
%         ey_phi = del * (cos(phiLoc))...
%                     * sinc(del*sin(thetaLoc)*sin(phiLoc))...
%                     * exp(1j*kk*(obj.Byn_xx*sin(thetaLoc)*cos(phiLoc)...
%                                 +obj.Byn_yy*sin(thetaLoc)*sin(phiLoc)));
% 
% 
%         obj.EE_theta = [ex_theta ey_theta].'; %update EE and make col vector
%         obj.EE_phi = [ex_phi ey_phi].';
%         obj.JJ_theta = obj.ZZinv*obj.EE_theta; %update JJ
%         obj.JJ_phi = obj.ZZinv*obj.EE_phi; %update JJ
% 
%         chf.plateFull(ii) = obj;
%     
%     end
% end
% toc


%% just do multiplication of the same size
zz_test_full =ones(size(chf.plateFull(end).ZZ));
bb_test_full =ones(size(chf.plateFull(end).ZZ,1),1);


        zz_test_full =randi(100,size(chf.plateFull(end).ZZ))/10+1.5j;
        bb_test_full =randi(100,size(chf.plateFull(end).ZZ,1),1)/10+1.5j;

        del = 0.1
        kk = 2*pi

tic 

for jj =1:numRuns
    for ii = 1:length(freq)
        

        %full plate

        JJ_theta = zz_test_full*bb_test_full; %update JJ
        JJ_phi = zz_test_full*bb_test_full; %update JJ

        for ll = 1:8
            %other expensive function
            ex_theta = del * (cos(thetaLoc)*cos(phiLoc))...
                          * sinc(del*sin(thetaLoc)*cos(phiLoc))...
                          * exp(1j*kk*(bb_test_full*sin(thetaLoc)*cos(phiLoc)...
                                      +bb_test_full*sin(thetaLoc)*sin(phiLoc)));
        end
        
       %null plate
        JJ_theta1 = zz_test_full*bb_test_full; %update JJ
        JJ_phi1 = zz_test_full*bb_test_full; %update JJ

    end
end

runtimeOut = toc


fasterBy = runtimeOut/runtimeObj