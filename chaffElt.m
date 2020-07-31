classdef chaffElt
    %chaffElt Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        %given values
        freq %choosen frequency in Hz
        plateLength %size of the plate in meters
        %calculated values
        plateFull %contains solution for the a completely full plate(x,y positions here)
        plateNull %contains solutions with edges removed
        nullPos %matrix with row/col positions -> [r1,c1;r2,c2;...]
        
        %angle sweep
        thetaVals %theta (elevation) Values to be swept over
        phiVals %phi (azimuth) values to be swept over
        %values for plotting
        
    end
    
    methods
        function obj = chaffElt(freq,plateLength,thetaVals, phiVals,loadVal)
            %creates chf(freq,plateLength,thetaVals, phiVals,load) load is
            %an optional variable that loads a previously generated plate
            %to save time
            
            %set given values
            obj.freq = freq;
            obj.thetaVals = thetaVals;
            obj.phiVals = phiVals;
            obj.nullPos = [];
            obj.plateLength = plateLength;
            
            
            %make plate
            lambda = physconst('LightSpeed')/freq;
            plateLengthLambda = plateLength/lambda; %convert to lambda
            
            %want a minimum of lambda/10 divsion
            %divided by 1/10 so multiply by 10
            NumCells = ceil(plateLengthLambda*10)
            if(NumCells <10)
                NumCells = 16
            end
            if(mod(NumCells,2)) %force NumCells to be an even Number
                NumCells = NumCells+1
            end
            
            if(nargin>4 && loadVal) %load variable used and active (load==1)
                %this isn't fully realized and is me being lazy right now,
                %fix this later sarah 0_0
                %I forced the values above to give 2lambda plate length...
                %this is horrible coding practice right now because I am
                %lazy
                disp('this only works for 1,2,4,5lambda lengths right now')
                disp(['plate length is ' num2str(plateLengthLambda)])
%                 disp(['what do you want to load? recomend plate' num2str(ceil(plateLengthLambda)*10)]) 
                loadPlate = input(['what do you want to load? recomend plate' num2str(ceil(plateLengthLambda)*10) ' '],'s');
                load(loadPlate); %gets plateLoad out of file
               	plate = plateLoad;
                disp([loadPlate ' loaded'])
            else

                %make plate and set plateFull and plateNull
                plate = thePlate(NumCells, plateLengthLambda ,0,0); %set original incident angles to zero

                plate = plate.generateMatrix();
                disp('generated plate')
            end
            obj.plateFull = plate;
            obj.plateNull = plate;
            
            disp('chaff made')
        end
        
 %================= get values ============================================ 
        function numElt = getNumEltFull(obj)
            %returns the number of points for the full plate
            numElt = length(obj.plateFull.Bxn_xx)+length(obj.plateFull.Byn_xx);
        end

        function numElt = getNumEltNull(obj)
            %returns the number of points for the null plate
            numElt = length(obj.plateNull.Bxn_xx) + length(obj.plateNull.Byn_xx);
        end

        function numElt = getBxnSize(obj)
            %returns the length of BxnSize 
            numElt = length(obj.plateNull.Bxn_xx);
        end

        function numCells = getNumCellsRow(obj)
            %returns the number of cells in 1D for the full plate
            numCells = obj.plateFull.NumCells;
        end
        
        function numCells = getNumCellsFull(obj)
            numCells = obj.plateFull.NumCells^2;
        end
