%% testing reshaping
tt = 1:16
reshape(tt,4,4)

%% nulling corners
% %trying to figure out how to include corners in symmetric stuff
% % pixelSize = 4
% % close all
% lt = randi([0 1],4);
% lt = tril(lt)
% % lt = [0 0 0 0;...
% %       0 1 0 0;...
% %       0 0 0 0;...
% %       0 0 1 0];
% 
% pixelSize = 5;
% 
% 
% 
% % lt = tril(lt,-1).'+tril(lt);
% 
% %remake into cell matrix
% quadLen = length(lt);
% nullQuadCell = zeros(quadLen*pixelSize);
% 
% for ii =1:quadLen
%     for jj=1:quadLen
%         currII = pixelSize*(ii-1)+1;
%         currJJ = pixelSize*(jj-1)+1;
%         nullQuadCell(currII:currII+pixelSize-1,currJJ:currJJ+pixelSize-1) = lt(ii,jj);
%     end
% end
% %find first type of corner
%     %returns the smaller integer location ie) 1,1 wins 
%     cornerMat =  [0 1; 1 0];
%     [rout,cout]= findSubMatrix(nullQuadCell,cornerMat);
%     nullQuadCell(rout,cout)=1;
% 
% %deal with the other type 
%     cornerMat =  [1 0; 0 1];
%     [rout,cout]= findSubMatrix(nullQuadCell,cornerMat);
%     nullQuadCell(rout,cout+1)=1;
% figure; imagesc(nullQuadCell);title('normal corner fix')
% %have to deal with diagonals
% %the upper triangle is don't care, so other check didn't find this
% %ie, we're adding an edge case fix
% %want to deal 
% cornerMat = [0 0; 1 0];
% [rout,cout]= findSubMatrix(nullQuadCell,cornerMat);
% %check everything it found, but only deal with diagonal
% for ii = 1:length(rout)
%     if(rout(ii)==cout(ii))%at a diagonal
%         nullQuadCell(rout(ii),cout(ii))=1;
%     end
% end
% 
% 
% quadCell = tril(nullQuadCell,-1).'+tril(nullQuadCell);
% 
% %even problem
% nullCell = [quadCell fliplr(quadCell); flipud(quadCell) rot90(quadCell,2)];
% 
% %odd problem
% % nullCell = [quadCell, fliplr(quadCell(:,1:end-pixelSize));...
% %              flipud(quadCell(1:end-pixelSize,:)), rot90(quadCell(1:end-pixelSize,1:end-pixelSize),2)];
% 
% %deal with center ring
% %can get ring around center that has to be dealt with special
% %first corner fix
%     cornerMat =  [0 1; 1 0];
%     [rout,cout]= findSubMatrix(nullCell,cornerMat);
%     if(rout) %there's a ring
%         nullCell(rout(1),cout(1))=1;
%         nullCell(rout(2)+1,cout(2)+1) = 1;
%         %second corner fix
%         %only need to fix, if found problem :P
%         cornerMat =  [1 0; 0 1];
%         [rout,cout]= findSubMatrix(nullCell,cornerMat)
%         nullCell(rout(1),cout(1)+1)=1;
%         nullCell(rout(2)+1,cout(2)) = 1;
%     end
%     figure;imagesc(nullCell); 

%% triangle nulling - odd
%same as below, symmetric stuff but don't redoing middle line
% close all
% lt = [0 0 0 0;...
%       0 0 0 0;...
%       1 1 0 0;...
%       1 1 1 1];
% 
% quad = tril(lt,-1).'+lt;
% 
% chfNull = [quad, fliplr(quad(:,1:end-1));...
%            flipud(quad(1:end-1,:)), rot90(quad(1:end-1,1:end-1),2)];
% figure;
% imagesc(quad)
% figure; imagesc(chfNull)
%% figuring out triangle
%need to make symmetric chaff
%only fill upper triangle 
% close all
% lt = [0 0 0 0;...
%       0 0 0 0;...
%       1 1 0 0;...
%       1 1 1 1];
% 
% quad = tril(lt,-1).'+lt;
% 
% chfNull = [quad fliplr(quad); flipud(quad) rot90(quad,2)];
% figure;
% imagesc(quad)
% figure; imagesc(chfNull)
      

%% finding submatrix
% A = randi([0 1],10) 
% B =  [1 0; 0 1]
% % engine
% szA = size(A) ;
% szB = size(B) ;
% szS = szA - szB + 1 
% tf = false(szA) ;
% for r = 1:szS(1)
%     for c = 1:szS(2)
%         tf(r,c) = isequal(A(r:r+szB(1)-1,c:c+szB(2)-1),B) ;
%     end
% end
% [rout,cout] = find(tf)

