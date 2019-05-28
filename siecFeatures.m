function [Y,Xf,Af] = siecFeatures(X,~,~)
%MYNEURALNETWORKFUNCTION neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 17-May-2017 18:07:04.
%
% [Y] = myNeuralNetworkFunction(X,~,~) takes these arguments:
%
%   X = 1xTS cell, 1 inputs over TS timsteps
%   Each X{1,ts} = 16xQ matrix, input #1 at timestep ts.
%
% and returns:
%   Y = 1xTS cell of 1 outputs over TS timesteps.
%   Each Y{1,ts} = 2xQ matrix, output #1 at timestep ts.
%
% where Q is number of samples (or series) and TS is the number of timesteps.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1_xoffset = [30;0;0;55;17;1;9;1;4;-30;-30;21;0;-388;40;18];
x1_step1_gain = [0.0289855072463768;0.00615384615384615;0.1;0.0714285714285714;0.0434782608695652;0.0137931034482759;0.0689655172413793;0.0227272727272727;0.181818181818182;0.0294117647058824;0.0285714285714286;0.00264200792602378;0.0444444444444444;0.00518806744487678;0.025;0.0833333333333333];
x1_step1_ymin = -1;

% Layer 1
b1 = [1.6149604880170416;0.96835800521282922;-1.2433805277194749;0.46131557840589621;-0.0047671489068052816;-0.70568543877506407;0.15828788260773521;0.23542900778090084;1.0881392420776008;2.2985486596342848];
IW1_1 = [-0.62975759991217428 -0.52145615165500736 -0.60010092795956804 0.30570826328017892 0.10602281554124759 0.46776179091443421 -0.25732157389881072 -0.19236148123974128 0.32508686873418574 -0.44527854966313279 -0.72353807570069517 -0.16088640453545924 -0.34338506529064605 0.40827851554610989 -0.057562996557007931 0.11793739943781402;-0.07257259304932312 0.20430566900661901 0.016433154935064719 0.26984507217789472 -0.14603674715862999 0.44786906665530696 0.6812071288225352 -0.67888722770903998 -0.5865898937738161 0.13930413052624185 0.50738652923026106 -0.046757598457797096 0.67118321157660066 0.4790000013052893 -0.3723749688917366 -0.36944336633706304;0.50907418345288802 -0.023227696634623634 -0.33444044466210565 0.98136771513662457 0.049913830252974856 0.065495069047370916 0.19322043300076083 0.42581919728936152 0.5968704706328396 -0.40267390354220356 -0.57512533379815989 -0.99078141924905938 0.078410443438397578 0.82137269119731482 0.3134915348428941 0.57163753949586005;-0.27120735830999365 0.74964455695337673 0.066796276881361763 0.27884970680563287 0.56099522328235185 -0.48386304812942665 0.44939674235538862 0.20944145807503531 -0.22023000357363226 0.18294025985445092 -0.56132417208193941 -0.5229532858217838 -0.52651731861248241 -0.042554608452986371 -0.52389295952922044 0.28680574180055363;-0.45766438525897302 0.079901162687515945 -0.40633342110885251 0.43630917308598549 -0.22796609728685954 -0.29102443832061914 0.29045427730240259 0.89013010352912536 -0.19083215514188748 0.35695241387607785 0.13281352407654468 0.074103608036890589 0.30374088536012162 0.30969440732228576 1.507534089907792 1.3053625031610925;-0.25524802453655909 1.1642322995027155 1.0262453875001034 0.76536874886151451 -0.74023362189898434 -0.0020534439607487209 0.252906645938832 -0.10631577205085964 -0.37880109165351067 0.085543794815912497 0.52996134225193081 -1.0068921071877777 0.74291851592265368 0.53368802700498386 0.68477413761451 0.51602327897900746;-0.043736021411046905 1.1857621648686143 0.18556558204294474 1.6582846113861274 0.062211130959938063 -0.64233076107634668 0.87647232817680609 -0.46829368214222339 0.71674826802233293 0.85435043275110112 0.45345430054000202 -0.91693086109938016 1.0190293082067652 1.0673782808322947 0.50291173711667003 -0.50624313096669349;0.40042902701276017 1.203685832964537 0.42224037338488396 1.0878252916663846 -0.06566385235712606 0.46785923546938718 0.59110132280478367 0.6665885462698542 1.1072595331649344 -0.13348911368342223 1.0167718463972957 -0.50911405407315047 1.2467625786140866 1.5752062366400805 0.44892698246668228 0.43073469666499725;0.3802715132362921 -0.17622815689641286 0.78680891076349158 0.84253157447361382 0.55094857993768542 0.5888783005587338 0.26906302040930025 0.84291242632810304 0.73017933671664936 -0.43236134312624325 0.043191974736622792 0.04365747252652815 -0.20413094690453013 -0.10188778748133474 0.53091866657359299 0.88677219923622908;0.43015076724245871 -1.0189712932283486 -0.14166559922141009 -1.9928523078935116 0.16683246896300488 0.28770653665186169 -1.2720075847696528 -0.34809870236302276 -0.96831768359163317 -0.63879019665544168 -0.63261044408368339 1.1938620917725262 -0.67364269186948977 -2.1683679983939625 -0.10664692598327469 -0.85246640169432564];

% Layer 2
b2 = [-1.4095469998158427;1.4894771229960391];
LW2_1 = [-0.22218373167107941 0.68192903124796544 0.67499051377024 0.021282928943251518 0.61892796324051524 1.9099929725355609 1.4654035209965268 1.8526566799625153 0.71354906245804195 -2.1329287331845901;0.20149068846623677 0.18504800430952986 -1.7069284585310955 -0.78527155432471185 -1.4192543250074867 -1.397907160472696 -2.5154648615791984 -1.8827408392064109 -0.58605063453496753 3.3949495776532967];

% ===== SIMULATION ========

% Format Input Arguments
isCellX = iscell(X);
if ~isCellX, X = {X}; end;

% Dimensions
TS = size(X,2); % timesteps
if ~isempty(X)
    Q = size(X{1},2); % samples/series
else
    Q = 0;
end

% Allocate Outputs
Y = cell(1,TS);

% Time loop
for ts=1:TS
    
    % Input 1
    Xp1 = mapminmax_apply(X{1,ts},x1_step1_gain,x1_step1_xoffset,x1_step1_ymin);
    
    % Layer 1
    a1 = tansig_apply(repmat(b1,1,Q) + IW1_1*Xp1);
    
    % Layer 2
    a2 = softmax_apply(repmat(b2,1,Q) + LW2_1*a1);
    
    % Output 1
    Y{1,ts} = a2;
end

% Final Delay States
Xf = cell(1,0);
Af = cell(2,0);

% Format Output Arguments
if ~isCellX, Y = cell2mat(Y); end
end

% ===== MODULE FUNCTIONS ========

% Map Minimum and Maximum Input Processing Function
function y = mapminmax_apply(x,settings_gain,settings_xoffset,settings_ymin)
y = bsxfun(@minus,x,settings_xoffset);
y = bsxfun(@times,y,settings_gain);
y = bsxfun(@plus,y,settings_ymin);
end

% Competitive Soft Transfer Function
function a = softmax_apply(n)
nmax = max(n,[],1);
n = bsxfun(@minus,n,nmax);
numer = exp(n);
denom = sum(numer,1);
denom(denom == 0) = 1;
a = bsxfun(@rdivide,numer,denom);
end

% Sigmoid Symmetric Transfer Function
function a = tansig_apply(n)
a = 2 ./ (1 + exp(-2*n)) - 1;
end