%===================== nulling fun ========================================
        function obj = nullNew(obj,nullPos)
            %keep the same full plate, but null new values (ie, doesn't
            %retain past null Values)
            %nullpos gives a list of [rows,cols] that correspond to the
            %cells that are going to be nulled. However, current is defined
            %on the edges of a cell, so to null that cell, 4 edges have to
            %be zeroed out instead
            
            %get row/col
            row = nullPos(:,1);
            col = nullPos(:,2);
            
            %size of Bxn... M in person sum p417
            bxn_len = obj.getBxnSize();

            %cells/edges per row/col (because assumed square)
            NumCells =obj.getNumCellsRow();
            NumEdge = NumCells-1;

            nullLen = size(nullPos,1);
            cellNum = zeros(1,nullLen);
            
            %sorting by cell number because why not? idk why I did this
            %convert row/col into edges
            for ii = 1:nullLen
                %just care about one edge... choose the smallest first
                rowVal = nullPos(ii,1); colVal = nullPos(ii,2);
                %because matlab starts at 1, move row/col to 0 and add 1 at the end
                cellNum(ii) = (rowVal-1)*(NumCells) +(colVal-1)+1;
            end
            
            [out,idx] = sort(cellNum); %trying to get index for sort
            nullPosOld = nullPos;

            for ii=1:nullLen
                nullPos(ii,:) = nullPosOld(idx(ii),:);
            end
            
            obj.nullPos = nullPos; %reset obj nullPos
            
            %-----------------start finding edges--------------------------
            
            %preallocate to max number of edges there could be, ie) 4 edges
            %per cell have use -1 because 0 is value played with ('0' edge 
            %is cancelled out)
            edgex = zeros(1,4*nullLen)-1; %[];
            edgey = zeros(1,4*nullLen)-1;%[];
            edgex_count = 1;
            edgey_count = 1;
            
            %-----do the first row-----
            indexEdge = find(row==1);
            rowOneVal_row = row(indexEdge);
            rowOneVal_col = col(indexEdge);
            %convert to edges
            for ii = 1:length(indexEdge)
                rowVal = rowOneVal_row(ii); colVal = rowOneVal_col(ii);

                %get the edge to right, left, top, and bottom
                edge1 = (rowVal-1)*(NumCells-1) +(colVal-1); 
                edge2 = (rowVal-1)*(NumCells-1) + colVal;
                %no edge3 because no bottom edge
                edge4 = (colVal-1)*(NumCells-1) +  rowVal;

                edgex(edgex_count:edgex_count+1) = [edge1 edge2];
                edgey(edgey_count) = edge4;

                edgex_count = edgex_count+2; %added 2 edges
                edgey_count = edgey_count+1; %added 1 edge

            end
            
            %deal with the corners
            edgex(edgex==0) = [];
            edgex(edgex==NumCells) = [];
            
            
            %-------------do the last row-----------------------
            indexEdge = find(row==NumCells);
            rowLastVal_row = row(indexEdge);
            rowLastVal_col = col(indexEdge);
            %convert to edges
            for ii = 1:length(indexEdge)
                rowVal = rowLastVal_row(ii); colVal = rowLastVal_col(ii);

                %get the edge to right, left, top, and bottom
                edge1 = (rowVal-1)*(NumCells-1) +(colVal-1);
                edge2 = (rowVal-1)*(NumCells-1) + colVal;
                edge3 = (colVal-1)*(NumCells-1) + (rowVal-1);
                %no edge4 because no top edge

                edgex(edgex_count:edgex_count+1) = [edge1 edge2];
                edgey(edgey_count) = edge3;

                edgex_count = edgex_count+2; %added 2 edges
                edgey_count = edgey_count+1; %added 1 edge

            end

            %deal with the corners
            topCellPos = NumCells*NumEdge;%actual number of cells total or top right cell number
            edgex(edgex==topCellPos-NumCells+1) = [];
            edgex(edgex==topCellPos+1) = [];
            
            %------------first col---------------
            indexEdge = find(col==1);
            colOneVal_row = row(indexEdge);
            colOneVal_col = col(indexEdge);

            %convert to edges
            for ii = 1:length(indexEdge)
                rowVal = colOneVal_row(ii); colVal = colOneVal_col(ii);

                %get the edge to right, left, top, and bottom
                %no edge1 because no col to the left
                edge2 = (rowVal-1)*(NumCells-1) + colVal;
                edge3 = (colVal-1)*(NumCells-1) + (rowVal-1);
                edge4 = (colVal-1)*(NumCells-1) +  rowVal;%no edge4 because no top edge

                edgex(edgex_count) = edge2;
                edgey(edgey_count:edgey_count+1) = [edge3 edge4];

                edgex_count = edgex_count+1; %added 1 edge
                edgey_count = edgey_count+2; %added 2 edge

            end

            %deal with the corners
            edgey(edgey==0) = [];
            edgey(edgey==NumCells) = [];


            %------last col-------------
            indexEdge = find(col==NumCells);
            colLastVal_row = row(indexEdge);
            colLastVal_col = col(indexEdge);

            %convert to edges
            for ii = 1:length(indexEdge)
                rowVal = colLastVal_row(ii); colVal = colLastVal_col(ii);

                %get the edge to right, left, top, and bottom
                edge1 = (rowVal-1)*(NumCells-1) +(colVal-1);
                %no edge2 because no right edge
                edge3 = (colVal-1)*(NumCells-1) + (rowVal-1);
                edge4 = (colVal-1)*(NumCells-1) +  rowVal;

                edgex(edgex_count) = edge1;
                edgey(edgey_count:edgey_count+1) = [edge3 edge4];

                edgex_count = edgex_count+1; %added 1 edge
                edgey_count = edgey_count+2; %added 2 edge


            end

            %deal with the corners
            topCellPos = NumCells*NumEdge;%actual number of cells total or top right cell number
            edgey(edgey==topCellPos-NumCells+1) = [];
            edgey(edgey==topCellPos+1) = [];
            
            
            %-------- find everything else -----------------
            % if this reads wierd it's because of how the code was written! I wrote
            % this part first and it works, so I don't want mess with it to much

            %rowBad/colBad are not related to the position to be nulled. It's just the
            %position in nullpos that contains a '1'. I don't care whether that's a row
            %or col. The entire postition need to be wiped. ->why I'm not using colBad
            %for anything

            innerNulls = nullPos; %want to save nullPos right now
            [rowBad, colBad] = find(innerNulls==1); %right next to the edge
            innerNulls(rowBad,:) = [];

            [rowBad,colBad] = find(innerNulls==NumCells);
            innerNulls(rowBad,:) = [];

            for ii = 1:size(innerNulls,1)
                rowVal = innerNulls(ii,1); colVal = innerNulls(ii,2); 
                %edge 1,2 next to eachother and 3,4 next to eachother
                edge1 = (rowVal-1)*(NumCells-1) +(colVal-1); %each time through removes one edge previous
                edge2 = (rowVal-1)*(NumCells-1) + colVal;
                edge3 = (colVal-1)*(NumCells-1) + (rowVal-1);
                edge4 = (colVal-1)*(NumCells-1) +  rowVal;

                edgex(edgex_count:edgex_count+1) = [edge1 edge2];
                edgey(edgey_count:edgey_count+1) = [edge3 edge4];

                edgex_count = edgex_count+2; %added 2 edges
                edgey_count = edgey_count+2; %added 2 edges
            end
            
            %throw out uncessary allocation 
            edgex(edgex==-1) = [];
            edgey(edgey==-1) = [];
            
            %finally get values
            edgex = unique(edgex);
            edgey = unique(edgey);
            
            %remove points from zz, Bxn, Byn, ex, ey
            %zz(badVal) = [] to remove
            %first shift edgey up by new "M", peterson pg417 because of how
            %we're counting zz and ee... original M is length(Bxn) subtract
            %the removed points -> bxn-length(edgex)
            %get plate info
            zzLoc = obj.plateFull.ZZ;
            plateN = obj.plateFull; %wipe old plate
            
            %shiftup value needed for y directed current... ie)M+1 in
            %peterson sum pg417
            edgeyshiftup = bxn_len-length(edgex)+edgey; 
            
            zzLoc(:,edgex) = [];
            zzLoc(edgex,:) = [];
            
            zzLoc(edgeyshiftup,:) = [];
            zzLoc(:,edgeyshiftup) = [];
            
            plateN.EE(edgex) = [];
            plateN.EE(edgeyshiftup) = [];
            
            plateN.Bxn_xx(edgex) = [];
            plateN.Bxn_yy(edgex) = [];
            
            plateN.Byn_xx(edgey) = [];
            plateN.Byn_yy(edgey) = [];

            %store local zz as ZZ in obj
            plateN.ZZ = zzLoc;
            plateN.ZZinv= inv(zzLoc);
            
            %set plateNull
            plateN.JJ = plateN.ZZinv*plateN.EE;
            obj.plateNull = plateN;
            obj.nullPos = nullPos;
        end
