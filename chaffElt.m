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
        nullPattern % pattern of the null, CURRENT: only stores when nullPixelPattern used
        
        %pixels stuff
        %ex) a plate with 10 cell division could have pixelSize 2, so would
        %have 5 pixels. The pixels are what can be turned on or off
        pixelSize %number of cells in each pixel
        numPixels %number of pixels on plate
        
        %angle sweep
        thetaVals %theta (elevation) Values to be swept over
        phiVals %phi (azimuth) values to be swept over
        %values for plotting
        
        %had to include "fake cells" to allow current on corner edges 
        fakeEdges %don't think I actually implemented this...
        
    end
    
    methods
        function obj = chaffElt(freq,plateLength,thetaVals, phiVals,NumCells,pixelSize,ZL)
            %creates chf object, please see above for description of most
            %of the variables
            %NumCells: number of cells across ie) number of cells in a row                            
            %pixelSize: number of cells in a single pixel, ie) object is 40
            %           40 cells accross and each pixel is 10 in size
            %ZL: impedance of plate (using impedance sheet approach)
            obj.freq = freq;
            obj.thetaVals = thetaVals;
            obj.phiVals = phiVals;
            obj.nullPos = [];
            obj.plateLength = plateLength;
            
            %convert unit length meters to wavelengths
            lambda = physconst('LightSpeed')./freq;
            plateLengthLambda = plateLength./lambda; %convert to lambda
            
            %NumCell stuff, either defaults to lda/10 or makes sure user
            %choose a viable option
            if(nargin<5)
                %want a minimum of lambda/10 divsion
                %divided by 1/10 so multiply by 10
                %need numcells to be the same regardless of lambda plate size,
                %so use same numcell
                NumCells = ceil(max(plateLengthLambda)*10)
                if(NumCells <10)
                    NumCells = 10;
                end
                obj.pixelSize = 1;
            end
            
            if(mod(NumCells,2)) %force NumCells to be an even Number
                NumCells = NumCells+1
            end
            
            if(NumCells<ceil(max(plateLengthLambda)*10))
                error('Need more cells. Need lambda/10 division minimum')
            end
            
            %generate plates
            plate = []; %set up plate
            for ii = 1:length(freq) %walk through frequencies

                %make plate and set plateFull and plateNull
                plateTemp = thePlate(NumCells, plateLengthLambda(ii) ,0,0,ZL); %set original incident angles to zero

                plate = [plate plateTemp.generateMatrix()]; %store in matrix
                disp('generated plate')
            end

            %define my plates
            obj.plateFull = plate;
            obj.plateNull = plate;
            
            disp('chaff made')
            
                                  
            %pixel stuff
            if(nargin<6) %pixel size not set by user, default to 1 
               pixelSize = 1;
            end
            pixelNum = NumCells/pixelSize;
            if(pixelNum~=floor(pixelNum))
            	%makes sure pixelNum is an integer, because you can't have
            	%.1 of a cell :P
                %update pixelSize next integer number of cells up
                pixelNum = ceil(pixelNum);
                pixelSize = NumCells/pixelNum;
                disp(['pixelSize lead to non-integer number of pixels cells,'...
                      ' updated to pixelSize: ' num2str(pixelSize)]);
                    
            end
            obj.pixelSize = pixelSize; %set pixelSize
            obj.numPixels = pixelNum;
        end
        
 %% ================= get values ============================================ 
 %All frequencies should all have the same size and so numCells is
 %same for all just use the first plate in array
 %doing it this way, because it's a little more readable (I think)
        function numElt = getNumEltFull(obj)
            %returns the number of points for the full plate
            numElt = length(obj.plateFull(1).Bxn_xx)+length(obj.plateFull(1).Byn_xx);
        end

        function numElt = getNumEltNull(obj)
            %returns the number of points for the null plate
            numElt = length(obj.plateNull(1).Bxn_xx) + length(obj.plateNull.Byn_xx);
        end

        function numElt = getBxnSize(obj)
            %returns the length of BxnSize of the null plate (holes)
            numElt = length(obj.plateNull(1).Bxn_xx);
        end
        function numElt = getBxnSizeFull(obj)
            %returns the length of BxnSize of the full plate (no holes)
            numElt = length(obj.plateFull(1).Bxn_xx);
        end

        function numCells = getNumCellsRow(obj)
            %returns the number of cells in 1D for the full plate
            numCells = obj.plateFull(1).NumCells;
        end
        
        function numCells = getNumCellsFull(obj)
            numCells = obj.plateFull(1).NumCells^2;
        end
%% pixels
        function obj = changePixelSize(obj, pixelSize)
            %update the pixelSize and numPixel to new value
            %get numcells
            NumCells = obj.plateFull(1).NumCells;
            
            %calculate pixelNum off of choosen pixelSize
            pixelNum = NumCells/pixelSize;
            %if you get a non-integer for pixelNum, choose a new pixel size
            if(pixelNum~=floor(pixelNum))
            	%makes sure pixelNum is an integer, because you can't have
            	%.1 of a cell :P
                %update pixelSize next integer number of cells up
                pixelNum = ceil(pixelNum);
                pixelSize = NumCells/pixelNum;
                disp(['pixelSize lead to non-integer number of pixels cells,'...
                      ' updated to pixelSize: ' num2str(pixelSize)]);
                    
            end
            obj.pixelSize = pixelSize; %set pixelSize
            obj.numPixels = pixelNum;
        end
