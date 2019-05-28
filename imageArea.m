function [ output ] = imageArea( img )
rozmiar = size(img);
count = 0;
for i=1:1:rozmiar(1)
    for j=1:1:rozmiar(2)
        if img(i,j) == 1
            count = count +1;
        end
    end
end

output = count;

end