%================= playing with Einc =================================      

        function obj = changeEinc(obj,phiInc,thetaInc)
            %change Einc on both the null plate and full plate
            obj.plateFull = obj.plateFull.changeEinc(phiInc,thetaInc);
            obj.plateNull = obj.plateNull.changeEinc(phiInc,thetaInc);
        end
        
        function obj = changeEincTHETA(obj,phiInc,thetaInc)
            %change Einc on both the null plate and full plate
            %This is just the theta polarizeed
            obj.plateFull = obj.plateFull.changeEincTHETA(phiInc,thetaInc);
            obj.plateNull = obj.plateNull.changeEincTHETA(phiInc,thetaInc);
        end
        
        function obj = changeEincPHI(obj,phiInc,thetaInc)
            %change Einc on both the null plate and full plate
            %This is just the phi polarizeed
            obj.plateFull = obj.plateFull.changeEincTHETA(phiInc,thetaInc);
            obj.plateNull = obj.plateNull.changeEincTHETA(phiInc,thetaInc);
        end
        
        function obj = changeEincX(obj)
            %just feed with Ex directly incident
            %... sarah brain hurt thinking about E_theta vs E_phi so 
            %I'm just hard coding it for my sanity
            obj.plateFull = obj.plateFull.changeEincX();
            obj.plateNull = obj.plateNull.changeEincX();
        end
        function obj = changeEincY(obj)
            %just feed with Ex directly incident
            %... sarah brain hurt thinking about E_theta vs E_phi so 
            %I'm just hard coding it for my sanity
            obj.plateFull = obj.plateFull.changeEincY();
            obj.plateNull = obj.plateNull.changeEincY();
        end
        
%================= stuff for optimization =================================            
        function obj = nullNewFromOneArray(obj,xx)
            %nulls based off the [0/1] array found from null2minRCS ga
            %function
            
            NumCells = obj.getNumCellsRow();
            %xx is a series of zeros and one, zero means null that position
%             cellPos = find(xx==0); %positions x=0;
            %get into [row,col] coordinates
