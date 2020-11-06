classdef thePlate
    %thePlate MoM model of a flat PEC plate with rooftop basis, pulse
    %testing
    %   Trying to organize a bunch of random scripts. 
    %   thePlate(NumCells, len, phiInc, thetaInc) - constructor. sets necessary
    %       constants and then generates center points for basis and
    %       testing functions (Bxn, Byn)
    %   generateMatrix - generates method matrix and incident array are then
    %       calculated. The current is solved for through inversion
    %   plotCurrent - generates a plot of the current coefficients... you
    %       should update this to actually use the basis functions at some
    %       point >_>
    %
    %   from here on out, I assume that this is a square
    
    properties
       %using balanis 2ed, pg593+, fig11-8 defs
        phiInc %of incident field
        thetaInc %elevation angle, use image
        
        %about gemometry
        NumCells %in one direction
        len %length of plate in lambda
        %points
        Bxn_xx
        Bxn_yy
        Byn_xx
        Byn_yy
        
        ZZ %method matrix
        ZZinv
        EE_theta
        EE_phi
        JJ_theta
        JJ_phi
        
        scaleFactor =  1; %current is off by this much... why? I have no idea
    end
    
    methods
        %-----------------list of functions----------------- 
        %obj = thePlate(NumCells, len ,phiInc,thetaInc)
        %obj = generateMatrix(obj)
        %obj = changeEinc(obj,phiInc,thetaInc)
        %[theta,rcs] = plotRCS(obj,phi)
        %[phi,rcs] = plotRCSThetaIn(obj,theta)
        %rcs = getRCSVal(obj,theta,phi)
        %plotEinc(obj)
        %plotCurrent(obj)
        %F = moviePhiInc(obj,phiIncstart, phiIncend,numFrames)
        
        function obj = thePlate(NumCells, len ,phiInc,thetaInc)
            %constructor that initializes plate... sets all necessary
            %constants and gets center points for the basis and testing
            %function (Bxn, Byn points)
            obj.phiInc = phiInc;
            obj.thetaInc = thetaInc;
            if(mod(NumCells,2))
                %this feeds into chf code and that needs even numcells so
                %fixing it here
                NumCells = NumCells+1;
            end
            
            obj.NumCells = NumCells;
            NumEdges = NumCells -1; %shouldn't need to store this.. just used to generate points
            obj.len = len;
            
            del = len/NumCells;

            
            %generate points
            Bxn_xx =  zeros(1,NumEdges*NumCells);
            Bxn_yy = zeros(1,NumEdges*NumCells);

            Byn_xx =  zeros(1,NumEdges*NumCells);
            Byn_yy = zeros(1,NumEdges*NumCells);

            for nn = 0:NumEdges

                Bxn_xx(1+nn*NumEdges:NumEdges+nn*NumEdges) = del:del:len-del;
                Bxn_yy(1+nn*NumEdges:NumEdges+nn*NumEdges) =  del*(nn+1/2)*ones(1,NumCells-1);

                Byn_xx(1+nn*NumEdges:NumEdges+nn*NumEdges) = del*(nn+1/2)*ones(1,NumCells-1);
                Byn_yy(1+nn*NumEdges:NumEdges+nn*NumEdges) = del:del:len-del;

            end
            