%% ===================== nulling fun ========================================
        function obj = removeNulls(obj)
            %used to remove null positions... should return to just metal
            %sheets
            obj.plateNull = obj.plateFull;
            obj.nullPos = [];
            obj.nullPattern =[];
        end
        
        function obj = nullPixelPattern(obj, pattern)
            %nullpixels based off pattern and then store pixel pattern
            
            
        end
        
        function [obj,fullmat] = symmetricNullPix(obj,nullPixelLT)
            %nullPixelLT is a square matrix whose LOWER triangle carries
            %value (upper triangle should be zeros). This describes 1/8 of
            %the chaff plate. It's transformed such that symmetry happens
            %ie) this one takes in a pattern and then translates to
            %positions
            pixelSizeLoc = obj.pixelSize;
            %remake into cell matrix (currently pixelxpixel)
            %ie) the big one
            quadLen = length(nullPixelLT);
            nullQuadCell = zeros(quadLen*pixelSizeLoc);

            for ii =1:quadLen
                for jj=1:quadLen
                    currII = pixelSizeLoc*(ii-1)+1;
                    currJJ = pixelSizeLoc*(jj-1)+1;
                    nullQuadCell(currII:currII+pixelSizeLoc-1,currJJ:currJJ+pixelSizeLoc-1) = nullPixelLT(ii,jj);
                end
            end
            
            %find first type of corner
            %returns the smaller integer location ie) 1,1 wins 
            cornerMat =  [0 1; 1 0];
            [rout,cout]= obj.findSubMatrix(nullQuadCell,cornerMat);
            nullQuadCell(rout,cout)=1;

            %deal with the other type 
            cornerMat =  [1 0; 0 1];
            [rout,cout]= obj.findSubMatrix(nullQuadCell,cornerMat);
            nullQuadCell(rout,cout+1)=1;
            
            
            %have to deal with diagonals
            %the upper triangle is don't care, so other check didn't find this
            %ie, we're adding an edge case fix
            %want to deal 
            cornerMat = [0 0; 1 0];
            [rout,cout]= obj.findSubMatrix(nullQuadCell,cornerMat);
            %check everything it found, but only deal with diagonal
            for ii = 1:length(rout)
                if(rout(ii)==cout(ii))%at a diagonal
                    nullQuadCell(rout(ii),cout(ii))=1;
                end
            end
            
            %take traingle and make it into square
            quadCell = tril(nullQuadCell,-1).'+tril(nullQuadCell);


            %decides odd or even scheme
            %chooses whatever "fits" ie) if quadrant is size 4x4 and
            %fitting into 7x7 it'll be odd scheme, but 8x8 will be 4 scheme
            %probably should add an error catch here too
            quadSize = size(nullPixelLT,1);
            
            if(quadSize*2 == obj.numPixels())
                %flips quadrant around
                nullCell = [quadCell fliplr(quadCell); flipud(quadCell) rot90(quadCell,2)];

            elseif(quadSize*2-1 == obj.numPixels())
                
                %flips quadrant around, but don't reuse the center
                nullCell = [quadCell, fliplr(quadCell(:,1:end-pixelSizeLoc));...
                             flipud(quadCell(1:end-pixelSizeLoc,:)), rot90(quadCell(1:end-pixelSizeLoc,1:end-pixelSizeLoc),2)];
                
            else
                error(['choosen quadrant size does not fit, should be '...
                        num2str(quadSize*2), ' or ', num2str(num2str(quadSize*2-1))])
            end
            
            %deal with center ring
            %can get ring around center that has to be dealt with special
            %first corner fix
                cornerMat =  [0 1; 1 0];
                [rout,cout]= obj.findSubMatrix(nullCell,cornerMat);
                if(rout) %there's a ring
                    nullCell(rout(1)+1,cout(1)+1)=1;
                    nullCell(rout(2),cout(2)) = 1;
                    %second corner fix
                    %only need to fix, if found problem :P
                    cornerMat =  [1 0; 0 1];
                    [rout,cout]= obj.findSubMatrix(nullCell,cornerMat);
                    nullCell(rout(1),cout(1)+1)=1;
                    nullCell(rout(2)+1,cout(2)) = 1;
                end

            %get positions and feed into nullNew
            [row,col]=find(nullCell==0);
            nullPosLoc = [row,col];
            obj = obj.nullNew(nullPosLoc);
            
            %for output in case needed
            fullmat = nullCell;

        end
       
        function obj = nullPixels(obj,nullPixel)
            %will remove pixels by finding the corresponding cell position
            %and feeding that into nullNew (which removes edges). Wrote
            %like this, because nullNew came first
            %expect in form nullPixel = [row col]
            
            %go from pixels->cell position
            %going to start by just finding everything then remove what 
            % things for wierd corner pieces
            nullPosLoc = [];
            for ii = 1:size(nullPixel,1)
                %walk through each position
                rowPos = 1+obj.pixelSize *(nullPixel(ii,1)-1);
                colPos = 1+obj.pixelSize *(nullPixel(ii,2)-1);
                
                for jj =0:obj.pixelSize-1
                    addRow = [rowPos:rowPos+obj.pixelSize-1].';
                    addCol = (jj+colPos)*ones(obj.pixelSize,1);
                    nullPosLoc = [nullPosLoc; addRow,addCol];
                end
            end
            %turn into matrix with 0 and 1's...easier to find corners
            nullPlot = ones(obj.numPixels);
            for ii = 1:size(nullPixel,1)
                row = nullPixel(ii,1); col = nullPixel(ii,2);
                nullPlot(row,col) = 0;
            end
            %find first type of corner
            %returns the smaller integer location ie) 1,1 wins 
            cornerMat =  [0 1; 1 0];%[1 0; 0 1];
            
            [rout,cout]= obj.findSubMatrix(nullPlot,cornerMat);
            %what do I want to remove? going to play with corner right now           
            row_remove = obj.pixelSize*rout;
            col_remove = obj.pixelSize*cout;
            %find in nullPos
            for ii = 1: size(row_remove,1)
                [rout,cout] = obj.findSubMatrix(nullPosLoc,[row_remove(ii),col_remove(ii)]);
                nullPosLoc(rout,:) = [];
            end
            
            %deal with the other type 
            cornerMat =  [1 0; 0 1];
            
            [rout,cout]= obj.findSubMatrix(nullPlot,cornerMat);
            %what do I want to remove? going to play with corner right now           
            row_remove = obj.pixelSize*rout+1;
            col_remove = obj.pixelSize*cout;
            %find in nullPos
            for ii = 1: length(row_remove)
                [rout,cout] = obj.findSubMatrix(nullPosLoc,[row_remove(ii),col_remove(ii)]);
                nullPosLoc(rout,:) = [];
            end
            obj = obj.nullNew(nullPosLoc);
            
        end
        function obj = nullNew(obj,nullPos)
            %keep the same full plate, but null new values (ie, doesn't
            %retain past null Values)
            %nullpos gives a list of [rows,cols] that correspond to the
            %cells that are going to be nulled. However, current is defined
            %on the edges of a cell, so to null that cell, 4 edges have to
            %be zeroed out instead
            
            %get row/col
            if(nullPos) %there are null positions do something and if not the function just ends
                row = nullPos(:,1);
                col = nullPos(:,2);

                %cells/edges per row/col (because assumed square)
                NumCells =obj.getNumCellsRow();
                NumEdge = NumCells-1;

                nullLen = length(row);
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

                %now we can walk through the different plates
                for ii = 1:length(obj.freq)

                    %remove points from zz, Bxn, Byn, ex, ey
                    %zz(badVal) = [] to remove
                    %first shift edgey up by new "M", peterson pg417 because of how
                    %we're counting zz and ee... original M is length(Bxn) subtract
                    %the removed points -> bxn-length(edgex)
                    %get plate info
                    plateF = obj.plateFull(ii); 
                    zzLoc = plateF.ZZ;
                    plateN = plateF; %start with full plate

                    %shiftup value needed for y directed current... ie)M+1 in
                    %peterson sum pg417
                    edgeyshiftup = obj.getBxnSizeFull()-length(edgex) + edgey; 

                    zzLoc(:,edgex) = [];
                    zzLoc(edgex,:) = [];

                    zzLoc(edgeyshiftup,:) = [];
                    zzLoc(:,edgeyshiftup) = [];

                    plateN.EE_theta(edgex) = [];
                    plateN.EE_theta(edgeyshiftup) = [];

                    plateN.EE_phi(edgex) = [];
                    plateN.EE_phi(edgeyshiftup) = [];

                    plateN.Bxn_xx(edgex) = [];
                    plateN.Bxn_yy(edgex) = [];

                    plateN.Byn_xx(edgey) = [];
                    plateN.Byn_yy(edgey) = [];

                    %store local zz as ZZ in obj
                    plateN.ZZ = zzLoc;
                    plateN.ZZinv= inv(zzLoc);

                    %set plateNull
                    plateN.JJ_theta = plateN.ZZinv*plateN.EE_theta;
                    plateN.JJ_phi = plateN.ZZinv*plateN.EE_phi;
                    obj.plateNull(ii) = plateN;
                    obj.nullPos = nullPos;
                end
            end
        end
%% ================= playing with Einc =================================      

        function obj = changeEinc(obj,phiInc,thetaInc)
            %change Einc on both the null plate and full plate
            for ii = 1:length(obj.freq)
                plateF = obj.plateFull(ii);
                plateN = obj.plateNull(ii);
                
                obj.plateFull(ii) = plateF.changeEinc(phiInc,thetaInc);
                obj.plateNull(ii) = plateN.changeEinc(phiInc,thetaInc);
            end
        end
        
        
        
