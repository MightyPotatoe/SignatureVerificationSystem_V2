function [output, sasiedzi] = crossedPoints(loadIm)
rozmiar = size(loadIm);

licznik = 0;
sasiedzi = 0;
%noise reduction
%top-left corner
i = 1;
j = 1;
count = 0;
if loadIm(i,j+1) == loadIm(i,j) && loadIm(i,j) == 1
    count = count + 1;
end
if loadIm(i+1,j+1)== loadIm(i,j) && loadIm(i,j) == 1
    count = count + 1;
end
if loadIm(i+1,j) == loadIm(i,j)  && loadIm(i,j) == 1
    count = count + 1;
end

if count > 2 
    licznik = licznik+1;
    sasiedzi = cat(2, sasiedzi, count);
end
%top-right corner
i = 1;
j = rozmiar(2);
count = 0;
if loadIm(i,j) == loadIm(i,j-1)  && loadIm(i,j) == 1
    count = count + 1;
end
if loadIm(i,j) == loadIm(i+1,j-1)  && loadIm(i,j) == 1
    count = count + 1;
end
if loadIm(i,j) == loadIm(i+1,j)  && loadIm(i,j) == 1
    count = count + 1;
end

if count > 2 
    licznik = licznik+1;
    sasiedzi = cat(2, sasiedzi, count);
end
    
%bot-left corner
i = rozmiar(1);
j = 1;
count = 0;
if loadIm(i,j) == loadIm(i-1,j)  && loadIm(i,j) == 1
    count = count + 1;
end
if loadIm(i,j) == loadIm(i-1,j+1)  && loadIm(i,j) == 1
    count = count + 1;
end
if loadIm(i,j) == loadIm(i,j+1)  && loadIm(i,j) == 1
    count = count + 1;
end

if count > 2 
    licznik = licznik+1;
    sasiedzi = cat(2, sasiedzi, count);
end

%bot-right corner
i = rozmiar(1);
j = rozmiar(2);
count = 0;
if loadIm(i,j) == loadIm(i,j-1)  && loadIm(i,j) == 1
    count = count + 1;
end
if loadIm(i,j) == loadIm(i-1,j-1)  && loadIm(i,j) == 1
    count = count + 1;
end
if loadIm(i,j) == loadIm(i-1,j)  && loadIm(i,j) == 1
    count = count + 1;
end

if count > 2 
    licznik = licznik +1;
    sasiedzi = cat(2, sasiedzi, count);
end

%left edge
for i = 2:1:rozmiar(1)-1
    count = 0;
    if loadIm(i,1) == loadIm(i-1,1)  && loadIm(i,j) == 1
        count = count+1;
    end
    if loadIm(i,1) == loadIm(i-1,2)  && loadIm(i,j) == 1
        count = count+1;
    end
    if loadIm(i,1) == loadIm(i,2)  && loadIm(i,j) == 1
        count = count+1;
    end
    if loadIm(i,1) == loadIm(i+1,2)  && loadIm(i,j) == 1
        count = count+1;
    end
    if loadIm(i,1) == loadIm(i+1,1)  && loadIm(i,j) == 1
      count = count+1;
    end
    if count > 2 
    licznik = licznik +1;
    sasiedzi = cat(2, sasiedzi, count);
    end           
end

%right edge
for i = 2:1:rozmiar(1)-1
    count = 0;
    if loadIm(i,rozmiar(2)) == loadIm(i-1,rozmiar(2))  && loadIm(i,j) == 1
        count = count+1;
    end
    if loadIm(i,rozmiar(2)) == loadIm(i-1,rozmiar(2)-1)  && loadIm(i,j) == 1
        count = count+1;
    end
    if loadIm(i,rozmiar(2)) == loadIm(i,rozmiar(2)-1)  && loadIm(i,j) == 1
        count = count+1;
    end
    if loadIm(i,rozmiar(2)) == loadIm(i+1,rozmiar(2)-1)  && loadIm(i,j) == 1
        count = count+1;
    end
    if loadIm(i,rozmiar(2)) == loadIm(i+1,rozmiar(2))  && loadIm(i,j) == 1
      count = count+1;
    end
    if count > 2 
    licznik = licznik +1;
    sasiedzi = cat(2, sasiedzi, count);
    end           
end

%top edge
for j = 2:1:rozmiar(2)-1
    count = 0;
    if loadIm(1,j) == loadIm(1,j-1)  && loadIm(i,j) == 1
        count = count+1;
    end
    if loadIm(1,j) == loadIm(2,j-1)  && loadIm(i,j) == 1
        count = count+1;
    end
    if loadIm(1,j) == loadIm(2,j)  && loadIm(i,j) == 1
        count = count+1;
    end
    if loadIm(1,j) == loadIm(2,j+1)  && loadIm(i,j) == 1
        count = count+1;
    end
    if loadIm(1,j) == loadIm(1,j+1)  && loadIm(i,j) == 1
      count = count+1;
    end
    if count > 2 
    licznik = licznik +1;
    sasiedzi = cat(2, sasiedzi, count);
    end           
end

%bot edge
for j = 2:1:rozmiar(2)-1
    count = 0;
    if loadIm(rozmiar(1),j) == loadIm(rozmiar(1),j-1)  && loadIm(i,j) == 1
        count = count+1;
    end
    if loadIm(rozmiar(1),j) == loadIm(rozmiar(1)-1,j-1)  && loadIm(i,j) == 1
        count = count+1;
    end
    if loadIm(rozmiar(1),j) == loadIm(rozmiar(1)-1,j)  && loadIm(i,j) == 1
        count = count+1;
    end
    if loadIm(rozmiar(1),j) == loadIm(rozmiar(1)-1,j+1)  && loadIm(i,j) == 1
        count = count+1;
    end
    if loadIm(rozmiar(1),j) == loadIm(rozmiar(1),j+1)  && loadIm(i,j) == 1
      count = count+1;
    end
    if count > 2 
    licznik = licznik +1;
    sasiedzi = cat(2, sasiedzi, count);
    end           
end

%reszta obrazu
for i = 2:1:rozmiar(1)-1;
    for j = 2:1:rozmiar(2)-1;
        count = 0;
        if loadIm(i,j) == loadIm(i-1,j+1)  && loadIm(i,j) == 1
            count = count + 1;
        end
        if loadIm(i,j) == loadIm(i-1,j)  && loadIm(i,j) == 1
            count = count + 1;
        end
        if loadIm(i,j) == loadIm(i-1,j-1)  && loadIm(i,j) == 1
            count = count + 1;
        end
        if loadIm(i,j) == loadIm(i,j-1)  && loadIm(i,j) == 1
            count = count + 1;
        end
        if loadIm(i,j) == loadIm(i+1,j-1)  && loadIm(i,j) == 1
            count = count + 1;
        end
        if loadIm(i,j) == loadIm(i+1,j)  && loadIm(i,j) == 1
            count = count + 1;
        end
        if loadIm(i,j) == loadIm(i+1,j+1)  && loadIm(i,j) == 1
            count = count + 1;
        end
        if loadIm(i,j) == loadIm(i,j+1)  && loadIm(i,j) == 1
            count = count + 1;
        end
        if count > 2
            licznik = licznik +1;
            sasiedzi = cat(2, sasiedzi, count);
        end
    end
end
output = licznik;
sasiedzi = sasiedzi(2:length(sasiedzi));
end