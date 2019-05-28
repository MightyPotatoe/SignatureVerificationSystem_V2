function [output] = localSlantAngle(img)
%obraca obraz od -30 do 70 deg i sumuje 70 najwiekszych wartosci
%histogramu. kat dla ktorego suma ta jest najwieksza to output

for deg = 1:1:71
    temp = imrotate(img,deg-31);
    rozmiar = size(temp);
    max(deg) =0;
    [x, vertProj] = maxVertProj(temp);
    rozmiar2 = size(vertProj);
    
    vertProj = sort(vertProj, 'descend');
    suma =0;
    for j = 1:1:71
        suma = suma + vertProj(j);
    end
    max(deg) = suma;            
end

biggest = 0;
for i = 1:1:71
    if max(i) > biggest
        biggest = max(i);
        output = i - 31;
        
end




end