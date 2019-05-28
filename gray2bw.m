function [out] = gray2bw(loadIm)

rozmiar = size(loadIm);
for i = 1:1:rozmiar(1)
    for j = 1:1:rozmiar(2)
        if loadIm(i,j) < 120
            loadIm2(i,j) = 1;
        else 
            loadIm2(i,j)= 0;
        end
    end
end
out = loadIm2;
end