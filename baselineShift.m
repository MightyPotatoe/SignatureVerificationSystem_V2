function [ output ] = baselineShift( img )
rozmiar = size(img);
polowa = round(rozmiar(2)/2);
img1 = img(:,1:polowa);
img2 = img(:,polowa+1:rozmiar(2));

[cy1, cx1] = centerOfGravity(img1);
[cy2, cx2] = centerOfGravity(img2);

output = abs(cx2 - cx1);

end
