function [output] = closedLoops(EP, CP,sasiedzi)
EL = 0;
for i = 1:1:CP
EL = EL + (sasiedzi(i) -2);
end
output = 1 + (EL - EP)/2;

end