%             for nn = 0:NumEdges-1
%                 Byn_xx(1+nn*NumCells:NumEdges+nn*NumCells+1) =  del/2:del:lenx-del/2;
%                 Byn_yy(1+nn*NumCells:NumEdges+nn*NumCells+1) = del*(nn+1)*ones(1,NumCells);
%             end
            %coefficients from polyfit on 15->36 numCells and looks good
            %their :P
            estTime = 0.066737494727867*NumCells^2 - 2.180457154716433*NumCells + 18.854789338347764;
            disp(['estimated time for plate creation when running generateMatrix() is ' num2str(estTime) ' minutes'])
            disp('this only works for NumCells>15, less than that should be less than a minutes')
            
            obj.Bxn_xx = Bxn_xx;
            obj.Bxn_yy = Bxn_yy;
            obj.Byn_xx = Byn_xx;
            obj.Byn_yy = Byn_yy;
            
            obj.JJ_theta = 0; %get it with generateMatrix
            obj.JJ_phi = 0;
            obj.EE_theta = 0;
            obj.EE_phi = 0;

        end
        
        function obj = generateMatrix(obj)
            %generates the necessary matrices Z,J,Einc and stores them
            %universal constant
            kk = 2*pi;
            netta = 376.73031366857;
            
            numElt = obj.NumCells * (obj.NumCells -1); %in one direction
            numEdge = obj.NumCells-1;
            del = obj.len/obj.NumCells; %a in the book

            TxmBxn = zeros(1,numElt);
            TxmBxnsp = zeros(1,numElt);

            TxmByn = zeros(numElt);
            
            TymByn = zeros(1,numElt);
            TymBynsp = zeros(1,numElt);

            %define function
            %green's function shifted to xm-xn and ym-yn
            %Bxn points then Byn points
            gg = @(xp,yp) exp(-1j*kk*sqrt( (xp).^2 + (yp).^2))...
                                  ./ (4*pi*sqrt( (xp).^2 + (yp).^2));
            
            %get local values so matlab happy
            phiLoc = obj.phiInc;
            thetaLoc = obj.thetaInc;

            %--- get EE first because it can be done array
            %there are 2 random /pi both inside sinc( ) and outside because
            %matlab defines sinc(x) = sin(pi x)/pi x and I want 
            %calculate theta first
                            
            ex_theta = del * (cos(thetaLoc)*cos(phiLoc))...
                           * sinc(del*sin(thetaLoc)*cos(phiLoc))...
                           * exp(1j*kk*(obj.Bxn_xx*sin(thetaLoc)*cos(phiLoc)...
                                       +obj.Bxn_yy*sin(thetaLoc)*sin(phiLoc)));
            ey_theta =del * (cos(thetaLoc)*sin(phiLoc))...
                          * sinc(del*sin(thetaLoc)*sin(phiLoc))...
                          * exp(1j*kk*(obj.Byn_xx*sin(thetaLoc)*cos(phiLoc)...
                                     +obj.Byn_yy*sin(thetaLoc)*sin(phiLoc)));
                                 
            %now phi
            ex_phi = del * (-sin(phiLoc))...
                     * sinc(del*sin(thetaLoc)*cos(phiLoc))...
                     * exp(1j*kk*(obj.Bxn_xx*sin(thetaLoc)*cos(phiLoc)...
                                 +obj.Bxn_yy*sin(thetaLoc)*sin(phiLoc)));
            ey_phi =del * (cos(phiLoc))...
                    * sinc(del*sin(thetaLoc)*sin(phiLoc))...
                    * exp(1j*kk*(obj.Byn_xx*sin(thetaLoc)*cos(phiLoc)...
                                 +obj.Byn_yy*sin(thetaLoc)*sin(phiLoc)));
            %---- get ZZ --------
            parfor mm = 1:numElt 
               

                %only need to generate the first row of Txm and Byn
                
                xmxn = obj.Bxn_xx(mm)-obj.Bxn_xx(1);
                ymyn = obj.Bxn_yy(mm)-obj.Bxn_yy(1);

                %do integrals
                %first convolution
                %notes: setting up p(x)*G(x) = int(p(x') G(x-x')) 
                %then at x=0, have int(p(x')G(-x')) = int(p(x')G(x'))
                %because G(x) = G(-x), square cancels minus
                TxmBxn(mm) = integral2(gg,   del/2-xmxn,    del*3/2-xmxn, -del/2+ymyn, del/2+ymyn)...
                          -2*integral2(gg,  -del/2-xmxn,    del/2-xmxn  , -del/2+ymyn, del/2+ymyn)...
                            +integral2(gg,  -del*3/2-xmxn, -del/2-xmxn  , -del/2+ymyn, del/2+ymyn);
                %spleen
                ggpp1xx = @(xp,yp) (9/8+(xp-xmxn).*3./(2*del) + (xp-xmxn).^2/(2*del^2)) .* gg(xp,yp);      
                ggpp2xx = @(xp,yp) (3/4-(xp-xmxn).^2./(del^2))                          .* gg(xp,yp);
                ggpp3xx = @(xp,yp) (9/8-(xp-xmxn).*3./(2*del) + (xp-xmxn).^2/(2*del^2)) .* gg(xp,yp);  

                TxmBxnsp(mm) = integral2(ggpp1xx,xmxn-del*3/2,xmxn-del/2,  ymyn-del/2,ymyn+del/2)...
                              +integral2(ggpp2xx,xmxn-del/2,  xmxn+del/2,  ymyn-del/2,ymyn+del/2)...
                              +integral2(ggpp3xx,xmxn+del/2,  xmxn+del*3/2,ymyn-del/2,ymyn+del/2);
                             
                %---------------fourth convolution------------
                xmxn= obj.Byn_xx(mm)-obj.Byn_xx(1);
                ymyn= obj.Byn_yy(mm)-obj.Byn_yy(1);
                %first integral
                TymByn(mm) =    integral2(gg,xmxn-del/2,xmxn+del/2,ymyn-del*3/2,ymyn-del/2)...
                             -2*integral2(gg,xmxn-del/2,xmxn+del/2,ymyn-del/2,  ymyn+del/2)...
                             +  integral2(gg,xmxn-del/2,xmxn+del/2,ymyn+del/2,  ymyn+del*3/2);
                %second integral
                ggpp1yy = @(xp,yp) (  9/8+(yp-ymyn).*3./ (2*del) +(yp-ymyn).^2./(2*del^2)) .* gg(xp,yp);    
                ggpp2yy = @(xp,yp) (  3/4-(yp-ymyn).^2./ del^2)                            .* gg(xp,yp);
                ggpp3yy = @(xp,yp) (  9/8-(yp-ymyn).*3./(2*del)    +(yp-ymyn).^2/(2*del.^2)) .* gg(xp,yp);

                TymBynsp(mm) =    integral2(ggpp1yy,xmxn-del/2,xmxn+del/2,ymyn-del*3/2,ymyn-del/2)...
                                 +integral2(ggpp2yy,xmxn-del/2,xmxn+del/2,ymyn-del/2,  ymyn+del/2)...
                                 +integral2(ggpp3yy,xmxn-del/2,xmxn+del/2,ymyn+del/2,  ymyn+del*3/2);

                for nn = 1:numElt 
                        %----------second and third convolution---------------------
                        %TxmByn== TynBxn expect for the 1/a vs 1/b... so only have to get the
                        %matrix once... 
                        xmxn = obj.Bxn_xx(mm)-obj.Byn_xx(nn);
                        ymyn = obj.Bxn_yy(mm)-obj.Byn_yy(nn);
                        TxmByn(mm,nn) = integral2(gg,xmxn-del,xmxn+0,   ymyn-del,ymyn+0)...
                                       -integral2(gg,xmxn-del,xmxn+0,   ymyn+0,   ymyn+del)...
                                       -integral2(gg,xmxn+0,  xmxn+del, ymyn-del,ymyn+0)...
                                       +integral2(gg,xmxn+0,  xmxn+del, ymyn+0,   ymyn+del);
                                   
