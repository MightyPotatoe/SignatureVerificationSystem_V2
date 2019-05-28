function [output] = widthNormalization(img)
rozmiar = size(img);
ratio = rozmiar(1)/rozmiar(2);
output = imresize(img,[ratio*150 150]);
end