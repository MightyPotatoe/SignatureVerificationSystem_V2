function [ output ] = localMaxProj( proj )
x = findpeaks(proj);
rozmiar = size(x);
output = rozmiar(2);
end