%                         %do TymBxn to look
%                         xmxn = obj.Byn_xx(mm)-obj.Bxn_xx(nn);
%                         ymyn = obj.Byn_yy(mm)-obj.Bxn_yy(nn);
%                         TymBxn(mm,nn) = integral2(gg,xmxn-del,xmxn+0,   ymyn-del, ymyn+0)...
%                                        -integral2(gg,xmxn-del,xmxn+0,   ymyn+0,   ymyn+del)...
%                                        -integral2(gg,xmxn+0,  xmxn+del, ymyn-del, ymyn+0)...
%                                        +integral2(gg,xmxn+0,  xmxn+del, ymyn+0,   ymyn+del);
%             %                        
                end
            end
            %TxmBxn holds my array, other than that copying code from toeplitzBlockPlay
%             TxmBxn = TxmBxn+TxmBxnsp;
            TxmCell = cell(1,obj.NumCells);
            TxmspCell = cell(1,obj.NumCells);
            TymCell = cell(1,obj.NumCells);
            TymspCell = cell(1,obj.NumCells);
            for ii = 0:obj.NumCells-1
                %have to do repeat because matlab makes toeplitz matrix hermitain by default
                %TxmBxn
                TxmCell(ii+1) = {toeplitz(TxmBxn(1+numEdge*ii:numEdge+(numEdge*ii)),...
                                          TxmBxn(1+numEdge*ii:numEdge+(numEdge*ii)))};
                
                %TxmBxnsp
                TxmspCell(ii+1) = {toeplitz(TxmBxnsp(1+numEdge*ii:numEdge+(numEdge*ii)),...
                                            TxmBxnsp(1+numEdge*ii:numEdge+(numEdge*ii)))};
                %TymByn
                TymCell(ii+1) = {toeplitz(TymByn(1+numEdge*ii:numEdge+(numEdge*ii)),...
                                          TymByn(1+numEdge*ii:numEdge+(numEdge*ii)))};
                
                %TymBynsp
                TymspCell(ii+1) = {toeplitz(TymBynsp(1+numEdge*ii:numEdge+(numEdge*ii)),...
                                            TymBynsp(1+numEdge*ii:numEdge+(numEdge*ii)))};
            end
            
            
            TxmBxn = cell2mat(TxmCell(toeplitz(1:obj.NumCells))); %toeplitz matrix now
            TxmBxnsp = cell2mat(TxmspCell(toeplitz(1:obj.NumCells))); %toeplitz matrix now
            TymByn = cell2mat(TymCell(toeplitz(1:obj.NumCells))); %toeplitz matrix now
            TymBynsp = cell2mat(TymspCell(toeplitz(1:obj.NumCells))); %toeplitz matrix now
            
            %---finally generate A B C D from peterson p418-419
            AA = TxmBxn./del + kk^2*del*TxmBxnsp;
            BB = TxmByn./del;
            CC = rot90(fliplr(TxmByn))/del;
            DD = TymByn./del + kk^2*del*TymBynsp;
            % 
            obj.EE_theta = [ex_theta ey_theta].';
            obj.EE_phi = [ex_phi ey_phi].';
            obj.ZZ = (-netta/(1j*kk))*[AA BB; CC DD];
            obj.ZZinv = inv(obj.ZZ);

            obj.JJ_theta = obj.ZZ\obj.EE_theta; %[Jx;Jy] = [JJ(1:numElt); JJ(numElt+1:end)]
            obj.JJ_phi = obj.ZZ\obj.EE_phi;
             %I have no idea why, but current is 0.25 off from the thesis
             %paper, so I'm just hard coding a fix
            obj.JJ_theta = obj.JJ_theta/obj.scaleFactor;
            obj.JJ_phi = obj.JJ_phi/obj.scaleFactor;
        end %of function generateMatrix
        

        function obj = changeEinc(obj,phiInc,thetaInc)
            %use to update the angle of the incident field and resolve for
            %current coefficients
            obj.phiInc = phiInc; %azmuthal
            obj.thetaInc = thetaInc;%elevation
            kk = 2*pi;
            
            del = obj.len/obj.NumCells; %a in the book
            


            %have to update seperately, because may be different sizes
            %onces we zero out cells.
            phiLoc = phiInc;
            thetaLoc = thetaInc;
            %there are 2 random /pi both inside sinc( ) and outside because
            %matlab defines sinc(x) = sin(pi x)/pi x and I want sin(x)/x...
            %note: %sinc(x) = sin(pi x)/ pi x
            %kk/(2*pi) = 1 -> what happened to kk, /2, /pi
            %ie) yes sarah its del/2 but /2 cancelled out
            
            ex_theta = del * (cos(thetaLoc)*cos(phiLoc))...
                              * sinc(del*sin(thetaLoc)*cos(phiLoc))...
                              * exp(1j*kk*(obj.Bxn_xx*sin(thetaLoc)*cos(phiLoc)...
                                          +obj.Bxn_yy*sin(thetaLoc)*sin(phiLoc)));
            ey_theta =del * (cos(thetaLoc)*sin(phiLoc))...
                          * sinc(del*sin(thetaLoc)*sin(phiLoc))...
                          * exp(1j*kk*(obj.Byn_xx*sin(thetaLoc)*cos(phiLoc)...
                                      +obj.Byn_yy*sin(thetaLoc)*sin(phiLoc)));
                                 
            %now phi
            ex_phi = del * (-sin(phiLoc))...
                         * sinc(del*sin(thetaLoc)*cos(phiLoc))...
                         * exp(1j*kk*(obj.Bxn_xx*sin(thetaLoc)*cos(phiLoc)...
                                     +obj.Bxn_yy*sin(thetaLoc)*sin(phiLoc)));
            ey_phi = del * (cos(phiLoc))...
                        * sinc(del*sin(thetaLoc)*sin(phiLoc))...
                        * exp(1j*kk*(obj.Byn_xx*sin(thetaLoc)*cos(phiLoc)...
                                    +obj.Byn_yy*sin(thetaLoc)*sin(phiLoc)));
            %---- get ZZ --------
            %this is right so want to save it 0_0
