function [output,pureWidth,pureHeight] = preprocessing(patch, Im)

loadIm = imread([patch Im]);    %wczytanie obrazu
loadIm = rgb2gray(loadIm);      %konwersja do skali szarosci
loadIm = imadjust(loadIm);      %poprawienie kontrastu



%----zmienne polozenia krawedzi objektu
imSize = size(loadIm);
left = imSize(2);
bottom =0;
right = 0;
top = imSize(1);
%----------------------------------
%----kadrowanie obrazu
for i = 1:1:imSize(1)
    for j = 1:1:imSize(2)
        if(loadIm(i,j) < 200)
            if(i > bottom)
                bottom = i;
            end
            
            if(i < top)
                   top = i;
            end
            
            if(j > right)
                right = j;
            end
            
            if(j < left)
                left = j;
            end
        end
    end
end
loadIm = loadIm(top:bottom, left:right);

loadIm = gray2bw(loadIm);
loadIm = noiseReduction(loadIm);
rozmiar = size(loadIm);
pureWidth = rozmiar(2);
pureHeight = rozmiar(1);
loadIm = widthNormalization(loadIm);
%loadIm = imresize(loadIm, [25 50]);
output = loadIm;
end