%% ================= stuff for optimization =================================            
        function obj = nullNewFromOneArray(obj,xx)
            %nulls based off the [0/1] array found from null2minRCS ga
            %function
            
            NumCells = obj.getNumCellsRow();
            [row,col] = obj.array2rowcol(xx, NumCells);
            nullpos = [row' col'];
            %rewrite 
            obj = obj.nullNew(nullpos);
        end
        
        

        
        function avgRCS = null2minRCSAvgSym(obj,xxQuarter)
            %seeks to minimize(minus sign in ga makes it maxize) the
            %average RCS over various angles of incidence
            %xx is a series of zeros and one, zero means null that position
            %and is feed into null2minRCS(obj,xx)
            %tries to do some symmettry magic
            
            %reshape into matrix
            %length of side of quarter is half of total pixel
            nullQuartMat = reshape(xxQuarter,ceil(obj.numPixels/2),ceil(obj.numPixels/2));
            

            %null the plate
            obj = obj.symmetricNullPix(nullQuartMat);
            
            %---get monoRCS at various points-------------
            %walk through frequencies
            freqLen = length(obj.freq);

            %get angles to walk over
            thetaLoc = obj.thetaVals;
            phiLoc = obj.phiVals;
            
            numThetaAngles = length(obj.thetaVals);
            numPhiAngles = length(obj.phiVals);
            
            %intialize rcsSum
            avgRCS = 0;%this one will be over all frequencies and then averaged 
            rcsOneFreq = 0;
            
            for pp = 1:freqLen %walk through frequencies
                lda = physconst('lightspeed')/obj.freq(pp);
                %walk through the frequencies
                for ii = 1:numThetaAngles
                    for jj = 1:numPhiAngles
                        
                        %update Einc only do plateNull for speed ie) full
                        %plate isn't updated, shouldn't matter though
                        obj.plateNull(pp) = obj.plateNull(pp).changeEinc(phiLoc(jj),thetaLoc(ii));
                        
                        %get rcs
                        [rcstt,rcstp,rcspt,rcspp] = obj.plateNull(pp).getRCSVal(thetaLoc(ii),phiLoc(jj));
%                         rcsOneFreq =rcsOneFreq+ (rcstt+rcspp)/2;
                        rcsOneFreq = rcsOneFreq+ (rcstt+rcspp)/2;
                        
                    end
                    %doing it this way so only have to multiply by lda^2 at
                    %the end
                    avgRCS =avgRCS+lda^2*rcsOneFreq; %just add and divide at the end
                    rcsOneFreq = 0;
                end
                
            end
            %divide by number of elements added to rcsAvg for average
            %2 for rcstt and rcspp, freqLen: # of frequencies, 
            avgRCS = avgRCS/(2*freqLen*numThetaAngles*numPhiAngles);
        end
        
        
        function [phi,rcs] = getRCS(obj,theta,plot)
            %returns RCS of the chaff element... actual code is sitting in thePlate class
            %plot=0 no plot, plot=1 plot dB, plot = 2 plot RCS normal
            [phi,rcs] = obj.plateNull.getRCS(theta,plot);
        end
%% ======================== optimize code ===================================        

        function [chfNulled,nullMat,RCSavg] = maximizeRCSAvgSymm(obj,maxRuns)
            %runs the genetic algorithm code... the range of angles can be
            %found in chf.null2minRCSAvg
            %tries to build in some symettry assumes each quarter has to
            %"look" the same ie) if top left is tt then whole matrix will
            %be [tt fliplr(tt); flipud(tt) fliplr(flipud(tt))]
            
            if(nargin <2)
                maxRuns = 50;
            end
            
            disp('starting optimizaton for symmetric chaff')
            numQuartPixel = ceil(obj.numPixels/2); %in case of odd number 
            numPoints = numQuartPixel^2; %number of points in a quarter

            pointsOn_lb = zeros(numPoints,1);
            pointsOn_ub = ones(numPoints,1);
            options = gaoptimset('PlotFcns',...
             {@gaplotbestf,@gaplotbestindiv,@gaplotexpectation,@gaplotstopping});
            options = gaoptimset(options,'StallGenLimit',maxRuns);
            options = gaoptimset(options,'Generations',maxRuns);

            options = gaoptimset(options,'TolFun',1e-15);
            Intcon=1:numPoints;
            %maximizing center main beam
            tic
            [pointsOnVal,RCSavg] = ga(@(pointsOn) -obj.null2minRCSAvgSym(pointsOn),numPoints,[],[],[],[],pointsOn_lb,pointsOn_ub,[],Intcon,options);
            toc  
%             
            %reshape into matrix
            nullQuartMat = reshape(pointsOnVal,ceil(obj.numPixels/2),ceil(obj.numPixels/2));
                        
            %return nulled chaff
            [chfNulled, nullMat] = obj.symmetricNullPix(nullQuartMat);

        end
%% -----------        
        function [chfNulled,nullMat,RCSavg] = maximizeRCSAvgSymmPatternSearch(obj,on,maxIterations)
            %Not sure this works
            %runs the genetic algorithm code... the range of angles can be
            %found in chf.null2minRCSAvg
            %tries to build in some symettry assumes each quarter has to
            %"look" the same ie) if top left is tt then whole matrix will
            %be [tt fliplr(tt); flipud(tt) fliplr(flipud(tt))]
            disp('starting optimizaton for symmetric chaff')

            numQuartPixel = ceil(obj.numPixels/2); %in case of odd number 
            numPoints = numQuartPixel^2; %number of points in a quarter

            if on %start with array of 0 or 1 (no sheet or all metal)
                startCond = ones(1,numPoints); %initial guess
            else
                startCond = zeros(1,numPoints); %initial guess
            end

            pointsOn_lb = zeros(numPoints,1);
            pointsOn_ub = ones(numPoints,1);
            options = optimoptions('patternsearch','ScaleMesh','off','PlotFcn',{'psplotbestf','psplotfuncount','psplotbestx'},...
                                   'MaxIterations',maxIterations);


            %maximizing center main beam
            tic
            [pointsOnVal,RCSavg] = patternsearch(@(pointsOn) -obj.null2minRCSAvgSym(pointsOn),startCond,[],[],[],[],pointsOn_lb,pointsOn_ub,options);
            time = toc
            disp(['runtime = ' num2str(time)]) 
            %reshape into matrix
            nullQuartMat = reshape(pointsOnVal,ceil(obj.numPixels/2),ceil(obj.numPixels/2));
                        
            %return nulled chaff
            [chfNulled, nullMat] = obj.symmetricNullPix(nullQuartMat);
        end
        
        %% -----------        
        function [chfNulled,nullMat,RCSavg] = maximizeRCSAvgSymmParticlSwarm(obj,on,maxIterations)
            %Not sure this works
            %runs the genetic algorithm code... the range of angles can be
            %found in chf.null2minRCSAvg
            %tries to build in some symettry assumes each quarter has to
            %"look" the same ie) if top left is tt then whole matrix will
            %be [tt fliplr(tt); flipud(tt) fliplr(flipud(tt))]
            disp('starting optimizaton for symmetric chaff')

            numQuartPixel = ceil(obj.numPixels/2); %in case of odd number 
            numPoints = numQuartPixel^2; %number of points in a quarter

            if on %start with array of 0 or 1 (no sheet or all metal)
                startCond = ones(1,numPoints); %initial guess
            else
                startCond = zeros(1,numPoints); %initial guess
            end

            pointsOn_lb = zeros(numPoints,1);
            pointsOn_ub = ones(numPoints,1);
            options = optimoptions('patternsearch','ScaleMesh','off','PlotFcn',{'psplotbestf','psplotfuncount','psplotbestx'},...
                                   'MaxIterations',maxIterations);


            %maximizing center main beam
            tic
            [pointsOnVal,RCSavg] = particleswarm(@(pointsOn) -obj.null2minRCSAvgSym(pointsOn),pointsOn_lb,pointsOn_ub,options);
            time = toc
            disp(['runtime = ' num2str(time)]) 
            %reshape into matrix
            nullQuartMat = reshape(pointsOnVal,ceil(obj.numPixels/2),ceil(obj.numPixels/2));
                        
            %return nulled chaff
            [chfNulled, nullMat] = obj.symmetricNullPix(nullQuartMat);
        end