%             ex = del * (cos(thetaLoc)*cos(phiLoc)-sin(phiLoc))...
%                          * sinc(del*sin(thetaLoc)*cos(phiLoc))...
%                          * exp(1j*kk*(obj.Bxn_xx*sin(thetaLoc)*cos(phiLoc)...
%                                      +obj.Bxn_yy*sin(thetaLoc)*sin(phiLoc)));
%             ey =del * (cos(thetaLoc)*sin(phiLoc)+cos(phiLoc))...
%                          * sinc(del*sin(thetaLoc)*sin(phiLoc))...
%                          * exp(1j*kk*(obj.Byn_xx*sin(thetaLoc)*cos(phiLoc)...
%                                      +obj.Byn_yy*sin(thetaLoc)*sin(phiLoc)));
% 
% 
%    
            obj.EE_theta = [ex_theta ey_theta].'; %update EE and make col vector
            obj.EE_phi = [ex_phi ey_phi].';
            obj.JJ_theta = obj.ZZinv*obj.EE_theta; %update JJ
            obj.JJ_phi = obj.ZZinv*obj.EE_phi; %update JJ
        end
        
        function [E_theta, E_phi] = getEincComponents(obj)
            %gets Einc = E_theta+E_phi and JJ = JJ_theta+JJ_phi
            %need this because thesis looks at RCS seperatly
            del = obj.len/obj.NumCells; %a in the book
            kk=2*pi;
            phiLoc = obj.phiInc; %of incident field
            thetaLoc = obj.thetaInc; %elevation angle, use image
            %start with E_theta
            %note: %sinc(x) = sin(pi x)/ pi x
            %kk/(2*pi) = 1 -> what happened to kk, /2, /pi
            %ie) yes sarah its del/2 but /2 cancelled out
            ex = pi*del * (cos(thetaLoc)*cos(phiLoc))...
                         * sinc(del*sin(thetaLoc)*cos(phiLoc))...
                         * exp(1j*kk*(obj.Bxn_xx*sin(thetaLoc)*cos(phiLoc)...
                                    +obj.Bxn_yy*sin(thetaLoc)*sin(phiLoc)));
            ey =pi*del * (cos(thetaLoc)*sin(phiLoc))...
                         * sinc(del*sin(thetaLoc)*sin(phiLoc))...
                         * exp(1j*kk*(obj.Byn_xx*sin(thetaLoc)*cos(phiLoc)...
                                    +obj.Byn_yy*sin(thetaLoc)*sin(phiLoc)));
            E_theta = [ex ey].';
            
            
            %get E_phi
            %note: %sinc(x) = sin(pi x)/ pi x
            %kk/(2*pi) = 1 -> what happened to kk, /2, /pi
            %ie) yes sarah its del/2 but /2 cancelled out
            ex = pi*del * (-sin(phiLoc))...
                         * sinc(del*sin(thetaLoc)*cos(phiLoc))...
                         * exp(1j*kk*(obj.Bxn_xx*sin(thetaLoc)*cos(phiLoc)...
                                    +obj.Bxn_yy*sin(thetaLoc)*sin(phiLoc)));
            ey =pi*del * (cos(phiLoc))...
                         * sinc(del*sin(thetaLoc)*sin(phiLoc))...
                         * exp(1j*kk*(obj.Byn_xx*sin(thetaLoc)*cos(phiLoc)...
                                    +obj.Byn_yy*sin(thetaLoc)*sin(phiLoc)));
            E_phi = [ex ey].';
        end
