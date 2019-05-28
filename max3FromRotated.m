function [output] = max3FromRotated(img)
count = 0;


for deg = 1:1:71
    temp = imrotate(img,deg-31);
    rozmiar = size(temp);
    max(deg) =0;
    for i = 1:1:rozmiar(1)
        count = 0;
        for j = 1:1:rozmiar(2)-2
            if temp(i,j) == temp(i,j+1) == temp(i, j+2) == 1
                count = count + 1;
            end
        end
        if count > max(deg)
           max(deg) = count;
        end
    end
end

rozmiar = size(max);
biggest = 0;
for i = 1:1:rozmiar(2)
    if max(1,i) > biggest
        degree = i - 31;
        biggest = max(1,i);
    end
end

output = degree;



end