%% ======================= plot RCS stuff ===================================
        function [theta,rcsTT, rcsPT, rcsTP, rcsPP] =  getBiRCSVals(obj,phi)
            %returns the bistatic radar cross-section... rows are each
            %individual frequency ie) rcsNull(1) is the first plate
            %response
            %IT ALREADY SCALES IT TO THE WAVELENGTH, YOU DON'T NEED TO DO
            %THAT
            %give phi a default value of 0
            if(nargin <2)
                phi = 0; 
            end
           
            numVals = 90;
            theta = linspace(0,2*pi,360);%linspace(-pi/2,pi/2,numVals);%only need top of plate :Plinspace(0,2*pi,numVals);
            theta = linspace(-pi/2,pi/2,numVals);
            freqLen = length(obj.freq);
            
            %pre-allocate matrix
            rcsTT = zeros(freqLen,numVals);
            rcsPT = zeros(freqLen,numVals);
            rcsTP = zeros(freqLen,numVals);
            rcsPP = zeros(freqLen,numVals);
            
            for jj = 1:freqLen
                %get wavelength - make rcs in terms of meters not
                %wavelength
                lda = physconst('lightspeed')/obj.freq(jj);
                for ii = 1:numVals
                    [rcstt,rcstp,rcspt,rcspp] = obj.plateNull(jj).getRCSVal(theta(ii),phi);

                    rcsTT(jj,ii) = rcstt*lda^2;
                    rcsPT(jj,ii) = rcstp*lda^2;
                    rcsTP(jj,ii) = rcspt*lda^2;
                    rcsPP(jj,ii) = rcspp*lda^2;

                end
            end
        end
        
        function [theta,rcsTT, rcsPT, rcsTP, rcsPP] =  getBiRCSValsFULL(obj,phi)
            %If you want to compare the null vs the full plate, this
            %returns the bistatic rcs of the metal sheet
            
            if(nargin <2)
                phi = 0; 
            end
           
            numVals = 360;
            theta =linspace(-pi/2,pi/2,numVals);%only need top of plate :Plinspace(0,2*pi,numVals);
            freqLen = length(obj.freq);
            
            %pre-allocate matrix
            rcsTT = zeros(freqLen,numVals);
            rcsPT = zeros(freqLen,numVals);
            rcsTP = zeros(freqLen,numVals);
            rcsPP = zeros(freqLen,numVals);
            
            for jj = 1:freqLen
                %get wavelength - make rcs in terms of meters not
                %wavelength
                lda = physconst('lightspeed')/obj.freq(jj);
                for ii = 1:numVals
                    [rcstt,rcstp,rcspt,rcspp] = obj.plateNull(jj).getRCSVal(theta(ii),phi);

                    rcsTT(jj,ii) = rcstt*lda^2;
                    rcsPT(jj,ii) = rcstp*lda^2;
                    rcsTP(jj,ii) = rcspt*lda^2;
                    rcsPP(jj,ii) = rcspp*lda^2;

                end
            end
            
        end
        
        function plotBiRCS(obj,phi)
            %plots biRCS of null plate
            %defaults to polar plot
            if(nargin <3)
                polar = 1;
            end
            [theta,rcsTT, rcsPT, rcsTP, rcsPP] =  obj.getBiRCSVals(phi);
            
            freqLen = length(obj.freq);

            for ii= 1:freqLen
                figure;
                subplot(1,2,1);title('rcs_tt')
                    plot(theta*180/pi,rcsTT(ii,:));
                    title('RCS VV, E_{s theta}/E_{i theta}')
                    xlabel('theta '); ylabel('bircs')
                    
                    
                subplot(1,2,2);title('rcs_pp')
                    plot(theta*180/pi,rcsPP(ii,:));
                    title('RCS HH, E_{s phi}/E_{i phi}')
                    xlabel('theta '); ylabel('bircs')

%                     figure;
%                         plot(theta,10*log10(rcsTT(ii,:)));
%                         title('RCS VV, E_{s theta}/E_{i theta}')
%                         xlabel('angle (rads)'); ylabel('bircs (dB)')
%                     figure;
%                         plot(theta,10*log10(rcsPT(ii,:)));
%                         title('RCS HV, E_{s phi}/E_{i theta}')
%                         xlabel('angle (rads)'); ylabel('bircs (dB)')
%                     figure;
%                         plot(theta,10*log10(rcsTP(ii,:)));
%                         title('RCS VH, E_{s theta}/E_{i phi}')
%                         xlabel('angle (rads)'); ylabel('bircs (dB)')
%                     figure;
%                         plot(theta,10*log10(rcsPP(ii,:)));
%                         title('RCS HH, E_{s phi}/E_{i phi}')
%                         xlabel('angle (rads)'); ylabel('bircs (dB)')
            end
        end
%% ------------------mono rcs -------------
        function [avgRCSNull,avgRCSFull] = getAvgRCS(obj)
            %returns the average RCS over both the nulled and full plates
            %---get monoRCS at various points-------------
            %walk through frequencies
            freqLen = length(obj.freq);

            %get angles to walk over
            thetaLoc = obj.thetaVals;
            phiLoc = obj.phiVals;
            
            numThetaAngles = length(obj.thetaVals);
            numPhiAngles = length(obj.phiVals);
            
            %intialize rcsSum
            avgRCSNull = 0;%this one will be over all frequencies and then averaged 
            avgRCSFull = 0;%this one will be over all frequencies and then averaged 
            rcsOneFreqNull = 0;
            rcsOneFreqFull = 0;
            
            for pp = 1:freqLen %walk through frequencies
                lda = physconst('lightspeed')/obj.freq(pp);
                %walk through the frequencies
                for ii = 1:numThetaAngles
                    for jj = 1:numPhiAngles
                        
                        %update Einc only do plateNull for speed 
                        obj.plateNull(pp) = obj.plateNull(pp).changeEinc(phiLoc(jj),thetaLoc(ii));               
                        %get rcs
                        [rcstt,rcstp,rcspt,rcspp] = obj.plateNull(pp).getRCSVal(thetaLoc(ii),phiLoc(jj));
%                         rcsOneFreq =rcsOneFreq+ (rcstt+rcspp)/2;
                        rcsOneFreqNull = rcsOneFreqNull+ (rcstt+rcspp)/2;
                        
                        %full plate
                        obj.plateFull(pp) = obj.plateFull(pp).changeEinc(phiLoc(jj),thetaLoc(ii));
                        %get rcs
                        [rcstt,rcstp,rcspt,rcspp] = obj.plateFull(pp).getRCSVal(thetaLoc(ii),phiLoc(jj));