%         
        
        function [theta,rcs_tt,rcs_tp,rcs_pt,rcs_pp] = plotRCS(obj,phi,dBOn)
            %plots rcs (dB) vs theta given a certain scatter angle phi
            %then retursn values, t = theta, p = phi. First subscript is
            %the scattered field, second is the current
            if(nargin<3)
                %defaults to plotting in dB
                dBOn = 1;
            end
            numVals = 360;
            theta = linspace(-pi/2,pi/2,numVals);%only need top of plate :Plinspace(0,2*pi,numVals);
            rcs_tt = zeros(1,numVals);
            rcs_tp = zeros(1,numVals);
            rcs_pt = zeros(1,numVals);
            rcs_pp = zeros(1,numVals);
            
            for ii = 1:numVals
                [rcs_tt(ii),rcs_tp(ii),rcs_pt(ii),rcs_pp(ii)] = obj.getRCSVal(theta(ii),phi);
            end
            if(dBOn)
                figure;plot(theta,10*log10(rcs_tt))
                    title('RCS VV, E_{s theta}/E_{i theta}')
                    ylim([min(10*log10(rcs_tt)),max(10*log10(rcs_tt))])

                figure;plot(theta,10*log10(rcs_tp))
                    title('RCS VH, E_{s theta}/E_{phi}')
                    ylim([min(10*log10(rcs_tp)),max(10*log10(rcs_tp))])

                figure;plot(theta,10*log10(rcs_pt))
                    title('RCS HV, E_{s phi}/E_{i theta}')
                    ylim([min(10*log10(rcs_pt)),max(10*log10(rcs_pt))])

                figure;plot(theta,10*log10(rcs_pp))
                    title('RCS Hh, E_{s phi}/E_{i phi}')
                    ylim([min(10*log10(rcs_pp)),max(10*log10(rcs_pp))])
            else
                figure;plot(theta,rcs_tt)
                    title('RCS VV, E_{s theta}/E_{i theta}')
                    ylim([min(rcs_tt),max(rcs_tt)])

                figure;plot(theta,rcs_tp)
                    title('RCS VH, E_{s theta}/E_{phi}')
                    ylim([min(rcs_tp),max(rcs_tp)])

                figure;plot(theta,rcs_pt)
                    title('RCS HV, E_{s phi}/E_{i theta}')
                    ylim([min(rcs_pt),max(rcs_pt)])

                figure;plot(theta,rcs_pp)
                    title('RCS Hh, E_{s phi}/E_{i phi}')
                    ylim([min(rcs_pp),max(rcs_pp)])
            end
            
%             %polor plot - rcsTheta
%             rcsdB = 10*log10(rcs_theta);
%             figure;polarplot(theta,rcsdB)
%             title('RCS with theta sweep')
%             pax = gca;
%             pax.ThetaZeroLocation = 'top';
%             rlim([min(10*log10(rcs_theta)) max(10*log10(rcs_theta))])
% 
%             %xy plot because that's what all examples are in
%             figure;plot(theta*180/pi,10*log10(rcs_theta));
%             xlabel('/theta'); ylabel('rcs (dB)')
%             title(['rcs of plate ' num2str(obj.len) '/lambda'])
%             
%             %polor plot - rcsPhi
%             rcsdB = 10*log10(rcs_phi);
%             figure;polarplot(theta,rcsdB)
%             title('RCS with theta sweep')
%             pax = gca;
%             pax.ThetaZeroLocation = 'top';
%             rlim([min(10*log10(rcs_phi)) max(10*log10(rcs_phi))])
% 
%             %xy plot because that's what all examples are in
%             figure;plot(theta*180/pi,10*log10(rcs_phi));
%             xlabel('/theta'); ylabel('rcs (dB)')
%             title(['rcs of plate ' num2str(obj.len) '/lambda'])
            
        end
        
        function [theta,rcs_tt,rcs_tp,rcs_pt,rcs_pp] = plotMonoRCS(obj,phi)
            %plots monostatic rcs (dB) vs theta given a certain scatter angle phi
            %then retursn values, t = theta, p = phi. First subscript is
            %the scattered field, second is the current
            
            numVals = 360;
            theta =linspace(-pi/2,pi/2,numVals);%only need top of plate :Plinspace(0,2*pi,numVals);
            rcs_tt = zeros(1,numVals);
            rcs_tp = zeros(1,numVals);
            rcs_pt = zeros(1,numVals);
            rcs_pp = zeros(1,numVals);
            
            for ii = 1:numVals
                obj = obj.changeEinc(phi,theta(ii));
                [rcs_tt(ii),rcs_tp(ii),rcs_pt(ii),rcs_pp(ii)] = obj.getRCSVal(theta(ii),phi);
            end
                figure;plot(theta,10*log10(rcs_tt))
                title('RCS VV, E_{s theta}/E_{i theta}')
                ylim([min(10*log10(rcs_tt)),max(10*log10(rcs_tt))])

                figure;plot(theta,10*log10(rcs_tp))
                title('RCS VH, E_{s theta}/E_{phi}')
                ylim([min(10*log10(rcs_tp)),max(10*log10(rcs_tp))])

                figure;plot(theta,10*log10(rcs_pt))
                title('RCS HV, E_{s phi}/E_{i theta}')
                ylim([min(10*log10(rcs_pt)),max(10*log10(rcs_pt))])

                figure;plot(theta,10*log10(rcs_pp))
                title('RCS Hh, E_{s phi}/E_{i phi}')
                ylim([min(10*log10(rcs_pp)),max(10*log10(rcs_pp))])

        end
        
        
        
        
        function plotRCSThesis(obj,phi, lambda )
            %DEAD CODE KEEPING FOR DEBUGGIN
            %returns plot that looks like thesis plot for comparison
            %this looks at RCS seperatly... ie) sig = sig_theta+sig_phi
            %This is further divided into an E = Einc_theta+Einc_phi
            %phi: observation angle
            %lambda: wavelength on plate... need normalizing factor because
            %I didn't store it :P
%             numVals = 360;

            %%first lets get the E-field right
            theta =  0:1:360;% linspace(0,2*pi,numVals);%only need top of plate :Plinspace(0,2*pi,numVals);
            thetaRad = theta *pi/180; %make radians
            numVals = length(theta);