%% calculating percentage difference
% V1 = 18.01;
% V2 = 9.59
% diff = V1-V2;
% avg = (V1+V2)/2
% perfDiff = diff/avg
%% figuring out ploting
% numVals = 5;
% theta = linspace(-pi/2,pi/2,numVals)
% phi = linspace(0,pi,numVals)
% TT = repmat(theta,numVals,1)
% PP = repmat(phi.',1,numVals)
% Vals = sin(TT).*sin(PP);
%  figure;mesh(TT,PP,Vals);

%% curent plotter bug testing
%something is wrong with current plotter so trying
% nullPosLoc = [2 2]
% row = nullPosLoc(:,1);
% col = nullPosLoc(:,2);
% 
% NumCells = 3;
% NumEdge = NumCells -1;
% bxn_len = NumCells*NumEdge;
% 
% nullLen = size(nullPosLoc,1)
% cellNum = zeros(1,nullLen)
% 
% %allocating maximum space needed for edges... -1 so that I can throw
% %anything I don't use away
% edgex = zeros(1,4*nullLen)-1; %[];
% edgey = zeros(1,4*nullLen)-1;%[];
% edgex_count = 1;
% edgey_count = 1;
% 
% innerNulls = nullPosLoc; %want to save nullPos right now
% [rowBad, colBad] = find(innerNulls==1); %right next to the edge
% innerNulls(rowBad,:) = [];
% 
% [rowBad,colBad] = find(innerNulls==NumCells);
% innerNulls(rowBad,:) = [];
% 
% for ii = 1:size(innerNulls,1)
%     rowVal = innerNulls(ii,1); colVal = innerNulls(ii,2); 
%     %edge 1,2 next to eachother and 3,4 next to eachother
%     edge1 = (rowVal-1)*(NumCells-1) +(colVal-1); %each time through removes one edge previous
%     edge2 = (rowVal-1)*(NumCells-1) + colVal;
%     edge3 = (colVal-1)*(NumCells-1) + (rowVal-1);
%     edge4 = (colVal-1)*(NumCells-1) +  rowVal;
% 
%     edgex(edgex_count:edgex_count+1) = [edge1 edge2];
%     edgey(edgey_count:edgey_count+1) = [edge3 edge4];
% 
%     edgex_count = edgex_count+2; %added 2 edges
%     edgey_count = edgey_count+2; %added 2 edges
% end
% 
% %throw out uncessary allocation 
% edgex(edgex==-1) = [];
% edgey(edgey==-1) = [];
% 
% %finally get values
% edgex = unique(edgex);
% edgey = unique(edgey);
% % edgeyshiftup = bxn_len-length(edgex)+edgey; 
% edgeyshiftup = bxn_len+edgey; 
% 
% edges = [edgex edgeyshiftup]; %store all edges in one spot

%% running balanis eq to play with comsol


%% generating big plates to play with
%% testing the plate RCS stuff
% NumCells = 50;
% len = 5;
% phiInc = 0; %60degre
% thetaInc = 0; %45degree
% %generate plate... timing for fun
% tic
% plateTest = thePlate(NumCells, len ,phiInc,thetaInc);
% plateTest = plateTest.generateMatrix();
% myTime= toc

% %% testing the plate RCS stuff
% cellsperlambda = 16; %15 %per thesis rec %upped to 16 because need even
% len = 1;
% 
% NumCells = ceil(len*cellsperlambda)
% 
% phiInc = 0; %60degre
% thetaInc = pi/4; %45degree
% %generate plate... timing for fun
% tic
% plate10 = thePlate(NumCells, len ,phiInc,thetaInc);
% plate10 = plate10.generateMatrix();
% myTime= toc

% %RCS stuff
% phi_s = pi/6;
% %get RCS - doing it this way to match paper
% numVals = 100;
% theta = linspace(0,2*pi,numVals);
% rcs = zeros(1,numVals);
% 
% 
% for ii = 1:numVals
%     rcs(ii) = plateTest.getRCSVal(theta(ii),phi_s);
% end
% 
% plot(theta*180/pi,10*log10(rcs/lambda^2))

%% some random stuff I don't remember what I was playing with
% this is whay you should always document sarah :P
% NumCells = 5;
% nullpos = [1 5; 2 3; 4 1; 3 3];
% 
% [rowBad, colBad] = find(nullpos==1) %right next to the edge
% nullpos(rowBad,:) = 0
% %testing out quarter division stuff
% NumCells = 10;
% NumCells = NumCells%/2
% %xx is a series of zeros and one, zero means null that position
% xx = ones(1,NumCells^2);
% xx(37) = 0;


% cellPos = find(xx==0) %positions x=0;
% %get into [row,col] coordinates
% row = floor((cellPos-1)./(NumCells))+1
% col = cellPos-(row-1).*(NumCells)

%% create chaffElt
%takes in nullPos (null position) and plate object...
% nullPos = []; %don't null anything to start

% %chf chaff element that holds two plate objects, one is the full plate
% %without any nulling. The second is after the appropriate edges have been
% %removed
% freq = .3*10^9;
% lambda = physconst('LightSpeed')/freq
% plateLength =1* lambda; %made a plate with size lambda :P
% thetaVals =0;linspace(0,pi/4,3);
% phiVals = 0;linspace(-pi/2,pi/2,4);
% chf = chaffElt(freq,plateLength,thetaVals, phiVals); 


%% null fun
% chfTemp = chf;
% row = [repmat(1:10,1,6) ].';
% col1 =  [ones(10,1); 2*ones(10,1); 3*ones(10,1); 4*ones(10,1); 5*ones(10,1); 6*ones(10,1)];
% 
% % row2 = [6:10 6:10 6:10 ].'
% col2 =  [15*ones(10,1); 16*ones(10,1); 17*ones(10,1); 18*ones(10,1); 19*ones(10,1); 20*ones(10,1)];
% 
% row = [row;row];
% col = [col1;col2];
% 
% nullPos = [row,col]
% % nullPos = [4 5; 4 6; 5 5; 5 6]
% chfTemp = chfTemp.nullNew(nullPos);
% chfTemp.plotNullPos
% chfTemp.plotCurrent
% 
% %set parameters to paper
% chfTemp = chfTemp.changeEinc(pi/6,pi/4);
% phi_s = pi/6;
% %get RCS - doing it this way to match paper
% numVals = 100;
% theta = linspace(0,2*pi,numVals);
% rcs = zeros(1,numVals);
% 
% 
% for ii = 1:numVals
%     rcs(ii) = chfTemp.plateNull.getRCSVal(theta(ii),phi_s);
% end
% 
% plot(theta*180/pi,10*log10(rcs/lambda^2))


%% optimize stuff - sym
% [chfNulled,pointsOnVal,RCSavg] = chf.maximizeRCSAvgSymm;
% 
% chfNulled.plotNullPos()
% chfNulled.plateNull.plotRCS(0);
% chfNulled.plateFull.plotRCS(0);

%% me muking around with nulling for comsol
% chfPlay = chf.changeEincX; %to get to HFSS inc wave
% %created chfPlay as a 1x1 plate and nulling things to put into comsol
% nullPlay = [[1:10].' 3*ones(10,1)];
% nullPlay = [nullPlay ; [1:10].' 4*ones(10,1)];
% nullPlay = [nullPlay; [1:10].' 7*ones(10,1)];
% nullPlay = [nullPlay; [1:10].' 8*ones(10,1)]
% % nullPlay = [nullPlay; 3*ones(10,1), [1:10].'; 4*ones(10,1), [1:10].']
% chfPlay = chfPlay.nullNew(nullPlay)
% chfPlay.plotNullPos
% chfPlay.plateNull.plotRCS(0);
% % chfPlay.plateFull.plotRCS(0);





%% optimize stuff
% [chfNulled,pointsOnVal,RCSavg] = chf.maximizeRCSAvg;
% 
% chfNulled.plotNullPos()
% chfNulled.plateNull.plotRCS(0);
% chfNulled.plateFull.plotRCS(0);



%% playing with nulling
% close all
% nullpos = [1 1; 9 5 ;3 2];
% 
% tempChf = chf;
% tempChf = tempChf.nullNew(nullpos)
% tempChf.plotNullPos

%% plotting fun
% NumCells = 5;
% NumEdges = 4;
% xx = repmat([1 2 3 4 ],1,NumCells) 
% yy = [ones(1,NumEdges), 2*ones(1,NumEdges), 3*ones(1,NumEdges), 4*ones(1,NumEdges),5*ones(1,NumEdges)]
% % jj= [1 2 3 4  ...
% %       2 3 4 5  ...
% %       3 4 5 6  ...
% %       4 5 6 7  ...
% %       5 6 7 8 ];
% jj= [1 1 1 1  ...
%      2 1 1 1  ...
%      1 1 1 1  ...
%      1 1 1 1  ...
%      1 1 1 1 ];
% XX = zeros(NumCells,NumEdges);
% YY = zeros(NumCells,NumEdges);
% JJMat = zeros(NumCells,NumEdges);
% 
% for row = 1:NumCells
%     for col = 1:NumEdges
%         XX(row,col) = xx(col+NumEdges*(row-1));
%         YY(row,col) = yy(col+NumEdges*(row-1));
%         JJMat(row,col) = jj( col+NumEdges*(row-1));
% %                     JJYMat(row,col) = obj.JJ(yup+col+NumEdges*(row-1));
%     end
% end
% 
%             figure;surf(XX,YY,abs(JJMat))
%             title(['J_x phiInc = ',num2str(0)]);
%             xlabel('x'); ylabel('y')