%             row = floor((cellPos-1)./(NumCells-1))+1;
%             col = cellPos-(row-1).*(NumCells-1);
            [row,col] = obj.array2rowcol(xx, NumCells);
            nullpos = [row' col'];
            %rewrite 
            obj = obj.nullNew(nullpos);
        end
        
        function rcs = null2minRCS(obj,xx,thetaInc,phiInc)
            %use this function to null values, and then get the RCS value 
            NumCells = obj.getNumCellsRow();
            %xx is a series of zeros and one, zero means null that position
            [row,col] = obj.array2rowcol(xx, NumCells);
            nullpos = [row' col'];
            %think I delt with it, but saving code in case
%             %throw away anything close to the edge because I didn't deal
%             %with that in null Cell
%             [rowBad, colBad] = find(nullpos==1); %right next to the edge
%             nullpos(rowBad,:) = [];
%      
%             [rowBad,colBad] = find(nullpos==2); %one in from the edge
%             nullpos(rowBad,:) = [];
%             
%             
%             [rowBad,colBad] = find(nullpos==NumCells);
%             nullpos(rowBad,:) = [];
%             
%             
%             [rowBad,colBad] = find(nullpos==NumCells-1);
%             nullpos(rowBad,:) = [];
            
            %rewrite 
            obj = obj.nullNew(nullpos);
            
            %get rcsxx
            
            rcs = obj.plateNull.getRCSVal(thetaInc,phiInc); %at main beam
        end
        function rcs = null2minRCSQuarter(obj,xx,thetaInc,phiInc)
            %use this function to null values, and then get the RCS value 
            NumCells = obj.getNumCellsRow();
            NumCellsQuarter = NumCells/2;
            %xx is a series of zeros and one, zero means null that position
            [row,col] = obj.array2rowcol(xx, NumCellsQuarter);
            nullpos = [row' col'];
            %throw away anything close to the edge because I didn't deal
            %with that in null Cell
            [rowBad, colBad] = find(nullpos==1); %right next to the edge
            nullpos(rowBad,:) = [];
   
            [rowBad,colBad] = find(nullpos==2); %one in from the edge
            nullpos(rowBad,:) = [];
            
            
            [rowBad,colBad] = find(nullpos==NumCells);
            nullpos(rowBad,:) = [];
            
            
            [rowBad,colBad] = find(nullpos==NumCells-1);
            nullpos(rowBad,:) = [];
            
            %rewrite 
            obj = obj.nullNew(nullpos);
            
            %get rcsxx
            
            rcs = obj.plateNull.getRCSVal(thetaInc,phiInc); %at main beam
        end
        
        function avgRCS = null2minRCSAvg(obj,xx)
            %seeks to minimize(minus sign in ga makes it maxize) the
            %average RCS over various angles of incidence
            %xx is a series of zeros and one, zero means null that position
            %and is feed into null2minRCS(obj,xx)
            
            numThetaAngles = length(obj.thetaVals);
            numPhiAngles = length(obj.phiVals);
            rcsSum = 0;
            
            for ii = 1:numThetaAngles
                for jj =1:numPhiAngles
                    obj = obj.changeEinc(obj.phiVals(jj),obj.thetaVals(ii));
                    rcsSum = rcsSum + obj.null2minRCS(xx,obj.thetaVals(ii),obj.phiVals(jj));
                end
            end
            avgRCS = rcsSum/(numThetaAngles*numPhiAngles);
        end
        
        function avgRCS = null2minRCSAvgQuarter(obj,xxQuarter)
            %seeks to minimize(minus sign in ga makes it maxize) the
            %average RCS over various angles of incidence
            %xx is a series of zeros and one, zero means null that position
            %and is feed into null2minRCS(obj,xx)
            %tries to do some symmettry magic
            
            %take the one quarter and make into the full array
            NumCells= obj.getNumCellsRow;
            fullArray = obj.quarter2FullArray(xxQuarter,NumCells);
            
            %null2minRCS code from before
            avgRCS = null2minRCSAvg(obj,fullArray);
        end
        
        
        function [phi,rcs] = getRCS(obj,theta,plot)
            %returns RCS of the chaff element... actual code is sitting in thePlate class
            %plot=0 no plot, plot=1 plot dB, plot = 2 plot RCS normal
            [phi,rcs] = obj.plateNull.getRCS(theta,plot);
        end
%======================== optimize code ===================================        
        function [chfNulled,pointsOnVal,RCSavg] = maximizeRCSAvg(obj)
            %runs the genetic algorithm code... the range of angles can be
            %found in chf.null2minRCSAvg
            %this function assumes nothing and just will brute force the
            %issue
            %think i care about cells on
            numPoints = obj.getNumCellsFull(); %size of Full plate

            pointsOn_lb = zeros(numPoints,1);
            pointsOn_ub = ones(numPoints,1);
            options = gaoptimset('PlotFcns',...
             {@gaplotbestf,@gaplotbestindiv,@gaplotexpectation,@gaplotstopping});
            options = gaoptimset(options,'StallGenLimit',100);
            options = gaoptimset(options,'Generations',100);

            options = gaoptimset(options,'TolFun',1e-15);
            Intcon=1:numPoints;
            %maximizing center main beam
            tic
            [pointsOnVal,RCSavg] = ga(@(pointsOn) -obj.null2minRCSAvg(pointsOn),numPoints,[],[],[],[],pointsOn_lb,pointsOn_ub,[],Intcon,options);
            toc  

            chfNulled = obj.nullNewFromOneArray(pointsOnVal); 
        end