%             [E_theta, E_phi] = obj.getEincComponents();
%             JJ_theta = obj.ZZinv*E_theta;
%             JJ_phi = obj.ZZinv*E_phi;
            
            
            %get rcs values
            %pre-allocate arrays
            rcs_tt = zeros(1,numVals);
            rcs_pt = zeros(1,numVals);
            rcs_tp = zeros(1,numVals);
            rcs_pp = zeros(1,numVals);
            
            % calculate RCS at each theta location
            for ii = 1:numVals

                %rcs_tt = rcs_thetatheta, rcs_tp = rcs_theta_phi
                %first subscript deals with the scattered field... look at pg
                %27 if you're confused sarah
                %first subscript corresponds to which incident, rcs_tt => E_theta fed
                [rcs_ttVal,rcs_ptVal] = obj.getRCSValThesis(thetaRad(ii),phi,obj.JJ_theta);
                [rcs_tpVal,rcs_ppVal] = obj.getRCSValThesis(thetaRad(ii),phi,obj.JJ_phi);%%
                
                rcs_tt(ii) = rcs_ttVal;
                rcs_pt(ii) = rcs_ptVal;
                rcs_tp(ii) = rcs_tpVal;
                rcs_pp(ii) = rcs_ppVal;
            end
            rcs_tt = rcs_tt/lambda^2;
            rcs_pt = rcs_pt/lambda^2;
            rcs_tp = rcs_tp/lambda^2;
            rcs_pp = rcs_pp/lambda^2;
            %-------plot stuff ------------
            seperate = 1;
            shift = 0;%10;
            if(seperate) %plots in own figure
                figure;plot(theta,10*log10(rcs_tt)-shift)
                title('RCS VV, E_{s theta}/E_{i theta}')
                ylim([-40,40])

                figure;plot(theta,10*log10(rcs_tp)-shift)
                title('RCS VH, E_{s theta}/E_{phi}')
                ylim([-40,40])

                figure;plot(theta,10*log10(rcs_pt)-shift)
                title('RCS HV, E_{s phi}/E_{i theta}')
                ylim([-40,40])

                figure;plot(theta,10*log10(rcs_pp)-shift)
                title('RCS Hh, E_{s phi}/E_{i phi}')
                ylim([-40,40])
            else
                %plot in same figure
                figure;
                subplot(2,2,1);plot(theta,10*log10(rcs_tt))
                title('RCS VV, E_{s theta}/E_{i theta}')
                ylim([-40,40])
                
                subplot(2,2,2);plot(theta,10*log10(rcs_tp))
                title('RCS VH, E_{s theta}/E_{phi}')
                ylim([-40,40])
                
                subplot(2,2,3);plot(theta,10*log10(rcs_pt))
                title('RCS HV, E_{s phi}/E_{i theta}')
                ylim([-40,40])
                
                subplot(2,2,4);plot(theta,10*log10(rcs_pp))
                title('RCS Hh, E_{s phi}/E_{i phi}')
                ylim([-40,40])
                
            end
            
        end
        function [phi,rcs] = plotRCSThetaIn(obj,theta)
            
            numVals = 100;
            phi = linspace(-pi/2,pi/2,numVals);
            rcs = zeros(1,numVals);

            
            for ii = 1:numVals
                rcs(ii) = obj.getRCSVal(theta,phi(ii));
            end
            rcsdB = 10*log10(rcs);
            figure;plot(phi,rcsdB)
            xlabel('phi');ylabel('rcs dB')
            
            
            figure;polarplot(phi,rcsdB)
            
        end
       
        function [rcs_theta,rcs_phi] = getRCSValThesis(obj,theta,phi ,JJLoc)
            %trying to get the RCS values in the form for the thesis paper
            %mark found... given JJvalues (because I had to break them 
            %apart from E_theta, E_phi) function returns
            %rcs = rcs_theta+rcs_phi
            kk = 2*pi;
            netta = 377;                    
            BxnSize = size(obj.Bxn_xx,2);
            del = obj.len/obj.NumCells;
            
            %--------do E_theta fed first-------------

            Jx = JJLoc(1:BxnSize).';
            Jy = JJLoc(BxnSize+1:end).';
            
            psi_xn = (del^2).*exp(1j.*kk .*sin(theta).* (obj.Bxn_xx.*cos(phi) +obj.Bxn_yy.*sin(phi) ) );
            psi_yn = (del^2).*exp(1j.*kk .*sin(theta).* (obj.Byn_xx.*cos(phi) +obj.Byn_yy.*sin(phi) ) );
            
            %do E_theta fed first
            rcs_theta = abs( sum(cos(phi).*cos(theta).* Jx.*psi_xn) + sum(sin(phi).*cos(theta).*Jy.*psi_yn))^2;
            rcs_phi = abs( sum(sin(phi).*-Jx.*psi_xn) + sum(cos(phi).*Jy.*psi_yn))^2 ;
            
            
            %all the constants
            rcs_theta = ((kk*netta).^2 / (4*pi)) .* rcs_theta;   
            rcs_phi = ((kk*netta).^2 / (4*pi)) .* rcs_phi ;   
        end
        
        function [rcstt,rcstp,rcspt,rcspp] = getRCSVal(obj,theta,phi)
            %calculate the rcs value from book, first subscipt defines the
            %current (and incident field), second subscript defines the
            %scattered field
    
            %this is bad coding practice and you should fix it
            %t = theta, phi = phi
            [rcstt, rcstp] = getRCSValThesis(obj,theta,phi ,obj.JJ_theta);
            [rcspt, rcspp] = getRCSValThesis(obj,theta,phi ,obj.JJ_phi);


        end
        
        function [rcstt,rcstp,rcspt,rcspp] = getRCSValTTPP(obj,theta,phi)
            %calculate the rcs value from book, first subscipt defines the
            %current (and incident field), second subscript defines the
            %scattered field
            %only returns theta_theta and phi_phi
            %trying to speed up code, so removes getRCSValThesis
    
            %this is bad coding practice and you should fix it
            %t = theta, phi = phi

            
            %-------rcs tt -----------------
            kk = 2*pi;
            netta = 377;                    
            BxnSize = size(obj.Bxn_xx,2);
            del = obj.len/obj.NumCells;
            
            JJLoc = obj.JJ_theta;
            Jx = JJLoc(1:BxnSize).';
            Jy = JJLoc(BxnSize+1:end).';
            
            psi_xn = (del^2).*exp(1j.*kk .*sin(theta).* (obj.Bxn_xx.*cos(phi) +obj.Bxn_yy.*sin(phi) ) );
            psi_yn = (del^2).*exp(1j.*kk .*sin(theta).* (obj.Byn_xx.*cos(phi) +obj.Byn_yy.*sin(phi) ) );
            
            %get RCS - theta
            rcs_theta = abs( sum(cos(phi).*cos(theta).* Jx.*psi_xn) + sum(sin(phi).*cos(theta).*Jy.*psi_yn))^2;
                        
            %all the constants
            rcstt = ((kk*netta).^2 / (4*pi)) .* rcs_theta;
            
            %-------rcs pp -----------------
            JJLoc = obj.JJ_phi;
            Jx = JJLoc(1:BxnSize).';
            Jy = JJLoc(BxnSize+1:end).';
            
            psi_xn = (del^2).*exp(1j.*kk .*sin(theta).* (obj.Bxn_xx.*cos(phi) +obj.Bxn_yy.*sin(phi) ) );
            psi_yn = (del^2).*exp(1j.*kk .*sin(theta).* (obj.Byn_xx.*cos(phi) +obj.Byn_yy.*sin(phi) ) );
            
            %get RCS - phi
            rcs_phi = abs( sum(sin(phi).*-Jx.*psi_xn) + sum(cos(phi).*Jy.*psi_yn))^2 ;
                        
            %all the constants
            rcspp = ((kk*netta).^2 / (4*pi)) .* rcs_phi;
            


        end
        
        
        
        function plotEinc(obj)
            %plotting magnitude Einc coefficients
            %Bxn so row = NumCell, col = NumEdge
            
            NumEdges = obj.NumCells -1;
            
            %plot Ex
            XX = zeros(obj.NumCells,NumEdges);
            YY = zeros(obj.NumCells,NumEdges);
            EEMat = zeros(obj.NumCells,NumEdges);
            
            for row = 1:obj.NumCells
                for col = 1:NumEdges
                    XX(row,col) = obj.Bxn_xx(col+NumEdges*(row-1));
                    YY(row,col) = obj.Bxn_yy(col+NumEdges*(row-1));
                    EEMat(row,col) = abs(obj.EE( col+NumEdges*(row-1)));
                end
            end

            figure;surf(XX,YY,abs(EEMat))
            title(['E_x phiInc = ',num2str(obj.phiInc)]);
            xlabel('x'); ylabel('y')
            
            %plot Ey
            yup = length(obj.Bxn_xx); %to get to Jy components  
            XX = zeros(NumEdges,obj.NumCells);
            YY = zeros(NumEdges,obj.NumCells);
            EEMat = zeros(NumEdges,obj.NumCells);
            for row = 1:NumEdges
                for col = 1:obj.NumCells
                    XX(row,col) = obj.Byn_xx(row+NumEdges*(col-1));
                    YY(row,col) = obj.Byn_yy(row+NumEdges*(col-1));
                    EEMat(row,col) = abs(obj.EE(yup + row+NumEdges*(col-1)));
                end
            end
            figure;surf(XX,YY,abs(EEMat))
            title(['E_y phiInc = ',num2str(obj.phiInc)]);
            xlabel('x'); ylabel('y')
        end
        
        function plotCurrent(obj)
            %plotting current coefficients... right now just plots
            %coefficients, started on code to actually use basis function,
            %but that's still a work in process (greened out stuff)
            %Bxn so row = NumCell, col = NumEdge
            
            NumEdges = obj.NumCells -1;
            
            %plot JJ_theta first
            %plot Jx
            XX = zeros(obj.NumCells,NumEdges);
            YY = zeros(obj.NumCells,NumEdges);
            JJMat = zeros(obj.NumCells,NumEdges);
            
            for row = 1:obj.NumCells
                for col = 1:NumEdges
                    XX(row,col) = obj.Bxn_xx(col+NumEdges*(row-1));
                    YY(row,col) = obj.Bxn_yy(col+NumEdges*(row-1));
                    JJMat(row,col) = obj.JJ_theta( col+NumEdges*(row-1));
                end
            end

            figure;subplot(1,2,1);
            imagesc(XX(1,:),YY(1,:),abs(JJMat))

            title(['J_{tx} phiInc = ',num2str(obj.phiInc)]);
            xlabel('x - wavelength'); ylabel('y - wavelength')
            
            %plot Jy
            yup = length(obj.Bxn_xx); %to get to Jy components
            XX = zeros(NumEdges,obj.NumCells);
            YY = zeros(NumEdges,obj.NumCells);
            JJMat = zeros(NumEdges,obj.NumCells);
            for row = 1:NumEdges
                for col = 1:obj.NumCells
                    XX(row,col) = obj.Byn_xx(row+NumEdges*(col-1));
                    YY(row,col) = obj.Byn_yy(row+NumEdges*(col-1));
                    JJMat(row,col) = obj.JJ_theta(yup + row+NumEdges*(col-1));
                end
            end
            subplot(1,2,2);
            imagesc(XX(1,:),YY(1,:),abs(JJMat))
            title(['J_{ty} phiInc = ',num2str(obj.phiInc)]);
            xlabel('x - wavelength'); ylabel('y - wavelength')
            
            %plot JJ_phi next
                        %plot Jx
            XX = zeros(obj.NumCells,NumEdges);
            YY = zeros(obj.NumCells,NumEdges);
            JJMat = zeros(obj.NumCells,NumEdges);
            
            for row = 1:obj.NumCells
                for col = 1:NumEdges
                    XX(row,col) = obj.Bxn_xx(col+NumEdges*(row-1));
                    YY(row,col) = obj.Bxn_yy(col+NumEdges*(row-1));
                    JJMat(row,col) = obj.JJ_phi( col+NumEdges*(row-1));
                end
            end

            figure;subplot(1,2,1);
            imagesc(XX(1,:),YY(1,:),abs(JJMat))
            title(['J_{px} phiInc = ',num2str(obj.phiInc)]);
            xlabel('x - wavelength'); ylabel('y - wavelength')
            
            %plot Jy
            yup = length(obj.Bxn_xx); %to get to Jy components
            XX = zeros(NumEdges,obj.NumCells);
            YY = zeros(NumEdges,obj.NumCells);
            JJMat = zeros(NumEdges,obj.NumCells);
            for row = 1:NumEdges
                for col = 1:obj.NumCells
                    XX(row,col) = obj.Byn_xx(row+NumEdges*(col-1));
                    YY(row,col) = obj.Byn_yy(row+NumEdges*(col-1));
                    JJMat(row,col) = obj.JJ_phi(yup + row+NumEdges*(col-1));
                end
            end
            subplot(1,2,2);
            imagesc(XX(1,:),YY(1,:),abs(JJMat))
            title(['J_{py} phiInc = ',num2str(obj.phiInc)]);
            xlabel('x - wavelength'); ylabel('y - wavelength')

        end
        
        
        %------------some testing stuff----------------------------
        function obj = changeEincBalanis(obj,thetaInc,phiInc)
            %changes the incident field to just Ey... pg593 balanis
            
            obj.phiInc = phiInc; %azmuthal
            obj.thetaInc = thetaInc;%elevation
            kk = 2*pi;
            
            del = obj.len/obj.NumCells; %a in the book
            
