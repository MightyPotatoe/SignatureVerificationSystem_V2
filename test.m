function [Y,Xf,Af] = test(X,~,~)
%MYNEURALNETWORKFUNCTION neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 03-May-2017 20:27:58.
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
x1_step1_xoffset = [31;188;0;44;16;2;16;2;4;-7;-30;11;26;6;121;39];
x1_step1_gain = [0.0487804878048781;0.00829875518672199;0.166666666666667;0.0408163265306122;0.0555555555555556;0.0138888888888889;0.181818181818182;0.0344827586206897;0.166666666666667;0.133333333333333;0.0285714285714286;0.0909090909090909;0.00900900900900901;0.00677966101694915;0.0132450331125828;0.0416666666666667];
x1_step1_ymin = -1;

% Layer 1
b1 = [-1.7570404049283668;1.2194784874039648;-0.37464830975584895;0.78647554232373251;-0.59698097523274951;-0.46782872091514061;1.0580415092965656;-1.232332690447729;1.4148890292446763;-1.6034352166965142];
IW1_1 = [0.16605216642151494 -0.485248429038452 0.59368977247927501 -0.58012231513477031 -0.32408708490734167 0.50902245499212795 0.5183094552349109 -0.16143231251452944 -0.15108749007063135 -0.21442784364411488 -0.023200311464512274 -0.47570757729099006 -0.16296399126122091 0.56335931755659596 0.46188162485810508 0.22909010849330275;-0.44270599963444857 -0.23546917471015022 -0.55098989060054848 0.64429571897736493 -0.25436840876707822 0.11095095772706419 -0.80043544046729487 0.45165060427881309 -0.23432168063694594 -0.30352639722917935 0.19487014792474924 0.66230319480012645 -0.15324252056145629 0.01510827831802322 0.23389985517130776 -0.062082250873526243;-0.065218564626946057 -0.22549024608305554 -0.82012416114139541 0.18039993325202211 0.011917805320342121 -0.47309105234710591 -0.10969201583020333 -0.012886762099991896 -0.86521891204706991 -0.72271995093668462 0.38383136036418986 0.18874524197151149 -0.71889611589400637 -0.17540367600617351 0.047896897960362755 -0.6790656563898898;-0.3404604085633704 -0.14830976007753402 0.49704257384007222 0.69946002406673147 -0.4256724728736534 -0.23822788714464299 -0.043174598975148477 0.099875364592208971 -0.27808999843298643 -0.3964799536439827 0.45112474410237108 -0.18712416863671921 -0.65402415981248663 0.23394951534507791 -0.47850503375253545 -0.73317816840814665;0.44305310747077997 -0.3599421454969377 -0.071419433063368079 -0.12461538389507505 -0.28928123759708474 0.14111932006953717 -0.32656471718715357 0.67532801370977069 -0.19901171464193429 -0.12111057381724595 0.14696011640662185 -0.68124215464389948 0.66165980897879362 0.67148002931774342 -0.33185710337251983 -0.22620229614467954;-0.36420901142182993 -0.57601644468326585 -0.3530182208187953 0.16534259366175894 0.55560691073164858 -0.35622400410411942 -0.2394579992379671 0.39676647903905676 0.043560682726614626 0.75581269874803736 -0.027124570555818382 0.42924428904057638 0.56329034584256776 0.39770996792768065 0.048455650448173147 -0.45038245561229973;0.36523922199071884 0.43909839038812515 0.50442890359146819 -0.39776950034766706 -0.24541946456553321 0.26067911419028089 0.52542736999882922 0.052546848169468474 -0.5774135104966811 -0.19946627494253491 0.29272129218552045 0.70632128039518427 -0.31576036784721145 -0.40523116261976089 -0.19286604007629646 0.099786425965668391;-0.4684786010354211 0.18424900968513841 -0.27328938516801943 0.14210124002789162 -0.36270961727250511 0.23512028601511886 0.40110161514651205 0.45584023616296532 0.32447010840464291 0.40307416361553128 -0.56395431028626197 0.455304618805632 0.78886668963266537 -0.10845800584652486 -0.4359784994956919 -0.32590074043709805;0.33890291736182337 0.56605589763591313 -0.35409377744331644 -0.40506563576982152 0.27640599895700829 0.0085711378987807594 0.1167023180501485 -0.72867655468000625 -0.52286311848296108 -0.451312244617248 -0.12916572457129094 -0.22153116530466654 -0.19636986716565066 -0.63327092556021891 0.55225201312262662 0.32932247397608599;-0.64026822003193917 0.049488697022003106 0.57502174339765133 0.23707420926600639 0.3752252666997275 0.18141231466224178 -0.60807910879614047 -0.34990212140328741 -0.51955208874937042 -0.3440271928879714 0.51259798724880368 -0.1744040627117627 0.29658700504705743 0.27564211880962941 0.43742458913646637 -0.35810665180622814];

% Layer 2
b2 = 1.1204764394105262;
LW2_1 = [-1.1234728406419443 0.21851161986992579 1.4456574836557117 2.1842370872641803 -1.3547457450148277 -0.90999758931807051 2.3869151084862752 -2.0056264934533918 1.9897551458296487 -0.37849108412301719];

% Output 1
y1_step1_xrows = 2;
y1_step1_remove = 1;
y1_step1_value = 0;
y1_step1_keep = 2;

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
    a2 = logsig_apply(repmat(b2,1,Q) + LW2_1*a1);
    
    % Output 1
    Y{1,ts} = removeconstantrows_reverse(a2,y1_step1_keep,y1_step1_remove,y1_step1_value,y1_step1_xrows);
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

% Sigmoid Positive Transfer Function
function a = logsig_apply(n)
a = 1 ./ (1 + exp(-n));
end

% Sigmoid Symmetric Transfer Function
function a = tansig_apply(n)
a = 2 ./ (1 + exp(-2*n)) - 1;
end

% Remove Constants Output Reverse-Processing Function
function x = removeconstantrows_reverse(y,settings_keep,settings_remove,settings_value,settings_xrows)
Q = size(y,2);
x = zeros(settings_xrows,Q);
x(settings_remove,:) = settings_value(:,ones(1,Q));
x(settings_keep,:) = y;
end
