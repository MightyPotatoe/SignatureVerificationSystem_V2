function [ output, vertProj ] = maxVertProj( img )

rozmiar = size(img);

max = 0;
for i = 1:1:rozmiar(2)
    proj(i) = sum(img(:,i));
    if proj(i) > max
        max = proj(i);
        maxi=i;
    end
end

output = maxi;
vertProj = proj;
end