%             ex = zeros(BxnSize,1);
%             ey = zeros(BynSize,1);

            %have to update seperately, because may be different sizes
            %onces we zero out cells.
            %sinc(x) = sin(x)/x

            %there are 2 random /pi both inside sinc( ) and outside because
            %matlab defines sinc(x) = sin(pi x)/pi x and I want 
            ey = del* cos(thetaInc)*sinc(del *sin(thetaInc))...
                       * exp(-1j*kk*obj.Byn_yy*sin(thetaInc));
            ex =zeros(size(ey));
            
            obj.EE = [ex ey].'; %update EE and make col vector
            obj.JJ = obj.ZZinv*obj.EE; %update JJ
        end
        
        function plotCurrentBalanis(obj)
            %plots the solution from Balanis
            %only going to have Jy
            
            %constants
            kk = 2*pi;
            netta = 377;
            
            %about the plate
            plateLen = obj.len;
            NumCell = obj.NumCells;
            
            xx = linspace(0,plateLen,NumCell);
            yy = linspace(0,plateLen,NumCell-1);
            [XX,YY] = meshgrid(xx,yy);
            
            %get current
            Jy = (2/netta) *exp(-1j.*kk.*YY.*sin(obj.thetaInc));
            
            figure;surf(XX,YY,abs(Jy))
            title(['J_y thetaInc = ',num2str(obj.phiInc)]);
            xlabel('x'); ylabel('y')
            
        end
        
        function rcsMax =  rcsBalanis(obj,lambda)
            %returns rcs from pg595 of balanis
            kk = 2*pi;
            plateLen = obj.len; 
%             lambda=  physconst('LightSpeed')/freq;
            
            rcsMax = 4*pi * (plateLen^2/lambda)^2 *cos(obj.thetaInc)^2 ...
                  *pi*sinc(kk*plateLen*sin(obj.thetaInc)/pi)^2; 
        end
        %--------------------------------------
        
        function F = moviePhiInc(obj,phiIncstart, phiIncend,numFrames)
%             phiInc_current = obj.phiInc;
            
            F(numFrames) = struct('cdata',[],'colormap',[]);
            
            phiVals = linspace(phiIncstart,phiIncend,numFrames);
            for phiIndex = 1:numFrames
                obj = obj.changeIncidentField(phiVals(phiIndex));
                obj.plotCurrent(); title(sprintf('phiInc = %3.3f',phiVals(phiIndex)));
                drawnow
                F(phiIndex) = getframe;
                pause(0.2)
            end
            
                figure;movie(F)
        end
            
    end
    
end