%==========================================================================
        function [chfNulled,pointsOnFull,RCSavg] = maximizeRCSAvgSymm(obj)
            %runs the genetic algorithm code... the range of angles can be
            %found in chf.null2minRCSAvg
            %tries to build in some symettry assumes each quarter has to
            %"look" the same ie) if top left is tt then whole matrix will
            %be [tt fliplr(tt); flipud(tt) fliplr(flipud(tt))]
            disp('starting optimizaton for symmetric chaff')
            numCellsFull = obj.getNumCellsRow(); %Number of cells of full plate
            numCellsQuarter = numCellsFull/2; %number of cells in one quarter
            numPoints = numCellsQuarter^2; %number of points in a quarter

            pointsOn_lb = zeros(numPoints,1);
            pointsOn_ub = ones(numPoints,1);
            options = gaoptimset('PlotFcns',...
             {@gaplotbestf,@gaplotbestindiv,@gaplotexpectation,@gaplotstopping});
            options = gaoptimset(options,'StallGenLimit',100);
            options = gaoptimset(options,'Generations',100);

            options = gaoptimset(options,'TolFun',1e-15);
            Intcon=1:numPoints;
            %maximizing center main beam
            tic
            [pointsOnVal,RCSavg] = ga(@(pointsOn) -obj.null2minRCSAvgQuarter(pointsOn),numPoints,[],[],[],[],pointsOn_lb,pointsOn_ub,[],Intcon,options);
            toc  
            
            %pointsOnVal is just quarter cell, get full array
            pointsOnFull = obj.quarter2FullArray(pointsOnVal,numCellsFull);

            %return nulled chaff
            chfNulled = obj.nullNewFromOneArray(pointsOnFull); 
        end
%======================= plot RCS stuff ===================================
        function [theta,rcsNULL,rcsFULL] =  getBiRCSVals(obj,phi)
            %give phi a default value of 0
            if(nargin <2)
                phi = 0; 
            end
           
            numVals = 360;
            theta = linspace(-pi/2,pi/2,numVals);%only need top of plate :Plinspace(0,2*pi,numVals);
            rcsNULL = zeros(1,numVals);
            rcsFULL = zeros(1,numVals);
            
            for ii = 1:numVals
                rcsNULL(ii) = obj.plateNull.getRCSVal(theta(ii),phi);
                rcsFULL(ii) = obj.plateFull.getRCSVal(theta(ii),phi);
            end
        end
        
        function plotRCSRange(obj,thetaRange)
            %mostly for testing just want to see what happens when plotted
            if (length(thetaRange)>10)
                error('I didnt program this far. only can do 10 max. You can change this in function code')
            end
            figure
            for ii = 1:length(thetaRange)
                [phi,rcs] = obj.plateNull.getRCS(thetaRange(ii),0); %don't plot here, plot below so it goes to subplot
                subplot(2,5,ii); polarplot(phi,10*log10(rcs));
                title(['\theta=',num2str(thetaRange(ii))])
            end
            
        end
        function [theta,rcs] = plotMonoStaticRCS(obj,phi)
            %plots the monostatic RCS over the given theta values
            %returns raw RCS, not dB
            [theta, rcs] = obj.plateNull.plotMonoRCS(phi);
        end
        
        function plotEincRangeRCS(obj,phiIncRange,thetaVal)
            %plots the RCS at phi = 0 over different Einc (changing phiInc
            %angles)
            %mostly for testing just want to see what happens when plotted
            if (length(phiIncRange)>15)
                error('I didnt program this far. only can do 15 max...')
            end
            figure;
            for ii = 1:length(phiIncRange)
                chfTemp = obj.changeEinc(phiIncRange(ii),thetaVal);
                [theta,rcs] = chfTemp.plateNull.getRCS(0,0); %don't plot here, plot below so it goes to subplot
                subplot(3,5,ii); polarplot(theta,10*log10(rcs));
                title(['\phi_{inc}= ',num2str(phiIncRange(ii))])
            end
            
            figure
            for ii=1:length(phiIncRange)
                chfTemp = obj.changeEinc(phiIncRange(ii),thetaVal);
                [theta,rcs] = chfTemp.plateFull.getRCS(0,0); %don't plot here, plot below so it goes to subplot
                subplot(3,5,ii); polarplot(theta,10*log10(rcs));
                title(['\phi_{inc}= ',num2str(phiIncRange(ii))])
            end
            
        end
        
