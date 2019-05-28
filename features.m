function [output] = features(patch, input)

[img, pureWidth, pureHeight] = preprocessing(patch, input);

features(1) = sigHeight(img);
features(2) = imageArea(img);
features(3) = baselineShift(img);
[vertcent, horcent] = centerOfGravity(img);
features(4) = vertcent;
features(5) = horcent;
[maxVert, vertProj] = maxVertProj(img);
features(6) = maxVert;
features(7) = localMaxProj(vertProj);
[maxHor, horProj] = maxHorProj(img);
features(8) = maxHor;
features(9) = localMaxProj(horProj);
features(10) = max3FromRotated(img); %globalSlantAngle
features(11) = localSlantAngle(img);
features(12) = edgePoints(img);
[CP, sasiedzi] = crossedPoints(img);
features(13) = CP;
features(14) = closedLoops(features(12),CP,sasiedzi);
features(15) = pureWidth;
features(16) = pureHeight;

output = features;
end