%                         rcsOneFreq =rcsOneFreq+ (rcstt+rcspp)/2;
                        rcsOneFreqFull = rcsOneFreqFull+ (rcstt+rcspp)/2;
                    end
                    %doing it this way so only have to multiply by lda^2 at
                    %the end
                    avgRCSNull =avgRCSNull+lda^2*rcsOneFreqNull; %just add and divide at the end
                    avgRCSFull =avgRCSFull+lda^2*rcsOneFreqFull; %just add and divide at the end
                    rcsOneFreqNull = 0;
                    rcsOneFreqFull = 0;
                end
                
            end
            %divide by number of elements added to rcsAvg for average
            %2 for rcstt and rcspp, freqLen: # of frequencies, 
            avgRCSNull = avgRCSNull/(2*freqLen*numThetaAngles*numPhiAngles);
            avgRCSFull = avgRCSFull/(2*freqLen*numThetaAngles*numPhiAngles);
        end

        function [theta,rcsTT, rcsPT, rcsTP, rcsPP] =  getMonoRCSVals(obj,phi,theta)
            %returns the bistatic radar cross-section... rows are each
            %individual frequency ie) rcsNull(1) is the first plate
            %response
            %give phi a default value of 0
            if(nargin <2)
                phi = 0; 
            end
            if(nargin <3) %defaults theta values
                numVals = 180;
                theta = linspace(-pi/2,pi/2,numVals);%only need top of plate :Plinspace(0,2*pi,numVals);
            else
                numVals = length(theta); %need for for loop
            end
            freqLen = length(obj.freq);
            
            
            %pre-allocate matrix
            rcsTT = zeros(freqLen,numVals);
            rcsPT = zeros(freqLen,numVals);
            rcsTP = zeros(freqLen,numVals);
            rcsPP = zeros(freqLen,numVals);
            
            for jj = 1:length(obj.freq)
                %get wavelength - make rcs in terms of meters not
                %wavelength
                lda = physconst('lightspeed')/obj.freq(jj);
                for ii = 1:numVals
                    plateN = obj.plateNull(jj).changeEinc(phi,theta(ii));
                    [rcstt,rcstp,rcspt,rcspp] = plateN.getRCSVal(theta(ii),phi);

                    rcsTT(jj,ii) = rcstt*lda^2;
                    rcsPT(jj,ii) = rcstp*lda^2;
                    rcsTP(jj,ii) = rcspt*lda^2;
                    rcsPP(jj,ii) = rcspp*lda^2;

                end
            end
        end
        
        
        
        function [rcsTT, rcsPT, rcsTP, rcsPP] =  getMonoRCSValsOPT(obj,phi)
            %returns the bistatic radar cross-section at optimized theta 
            %angles, asssumes we're feeding a "correct" phival... rows are each
            %individual frequency ie) rcsNull(1) is the first plate
            %response
            %give phi a default value of obj.phiVals(1), you can feed
            %phi!=phivals, please don't
            if(nargin <2)
                phi = obj.phiVals; 
            end
           
            
            theta = obj.thetaVals;%only need top of plate :Plinspace(0,2*pi,numVals);
            thetaLen = length(theta);
            freqLen = length(obj.freq);
            
            %pre-allocate matrix
            rcsTT = zeros(freqLen,thetaLen);
            rcsPT = zeros(freqLen,thetaLen);
            rcsTP = zeros(freqLen,thetaLen);
            rcsPP = zeros(freqLen,thetaLen);
            
            for jj = 1:length(obj.freq)
                %get wavelength - make rcs in terms of meters not
                %wavelength
                lda = physconst('lightspeed')/obj.freq(jj);
                for ii = 1:thetaLen
                    plateN = obj.plateNull(jj).changeEinc(phi,theta(ii));
                    [rcstt,rcstp,rcspt,rcspp] = plateN.getRCSVal(theta(ii),phi);

                    rcsTT(jj,ii) = rcstt*lda^2;
                    rcsPT(jj,ii) = rcstp*lda^2;
                    rcsTP(jj,ii) = rcspt*lda^2;
                    rcsPP(jj,ii) = rcspp*lda^2;

                end
            end
        end
        
        function [theta,rcsTT, rcsPT, rcsTP, rcsPP] =  getMonoRCSValsFULL(obj,phi,theta)
            %returns the bistatic radar cross-section... rows are each
            %individual frequency ie) rcsNull(1) is the first plate
            %response
            %gives the full plate... mostly using to compare against nulled
            %plate
            
            if(nargin <3) %defaults theta values
                numVals = 180;
                theta = linspace(-pi/2,pi/2,numVals);%only need top of plate :Plinspace(0,2*pi,numVals);
            else
                numVals = length(theta); %need for for loop
            end
            
            %give phi a default value of 0
            if(nargin <2)
                phi = 0; 
            end
           
            freqLen = length(obj.freq);
            
            %pre-allocate matrix
            rcsTT = zeros(freqLen,numVals);
            rcsPT = zeros(freqLen,numVals);
            rcsTP = zeros(freqLen,numVals);
            rcsPP = zeros(freqLen,numVals);
            
            for jj = 1:length(obj.freq)
                %get wavelength - make rcs in terms of meters not
                %wavelength
                lda = physconst('lightspeed')/obj.freq(jj);
                for ii = 1:numVals
                    plateF = obj.plateFull(jj).changeEinc(phi,theta(ii));
                    [rcstt,rcstp,rcspt,rcspp] = plateF.getRCSVal(theta(ii),phi);

                    rcsTT(jj,ii) = rcstt*lda^2;
                    rcsPT(jj,ii) = rcstp*lda^2;
                    rcsTP(jj,ii) = rcspt*lda^2;
                    rcsPP(jj,ii) = rcspp*lda^2;

                end
            end
        end
       
        function plotMonoStaticRCS(obj,phi,polar)
            %plots the monostatic RCS over the given theta values
            %returns raw RCS, not dB
            if(nargin <3)
                polar = 1;
            end
            [theta,rcsTT, rcsPT, rcsTP, rcsPP] =  obj.getMonoRCSVals(phi);
            freqLen = length(obj.freq);
            
            if(polar)
                for ii= 1:freqLen
                    figure;
                    subplot(1,4,1);title(['rcs_tt freq= ' num2str(obj.freq(ii)) 'Ghz'])
                        polarplot(theta,10*log10(rcsTT(ii,:)));
                    subplot(1,4,2);title('rcs_pt')
                        polarplot(theta,10*log10(rcsPT(ii,:)));
                    subplot(1,4,3);title('rcs_tp')
                        polarplot(theta,10*log10(rcsTP(ii,:)));
                    subplot(1,4,4);title('rcs_pp')
                        polarplot(theta,10*log10(rcsPP(ii,:)));
                end
            else
                for ii= 1:freqLen
                    figure;
                    subplot(1,4,1);title(['rcs_tt freq= ' num2str(obj.freq(ii)) 'Ghz'])
                        plot(theta,10*log10(rcsTT(ii,:)));
                    subplot(1,4,2);title('rcs_pt')
                        plot(theta,10*log10(rcsPT(ii,:)));
                    subplot(1,4,3);title('rcs_tp')
                        plot(theta,10*log10(rcsTP(ii,:)));
                    subplot(1,4,4);title('rcs_pp')
                    plot(theta,10*log10(rcsPP(ii,:)));
                end
            end
        end
        
        function plotMono3D(obj,dbOn)
            %plots the rcs of null plate and the full plate
            %dbOn - plots in dB, defaults to off
            if(nargin <2)
                dbOn = 0;
            end
            numVals = 100;
            phi = linspace(-pi,pi,numVals);
            theta = linspace(-pi/2,pi/2,numVals);
            %this is horrible coding, but I know theta from 
            %get rcs values for null plate and full plate
            
            %preallocate plates
            rcsFullTT = zeros(numVals);
            rcsFullPP = zeros(numVals);
            rcsNullTT = zeros(numVals) ;
            rcsNullPP = zeros(numVals) ;
            
            %make grid for mesh
            TT = repmat(theta,numVals,1);
            PP = repmat(phi.',1,numVals);
            
            %get frequency length
            freqLen = length(obj.freq);
            for currPlate = 1:freqLen
                for ii= 1:length(phi)
                    for jj = 1:length(theta)
                        %change incident field
                        obj = obj.changeEinc(phi(ii),theta(ii));
                        %get full plate info first
                        plateF = obj.plateFull(currPlate).changeEinc(phi(jj),theta(ii));
                        [rcstt,rcstp,rcspt,rcspp] = plateF.getRCSVal(theta(ii),phi(jj));

                        rcsFullTT(ii,jj) = rcstt; 
                        rcsFullPP(ii,jj) = rcspp;
                        
                        %get null plate info next
                        plateN = obj.plateNull(currPlate).changeEinc(phi(jj),theta(ii));
                        [rcstt,rcstp,rcspt,rcspp] = plateN.getRCSVal(theta(ii),phi(jj));
                        rcsNullTT(ii,jj) = rcstt; 
                        rcsNullPP(ii,jj) = rcspp;
                    end
                end
                
                if(dbOn)
                    rcsFullTT = 10*log10(rcsFullTT);
                    rcsFullPP = 10*log10(rcsFullPP);
                    rcsNullTT = 10*log10(rcsNullTT);
                    rcsNullPP = 10*log10(rcsNullPP);
                end
                %plot theta-theta polarization first
                figure;
                subplot(1,2,1);
                [XX,YY,ZZ] = sph2cart(PP,TT,rcsFullPP);
                s = surf(XX,YY,ZZ);
                s.EdgeColor = 'none';
                title(['rcs_{phi} plate freq= ' num2str(obj.freq(currPlate)*10^-9) 'Ghz'])
                
                subplot(1,2,2);
                [XX,YY,ZZ] = sph2cart(PP,TT,rcsNullPP);
                s = surf(XX,YY,ZZ);
                s.EdgeColor = 'none';
                title(['rcs_{phi} chaff freq= ' num2str(obj.freq(currPlate)*10^-9) 'Ghz'])
                
                figure;
                subplot(1,2,1);
                [XX,YY,ZZ] = sph2cart(PP,TT,rcsFullTT);
                s = surf(XX,YY,ZZ);
                s.EdgeColor = 'none';
                title(['rcs_{theta} plate freq= ' num2str(obj.freq(currPlate)*10^-9) 'Ghz'])
                
                subplot(1,2,2);
                [XX,YY,ZZ] = sph2cart(PP,TT,rcsNullTT);
                s = surf(XX,YY,ZZ);
                s.EdgeColor = 'none';
                title(['rcs_{theta} chaff freq= ' num2str(obj.freq(currPlate)*10^-9) 'Ghz'])
                
                
            end

            
            %convert to cartesian coordinates

            
%             polarplot3d(rcsFull)
        end
        
        
        function [rcsNullTT,rcsNullPP,rcsFullTT,rcsFullPP] = plotMonoFlat(obj,dbOn)
            %plots the rcs of null plate and the full plate
            %dbOn - plots in dB, defaults to off
            if(nargin <2)
                dbOn = 0;
            end
            numVals = 100;
            phi = linspace(-pi,pi,numVals);
            theta = linspace(-pi/2,pi/2,numVals);
            %this is horrible coding, but I know theta from 
            %get rcs values for null plate and full plate
            
            %preallocate plates
            rcsFullTT = zeros(numVals);
            rcsFullPP = zeros(numVals);
            rcsNullTT = zeros(numVals) ;
            rcsNullPP = zeros(numVals) ;
            
            %make grid for mesh
            TT = repmat(theta,numVals,1);
            PP = repmat(phi.',1,numVals);
            
            %get frequency length
            freqLen = length(obj.freq);
            for currPlate = 1:freqLen
                lda = physconst('lightspeed')/obj.freq(currPlate);
                for ii= 1:length(phi)
                    for jj = 1:length(theta)
                        %change incident field
                        obj = obj.changeEinc(phi(ii),theta(ii));
                        %get full plate info first
                        plateF = obj.plateFull(currPlate).changeEinc(phi(jj),theta(ii));
                        [rcstt,rcstp,rcspt,rcspp] = plateF.getRCSVal(theta(ii),phi(jj));

                        rcsFullTT(ii,jj) = rcstt*lda^2; 
                        rcsFullPP(ii,jj) = rcspp*lda^2;
                        
                        %get null plate info next
                        plateN = obj.plateNull(currPlate).changeEinc(phi(jj),theta(ii));
                        [rcstt,rcstp,rcspt,rcspp] = plateN.getRCSVal(theta(ii),phi(jj));
                        rcsNullTT(ii,jj) = rcstt*lda^2; 
                        rcsNullPP(ii,jj) = rcspp*lda^2;
                    end
                end
                
                if(dbOn)
                    rcsFullTT = 10*log10(rcsFullTT);
                    rcsFullPP = 10*log10(rcsFullPP);
                    rcsNullTT = 10*log10(rcsNullTT);
                    rcsNullPP = 10*log10(rcsNullPP);
                end
                %plot phi-phi polarization first
                %get values for colarbar
                maxVal = max(max([rcsFullPP rcsNullPP]));
                minxVal = min(min([rcsFullPP rcsNullPP]));
                
                figure;
                subplot(1,2,1);
                s = imagesc(phi,theta,rcsFullPP,[minxVal, maxVal]);
                colorbar;
                title(['rcs_{\phi} plate freq= ' num2str(obj.freq(currPlate)*10^-9) 'Ghz'])
                xlabel('phi');ylabel('theta')
                
                subplot(1,2,2);                
                s = imagesc(phi,theta,rcsNullPP,[minxVal, maxVal]);
                colorbar;
                title(['rcs_{\phi} chaff freq= ' num2str(obj.freq(currPlate)*10^-9) 'Ghz'])
                xlabel('phi');ylabel('theta')
                
                %now plot theta-theta
                %get values for colarbar
                maxVal = max(max([rcsFullTT rcsNullTT]));
                minxVal = min(min([rcsFullTT rcsNullTT]));
                figure;
                subplot(1,2,1);
                s = imagesc(phi,theta,rcsFullTT,[minxVal, maxVal]);
                colorbar;
                title(['rcs_{\theta} plate freq= ' num2str(obj.freq(currPlate)*10^-9) 'Ghz'])
                xlabel('phi');ylabel('theta')
                
                subplot(1,2,2);
                s = imagesc(phi,theta,rcsNullTT,[minxVal,maxVal]);
                colorbar;
                title(['rcs_{\theta} chaff freq= ' num2str(obj.freq(currPlate)*10^-9) 'Ghz'])
                xlabel('phi');ylabel('theta')
                
                
            end

            
            %convert to cartesian coordinates

            
%             polarplot3d(rcsFull)
        end
        
        
        function plotMonoImproveSinglePhi(obj,phi,polar)
            %plots theta_theta and phi_phi monoRCS of both the metal and
            %whole plate
            %polar = 1: plots polar, polar=0 plots rectangular... defaults
            %to 1
            %listen, this isn't super smart... I'm assuming you're feeding
            %it a "correct" phi, I'm just using phi = 0 tbh
            if(nargin <3)
                polar = 1;
            end
            %get rcs values for null plate and full plate
            [theta,rcsTT, rcsPT, rcsTP, rcsPP] =  getMonoRCSVals(obj,phi);
            [theta,rcsTTFULL, rcsPTFULL, rcsTPFULL, rcsPPFULL] =  getMonoRCSValsFULL(obj,phi);
            
            %get optimized points
            [rcsTTOPT, rcsPTOPT, rcsTPOPT, rcsPPOPT] =  getMonoRCSValsOPT(obj,phi);

            freqLen = length(obj.freq);
            if(polar)
                for ii= 1:freqLen
                    figure;
                    %theta-theta polarization
                    subplot(1,2,1);
                        polarplot(theta,10*log10(rcsTT(ii,:)),theta,10*log10(rcsTTFULL(ii,:)) );
                        hold on
                        polarscatter(obj.thetaVals,10*log10(rcsTTOPT(ii,:))) %optimized theta points
                        title(['rcs tt(dB) freq= ' obj.freq(ii) 'Ghz'])
%                         xlabel('theta_{inc} in radians');ylabel('monorcs (dB)')
%                         ylim([min(10*log10(rcsTT(ii,:))) max(10*log10(rcsTT(ii,:)))])
                        legend('chaff','metal plate')
                    %phipolarizatoin    
                    subplot(1,2,2);
                        polarplot(theta,10*log10(rcsPP(ii,:)),theta,10*log10(rcsPPFULL(ii,:)));
                        title(['rcs pp(dB) freq= ' num2str(obj.freq(ii)*10^-9) 'Ghz'])
                        hold on                       
                        polarscatter(obj.thetaVals,10*log10(rcsPPOPT(ii,:))) %optimized theta points
                        title(['rcs_pp(dB) freq= ' num2str(obj.freq(ii)*10^-9) 'Ghz'])
%                         xlabel('theta_{inc} in radians');ylabel('monorcs (dB)')
%                         ylim([min(10*log10(rcsPP(ii,:))) max(10*log10(rcsPP(ii,:)))])
                        legend('chaff','metal plate')
                end
            else
                for ii= 1:freqLen
                    figure;
                    subplot(1,2,1);
                        plot(theta,10*log10(rcsTT(ii,:)),theta,10*log10(rcsTTFULL(ii,:)) );
                        hold on
                        scatter(obj.thetaVals,10*log10(rcsTTOPT(ii,:))) %optimized theta points
                        title(['rcs tt(dB) freq= ' num2str(obj.freq(ii)*10^-9) 'Ghz'])
                        xlabel('theta_{inc} in radians');ylabel('monorcs (dB)')
                        ylim([min(10*log10(rcsTT(ii,:))) max(10*log10(rcsTT(ii,:)))])
                        legend('chaff','metal plate')
                    subplot(1,2,2);
                        plot(theta,10*log10(rcsPP(ii,:)),theta,10*log10(rcsPPFULL(ii,:)) );
                        hold on
                        scatter(obj.thetaVals,10*log10(rcsPPOPT(ii,:))) %optimized theta points
                        title(['rcs pp(dB) freq= ' num2str(obj.freq(ii)*10^-9) 'Ghz'])
                        xlabel('theta_{inc} in radians');ylabel('monorcs (dB)')
                        ylim([min(10*log10(rcsPP(ii,:))) max(10*log10(rcsPP(ii,:)))])
                        legend('chaff','metal plate')
                end
            end
            
        end

        
        function [perfDif,rcsAvgNullMat, rcsAvgFullMat] = compareRCS(obj,numVals)
            %plots the rcs of null plate and the full plate
            %dbOn - plots in dB, defaults to off
            if(nargin<2)
                %defaults to 180 points in phi and theta
                numVals = 180;
            end
            %Loc = local... copied code from elsewhere in code and kept
            %convention
            phiLoc = linspace(0,pi/3,numVals);
            thetaLoc = linspace(0,pi/3,numVals);
            
            numThetaAngles = length(thetaLoc);
            numPhiAngles = length(phiLoc);
            %get frequency length
            freqLen = length(obj.freq);
            
            %initalize some stuff
            rcsAvgNullMat = zeros(numThetaAngles,numPhiAngles,freqLen);          
            
            rcsAvgFullMat = zeros(numThetaAngles,numPhiAngles,freqLen); 

            for pp = 1:freqLen %walk through frequencies
                lda = physconst('lightspeed')/obj.freq(pp);
                %walk through the frequencies
                for ii = 1:numThetaAngles
                    for jj = 1:numPhiAngles
                        obj = obj.changeEinc(phiLoc(jj),thetaLoc(ii));
                        %get rcs Null Plate
                        [rcstt,rcstp,rcspt,rcspp] = obj.plateNull(pp).getRCSVal(thetaLoc(ii),phiLoc(jj));
                        rcsAvgNullMat(ii,jj,pp) = lda^2*(rcstt+rcspp);
                        
                        %get rcs Full plate
                        [rcstt,rcstp,rcspt,rcspp] = obj.plateFull(pp).getRCSVal(thetaLoc(ii),phiLoc(jj));
                        rcsAvgFullMat(ii,jj,pp) =lda^2*(rcstt+rcspp);                      
                    end

                end
            end
            rcsAvgFull = mean(rcsAvgFullMat,'all');
            rcsAvgNull = mean(rcsAvgNullMat,'all');
                
%             %single value
%             rcsOneFreqNull = 0;
%             rcsAvgNullMat = 0;
%             
%             rcsOneFreqFull = 0;
%             rcsAvgFullMat = 0;
%             
%             count = 0;
%             for pp = 1:freqLen %walk through frequencies
%                 lda = physconst('lightspeed')/obj.freq(pp);
%                 %walk through the frequencies
%                 for ii = 1:numThetaAngles
%                     for jj = 1:numPhiAngles
%                         obj = obj.changeEinc(phiLoc(jj),thetaLoc(ii));
%                         %get rcs Null Plate
%                         [rcstt,rcstp,rcspt,rcspp] = obj.plateNull(pp).getRCSVal(thetaLoc(ii),phiLoc(jj));
%                         rcsOneFreqNull = rcsOneFreqNull+ (rcstt+rcspp)/2;
%                         
%                         %get rcs Full plate
%                         [rcstt,rcstp,rcspt,rcspp] = obj.plateFull(pp).getRCSVal(thetaLoc(ii),phiLoc(jj));
%                         rcsOneFreqFull = rcsOneFreqFull+ (rcstt+rcspp)/2;
%                         
%                         count = count+2;
%                     end
%                 end
%                 %doing it this way so only have to multiply by lda^2 at
%                 %the end
%                 rcsAvgNullMat =rcsAvgNullMat+lda^2*rcsOneFreqNull; %just add and divide at the end
%                 rcsOneFreqNull = 0;
% 
%                 rcsAvgFullMat =rcsAvgFullMat+lda^2*rcsOneFreqFull; %just add and divide at the end
%                 rcsOneFreqFull = 0;
%             end
%             rcsAvgFullMat =rcsAvgFullMat/ (2*freqLen*numThetaAngles*numPhiAngles);
%             rcsAvgNullMat =rcsAvgNullMat/ (2*freqLen*numThetaAngles*numPhiAngles);


% 
%             disp(['rcs_avg,Full = ' num2str(rcsAvgFullMat)])
%             disp(['rcs_avg,Null = ' num2str(rcsAvgNullMat)])
            
            %calculate percent difference
            diff = abs(rcsAvgFullMat-rcsAvgNullMat);
            avgT = (rcsAvgFullMat+rcsAvgNullMat)/2;
            perfDif = diff/avgT;
        end
        
        function [perfDif,rcsAvgNull,rcsAvgFull] = compareRCSTestedPoints(obj)

            %looks at the average RCS over defined range and sees if it
            %improved
            %This should return the same thing the optimizer sees, so we're
            %going to just average rcstt and rcspp over the frequency and
            %angle range
            %just want to check and make sure it's 'improving'
            thetaLoc = obj.thetaVals;
            phiLoc = obj.phiVals;
            
            numThetaAngles = length(thetaLoc);
            numPhiAngles = length(phiLoc);
            %get frequency length
            freqLen = length(obj.freq);
            
            rcsOneFreqNull = 0;
            rcsAvgNull = 0;
            
            rcsOneFreqFull = 0;
            rcsAvgFull = 0;
            
            count = 0;
            for pp = 1:freqLen %walk through frequencies
                lda = physconst('lightspeed')/obj.freq(pp);
                %walk through the frequencies
                for ii = 1:numThetaAngles
                    for jj = 1:numPhiAngles
                        obj = obj.changeEinc(phiLoc(jj),thetaLoc(ii));
                        %get rcs Null Plate
                        [rcstt,rcstp,rcspt,rcspp] = obj.plateNull(pp).getRCSVal(thetaLoc(ii),phiLoc(jj));
                        rcsOneFreqNull = rcsOneFreqNull+ (rcstt+rcspp);
                        
                        %get rcs Full plate
                        [rcstt,rcstp,rcspt,rcspp] = obj.plateFull(pp).getRCSVal(thetaLoc(ii),phiLoc(jj));
                        rcsOneFreqFull = rcsOneFreqFull+ (rcstt+rcspp);
                        
                        count = count+2;
                    end
                end
                %doing it this way so only have to multiply by lda^2 at
                %the end
                rcsAvgNull =rcsAvgNull+lda^2*rcsOneFreqNull; %just add and divide at the end
                rcsOneFreqNull = 0;

                rcsAvgFull =rcsAvgFull+lda^2*rcsOneFreqFull; %just add and divide at the end
                rcsOneFreqFull = 0;
            end
            rcsAvgFull =rcsAvgFull/ (2*freqLen*numThetaAngles*numPhiAngles);
            rcsAvgNull =rcsAvgNull/ (2*freqLen*numThetaAngles*numPhiAngles);



            disp(['rcs_avg,Full = ' num2str(rcsAvgFull)])
            disp(['rcs_avg,Null = ' num2str(rcsAvgNull)])
            
            %calculate percent difference
            diff = abs(rcsAvgFull-rcsAvgNull);
            avgT = (rcsAvgFull+rcsAvgNull)/2;
            perfDif = diff/avgT;
        end

        
%% ======================Plotting Current==================================
%plotting current
        function [JJx_theta, JJy_theta, JJx_phi, JJy_phi] = plotCurrent(obj)
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
            bxn_len = obj.getBxnSizeFull();
            
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
                edgex = [];
                edgey = [];
                edges = []; 
            end %if(obj.nullPos) 
            
                %get jjPlot
                %idea is to start with the null and add zeros where needed...
                %only have to add one zero per edges

                %---plotting stuff--------------
                %matlab won't let be rotate until after we get it so, have
                %to get and then can do .' which plotting expects
                freqLen = length(obj.freq)
                for ii =1:freqLen
                    plateN = obj.plateNull(ii);
                    JJ_theta = plateN.JJ_theta;
                    JJ_phi = plateN.JJ_phi;
                    [JJx_theta, JJy_theta] = obj.plotCurrentHelper(JJ_theta.', edgex, edgey, 'theta pol')
                    [JJx_phi, JJy_phi] = obj.plotCurrentHelper(JJ_phi.', edgex, edgey, 'phi pol')
                end
        end
        
        function [JxMat,JyMat] = plotCurrentHelper(obj,jjPlot, edgex, edgey, plotTitle)
            %we're going to have to do the same thing essential 2 times per
            %frequency (2 polarizations)
            %this seems perfect for a helper function!
            %jjPlot: current array in form [Jx;Jy] 
            %edgex: nullpoints so I know where to place 0 -> Bxn
            %edgey; nullpoints so I know where to place 0 -> Byn
            %   this are the upshifted edgesy DON'T START AT 1
            %plotTitletitle: for plotting
            
            %combine edges
            edges = [edgex edgey];
            
            %place 0 where ever needed
            for ii = 1:length(edges)
                edgeLoc = edges(ii);

                jjPlot  = [jjPlot(1:edgeLoc-1) 0 jjPlot(edgeLoc:end)];

            end
            
            %---plotting stuff--------------
            %from here code is the same as plate plotting
            %get full plate for x,y values
            plateF = obj.plateFull(1); %this is just w
            %initialize matrix
            NumEdges =  obj.getNumCellsRow -1; %number edges in a row is number of cells minus 1
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
            figure;subplot(1,2,1)
            imagesc(xx,yy,abs(JxMat));
%                 figure;surf(XX,YY,abs(JJMat))
            title(['Jx ', plotTitle]);
    
            %plot Jy
            
            %amount we have to go up to get Jy essentially, M in book
            yup = obj.getBxnSize(); %Bxn length of the nullplate

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
            subplot(1,2,2);
            imagesc(xx,yy,abs(JyMat));
%             figure;surf(XX,YY,abs(JJMat))
            title(['J_y ', plotTitle]);
            xlabel('x'); ylabel('y')

            
            
        end
        
        
%% ---------------------- plotting null position ------------------        
        function plotNullPos(obj,scaleFactor)
            %plotting what cells are getting nulled
            %Bxn so row = NumCell, col = NumEdge
            %1"=0.0245 meters

            if(nargin<2)
                scaleFactor =10^3; 
            end
            plateF = obj.plateFull(1);
            
            nullPosLocal = obj.nullPos; %have local value of nullPosLocal
                      
            del = plateF.Bxn_xx(2)-plateF.Bxn_xx(1); %get del 
            
            xx = linspace(0,obj.plateLength*scaleFactor,plateF.NumCells);
%             xx = linspace(0,obj.plateLength,plateF.NumCells);
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
                yGrid = 1/2+linspace(0,plateF.NumCells,10);
                
                plot(xGrid,yGrid,'r')
                plot(yGrid,xGrid,'r') %because its a square :P
            end
            
            figure;imagesc('XData',xx,'YData',yy,'CData',nullPlot) %plot
            title('Optimized Chaff')
            if(nargin<2) %for default it'll give label, otherwise need to do it post
                xlabel('mm')
                ylabel('mm')
            end
            axis([xx(1) xx(end) yy(1) yy(end)])
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
        

        
%% ======================Export stuff========================================
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
        
        function toRhino(obj,filename)
            %exports [plateLength,NumCells; nullPos] to rhino as a csv file
            plateLength = obj.plateLength;
            NumCells = obj.plateFull.NumCells;
            nullPosLoc = obj.nullPos;
            
            outMat = [plateLength,NumCells;nullPosLoc];
            csvwrite(filename,outMat);
        end
    end
        
%% static functions   
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
        
        function [rout,cout]= findSubMatrix(A,B)
            %use this to find a submatrix B in a larger matrix A
            % engine
            szA = size(A) ;
            szB = size(B) ;
            szS = szA - szB + 1 ;
            tf = false(szA) ;
            for r = 1:szS(1)
                for c = 1:szS(2)
                    tf(r,c) = isequal(A(r:r+szB(1)-1,c:c+szB(2)-1),B) ;
                end
            end
            [rout,cout] = find(tf);
        end


        
    end
    
end