%==========================================================================
        function [JxMat,JyMat] = plotCurrent(obj)
            %plot the current of the null plate... idea is to take the code
            %from nullNew but instead of removing values just zeroing them
            %out... this means I need to find all the edges again. Then
            %take plateFull.JJ(edges) = 0
            
            %get some values
            %get plate
            plateF = obj.plateFull;
            %get nulls
            nullPosLoc = obj.nullPos;
            %size of Bxn... M in person sum p417
            %need the full plate Bxn
            bxn_len = length(obj.plateFull.Bxn_xx);
            
            %check to see if nullPos actually has values to play with
            if(nullPosLoc) 
                %get row/col
                row = nullPosLoc(:,1);
                col = nullPosLoc(:,2);

                %cells/edges per row/col (because assumed square)
                NumCells =obj.getNumCellsRow();
                NumEdge = NumCells-1;

                nullLen = size(nullPosLoc,1);
                cellNum = zeros(1,nullLen);

                %sorting by cell number because why not? idk why I did this
                %convert row/col into edges
                for ii = 1:nullLen
                    %just care about one edge... choose the smallest first
                    rowVal = nullPosLoc(ii,1); colVal = nullPosLoc(ii,2);
                    %because matlab starts at 1, move row/col to 0 and add 1 at the end
                    cellNum(ii) = (rowVal-1)*(NumCells) +(colVal-1)+1;
                end

                [out,idx] = sort(cellNum); %trying to get index for sort
                nullPosOld = nullPosLoc;

                for ii=1:nullLen
                    nullPosLoc(ii,:) = nullPosOld(idx(ii),:);
                end



                %-----------------start finding edges--------------------------

                %preallocate to max number of edges there could be, ie) 4 edges
                %per cell have use -1 because 0 is value played with ('0' edge 
                %is cancelled out)
                edgex = zeros(1,4*nullLen)-1; %[];
                edgey = zeros(1,4*nullLen)-1;%[];
                edgex_count = 1;
                edgey_count = 1;

                %-----do the first row-----
                indexEdge = find(row==1);
                rowOneVal_row = row(indexEdge);
                rowOneVal_col = col(indexEdge);
                %convert to edges
                for ii = 1:length(indexEdge)
                    rowVal = rowOneVal_row(ii); colVal = rowOneVal_col(ii);

                    %get the edge to right, left, top, and bottom
                    edge1 = (rowVal-1)*(NumCells-1) +(colVal-1); 
                    edge2 = (rowVal-1)*(NumCells-1) + colVal;
                    %no edge3 because no bottom edge
                    edge4 = (colVal-1)*(NumCells-1) +  rowVal;

                    edgex(edgex_count:edgex_count+1) = [edge1 edge2];
                    edgey(edgey_count) = edge4;

                    edgex_count = edgex_count+2; %added 2 edges
                    edgey_count = edgey_count+1; %added 1 edge

                end

                %deal with the corners
                edgex(edgex==0) = [];
                edgex(edgex==NumCells) = [];


                %-------------do the last row-----------------------
                indexEdge = find(row==NumCells);
                rowLastVal_row = row(indexEdge);
                rowLastVal_col = col(indexEdge);
                %convert to edges
                for ii = 1:length(indexEdge)
                    rowVal = rowLastVal_row(ii); colVal = rowLastVal_col(ii);

                    %get the edge to right, left, top, and bottom
                    edge1 = (rowVal-1)*(NumCells-1) +(colVal-1);
                    edge2 = (rowVal-1)*(NumCells-1) + colVal;
                    edge3 = (colVal-1)*(NumCells-1) + (rowVal-1);
                    %no edge4 because no top edge

                    edgex(edgex_count:edgex_count+1) = [edge1 edge2];
                    edgey(edgey_count) = edge3;

                    edgex_count = edgex_count+2; %added 2 edges
                    edgey_count = edgey_count+1; %added 1 edge

                end

                %deal with the corners
                topCellPos = NumCells*NumEdge;%actual number of cells total or top right cell number
                edgex(edgex==topCellPos-NumCells+1) = [];
                edgex(edgex==topCellPos+1) = [];

                %------------first col---------------
                indexEdge = find(col==1);
                colOneVal_row = row(indexEdge);
                colOneVal_col = col(indexEdge);

                %convert to edges
                for ii = 1:length(indexEdge)
                    rowVal = colOneVal_row(ii); colVal = colOneVal_col(ii);

                    %get the edge to right, left, top, and bottom
                    %no edge1 because no col to the left
                    edge2 = (rowVal-1)*(NumCells-1) + colVal;
                    edge3 = (colVal-1)*(NumCells-1) + (rowVal-1);
                    edge4 = (colVal-1)*(NumCells-1) +  rowVal;%no edge4 because no top edge

                    edgex(edgex_count) = edge2;
                    edgey(edgey_count:edgey_count+1) = [edge3 edge4];

                    edgex_count = edgex_count+1; %added 1 edge
                    edgey_count = edgey_count+2; %added 2 edge

                end

                %deal with the corners
                edgey(edgey==0) = [];
                edgey(edgey==NumCells) = [];


                %------last col-------------
                indexEdge = find(col==NumCells);
                colLastVal_row = row(indexEdge);
                colLastVal_col = col(indexEdge);

                %convert to edges
                for ii = 1:length(indexEdge)
                    rowVal = colLastVal_row(ii); colVal = colLastVal_col(ii);

                    %get the edge to right, left, top, and bottom
                    edge1 = (rowVal-1)*(NumCells-1) +(colVal-1);
                    %no edge2 because no right edge
                    edge3 = (colVal-1)*(NumCells-1) + (rowVal-1);
                    edge4 = (colVal-1)*(NumCells-1) +  rowVal;

                    edgex(edgex_count) = edge1;
                    edgey(edgey_count:edgey_count+1) = [edge3 edge4];

                    edgex_count = edgex_count+1; %added 1 edge
                    edgey_count = edgey_count+2; %added 2 edge


                end

                %deal with the corners
                topCellPos = NumCells*NumEdge;%actual number of cells total or top right cell number
                edgey(edgey==topCellPos-NumCells+1) = [];
                edgey(edgey==topCellPos+1) = [];


                %-------- find everything else -----------------
                % if this reads wierd it's because of how the code was written! I wrote
                % this part first and it works, so I don't want mess with it to much

                %rowBad/colBad are not related to the position to be nulled. It's just the
                %position in nullpos that contains a '1'. I don't care whether that's a row
                %or col. The entire postition need to be wiped. ->why I'm not using colBad
                %for anything

                innerNulls = nullPosLoc; %want to save nullPos right now
                [rowBad, colBad] = find(innerNulls==1); %right next to the edge
                innerNulls(rowBad,:) = [];

                [rowBad,colBad] = find(innerNulls==NumCells);
                innerNulls(rowBad,:) = [];

                for ii = 1:size(innerNulls,1)
                    rowVal = innerNulls(ii,1); colVal = innerNulls(ii,2); 
                    %edge 1,2 next to eachother and 3,4 next to eachother
                    edge1 = (rowVal-1)*(NumCells-1) +(colVal-1); %each time through removes one edge previous
                    edge2 = (rowVal-1)*(NumCells-1) + colVal;
                    edge3 = (colVal-1)*(NumCells-1) + (rowVal-1);
                    edge4 = (colVal-1)*(NumCells-1) +  rowVal;

                    edgex(edgex_count:edgex_count+1) = [edge1 edge2];
                    edgey(edgey_count:edgey_count+1) = [edge3 edge4];

                    edgex_count = edgex_count+2; %added 2 edges
                    edgey_count = edgey_count+2; %added 2 edges
                end

                %throw out uncessary allocation 
                edgex(edgex==-1) = [];
                edgey(edgey==-1) = [];

                %finally get values
                edgex = unique(edgex);
                edgey = unique(edgey);
