function [ output, outputx] = centerOfGravity( img )

rozmiar = size(img);
sum1 = 0;
gora = 0;
for y = 1:1:rozmiar(2)
    gora = gora + y*sum1;
    sum1=0;
    for x = 1:1:rozmiar(1)
        sum1 = sum1 + img(x,y);
    end
end


sum2 = 0;
dol = 0;
for y = 1:1:rozmiar(2)
    dol = dol + sum2;
    sum2=0;
    for x = 1:1:rozmiar(1)
        sum2 = sum2 + img(x,y);
    end
end

Cy = gora/dol;
output = round(Cy)-1;


sum1 = 0;
gora = 0;
for x = 1:1:rozmiar(1)
    gora = gora + x*sum1;
    sum1=0;
    for y = 1:1:rozmiar(2)
        sum1 = sum1 + img(x,y);
    end
end


sum2 = 0;
dol = 0;
for x = 1:1:rozmiar(1)
    dol = dol + sum2;
    sum2=0;
    for y = 1:1:rozmiar(2)
        sum2 = sum2 + img(x,y);
    end
end
Cx = gora/dol;
outputx=round(Cx)-1;



end

