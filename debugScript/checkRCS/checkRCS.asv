%% general stuff
freq = 8.*10^9; %hz, operating frequency
lda = physconst('LightSpeed')/freq;
plateLength = 2 * lda; %2 wavelengths
%angles to be optimized over
thetaVals = 0;
phiVals = 0;

%% first chaff
NumCells = 20;
pixelSize = 1;

% chf20 = chaffElt(freq,plateLength,thetaVals, phiVals,NumCells,pixelSize);
% chf20.plotMonoFlat(0);

%% second chaff
NumCells = 30;
pixelSize = 1;

% chf30 = chaffElt(freq,plateLength,thetaVals, phiVals,NumCells,pixelSize);
% chf30.plotMonoFlat(0);

%% third chaff
NumCells = 40;
pixelSize = 1;

chf40 = chaffElt(freq,plateLength,thetaVals, phiVals,NumCells,pixelSize);
[rcsNullTT40,rcsNullPP40,rcsFullTT40,rcsFullPP40] = chf40.plotMonoFlat(0);

%% get rcs out
[rcsNullTT20,rcsNullPP20,rcsFullTT20,rcsFullPP20] = chf20.plotMonoFlat(0);
[rcsNullTT30,rcsNullPP30,rcsFullTT30,rcsFullPP30] = chf30.plotMonoFlat(0);


%% check values
TT = sum(sum(rcsNullTT20-rcsNullTT30))
PP = sum(sum(rcsNullPP20-rcsNullPP30))