%                 edgeyshiftup = bxn_len-length(edgex)+edgey; 
                edgeyshiftup = bxn_len+edgey; 

                edges = [edgex edgeyshiftup]; %store all edges in one spot
            else
                %nullPos doesn't have value so no edges :P
                edges = []; 
            end %if(obj.nullPos) 
                %get jjPlot
                %idea is to start with the null and add zeros where needed...
                %only have to add one zero per edges
                jjPlot = obj.plateNull.JJ.';

                for ii = 1:length(edges)
                    edgeLoc = edges(ii);

                    jjPlot  = [jjPlot(1:edgeLoc-1) 0 jjPlot(edgeLoc:end)];

                end



                %---plotting stuff--------------
                %from here code is the same as plate plotting
                %get full plate for x,y values
                plateF = obj.plateFull;
                %initialize matrix
                NumEdges = plateF.NumCells -1;
                XX = zeros(plateF.NumCells,NumEdges);
                YY = zeros(plateF.NumCells,NumEdges);
                JJMat = zeros(plateF.NumCells,NumEdges);

                for row = 1:plateF.NumCells
                    for col = 1:NumEdges
                        XX(row,col) = plateF.Bxn_xx(col+NumEdges*(row-1));
                        YY(row,col) = plateF.Bxn_yy(col+NumEdges*(row-1));
                        JJMat(row,col) = jjPlot( col+NumEdges*(row-1));
                    end
                end
                JxMat = JJMat;
                xx = XX(1,:); %yes, this is stupid way to do it, but reusing code
                yy = YY(1,:); %fix this later sarah
                figure; imagesc(xx,yy,abs(JxMat));
%                 figure;surf(XX,YY,abs(JJMat))
                title(['J_x phiInc = ',num2str(plateF.phiInc)]);
    
            %plot Jy
            if(edges)
                yup = bxn_len-length(edgex);
            else
                yup = bxn_len;
            end
            
            XX = zeros(NumEdges,plateF.NumCells);
            YY = zeros(NumEdges,plateF.NumCells);
            JJMat = zeros(NumEdges,plateF.NumCells);
            for row = 1:NumEdges
                for col = 1:plateF.NumCells
                    XX(row,col) = plateF.Byn_xx(row+NumEdges*(col-1));
                    YY(row,col) = plateF.Byn_yy(row+NumEdges*(col-1));
                    JJMat(row,col) = jjPlot(yup+row+NumEdges*(col-1));
                end
            end
            JyMat = JJMat;
            xx = XX(1,:); %yes, this is stupid way to do it, but reusing code
            yy = YY(1,:); %fix this later sarah
            figure; imagesc(xx,yy,abs(JyMat));
%             figure;surf(XX,YY,abs(JJMat))
            title(['J_y phiInc = ',num2str(plateF.phiInc)]);
            xlabel('x'); ylabel('y')

        end
        
        function plotNullPos(obj)
            %plotting what cells are getting nulled
            %Bxn so row = NumCell, col = NumEdge
            plateF = obj.plateFull;
            
            nullPosLocal = obj.nullPos; %have local value of nullPosLocal
                      
            del = plateF.Bxn_xx(2)-plateF.Bxn_xx(1); %get del 
            
            xx = linspace(del/2,plateF.len,plateF.NumCells);
            yy = xx; %because square
            % plotting stuff
%             [XX,YY] = meshgrid(xx,yy);
            nullPlot = ones(plateF.NumCells);

            for ii = 1:size(nullPosLocal,1)
                row = nullPosLocal(ii,1); col = nullPosLocal(ii,2);
                nullPlot(row,col) = 0;
            end
            % plotting
            figure; imagesc(nullPlot)
            title('with grid')
            hold on
            for ii = 1:plateF.NumCells-1
                xGrid = ii*ones(1,10)+1/2;
                yGrid = linspace(0,20,10);
                
                plot(xGrid,yGrid,'r')
                plot(yGrid,xGrid,'r') %because its a square :P
            end
            
            figure;imagesc('XData',xx,'YData',yy,'CData',nullPlot) %plot
            title('to size')
            hold on
            %plot grid
%             for ii = 1:plateF.NumCells-1
%                 xGrid = ii*del*ones(1,10);
%                 yGrid = linspace(0,plateF.len,10);
%                 
%                 plot(xGrid,yGrid,'r')
%                 plot(yGrid,xGrid,'r') %because its a square :P
%             end
            
        end
        

        
        %======================Export stuff========================================
        function null2csv(obj, filename)
            %export cellSize and null position to csv
            %first line will hold cell size and NumCells
            %everything after is null position
            %need to import into hfss
            NumCells = obj.plateFull.NumCells; 
            cellsize = obj.plateLength/NumCells; %plate length is real length not l0
            outMat = [ cellsize NumCells; obj.nullPos]; 
            csvwrite(filename, outMat)
        end
        
        function nullMat = nullPos2Mat(obj)
            % get nullpos array and output a matrix of 1 and zeros
            % representing the plate. 1=metal, 0 = hole
            
            nullPosLocal = obj.nullPos; %get location of holes
            nullMat = ones(obj.getNumCellsRow); %start with just metal
            
            %walk through the values and place zeros
            for ii = 1:size(nullPosLocal,1)
                row = nullPosLocal(ii,1); col = nullPosLocal(ii,2);
                nullMat(row,col) = 0;
            end
            
        end
        
    end
    
    methods (Static)
        function [row,col] = array2rowcol(xx, CellsPerRow)
            %takes in an array, finds the coordinates of the nulls, and
            %returns the corresponding cell as [row,col] points.
            %xx: the array 1=cell on, 0=cell off
            %CellsPerRow: how many cells in one row/col (assuming
            %square)... need to use this rather than NumCells
            %because of the quarter symettry stuff later (I think?)
            cellPos = find(xx==0); %positions x=0;
            %convert to [row,col]
            row = floor((cellPos-1)./(CellsPerRow))+1;
            col = cellPos-(row-1).*(CellsPerRow);
        
        end
        
        function fullArray = quarter2FullArray(xxQuarter,NumCells)
            %ready to do something stupid that works?? and lazy sarah likes works 
            %going to take the array defing a quarter of the matrix, turn it into a
            %matrix form, replicate the matrix as needed. Finally, that full matrix
            %will be turned into an array to be feed into nullNew or something...
            %because all of that expects an array
            
            %make into matrix
            quarterCell = NumCells/2;
            
            %treating top left of matrix as the "original" because symettry doesn't
            %care which cell quarter I play with
            quarterMat = reshape(xxQuarter,quarterCell,quarterCell);
            
            %crate full matrix
            %because of my wierd numbering (cell 1 is bottom left and increases to the
            %right to wrap around to row above) 
            fullMat = [quarterMat,     fliplr(quarterMat);
                flipud(quarterMat), rot90(quarterMat,2)];
            
            %take full matrix into array
            fullArray = reshape(fullMat,1,NumCells^2);
        end
        
    end
    
end
