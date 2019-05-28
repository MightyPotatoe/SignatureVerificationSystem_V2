function [output] = edgePoints(loadIm)
rozmiar = size(loadIm);

licznik = 0;

%noise reduction
%top-left corner
i = 1;
j = 1;
count = 0;
if 1 == loadIm(i,j+1) == loadIm(i,j)
    count = count + 1;
end
if 1 == loadIm(i+1,j+1)== loadIm(i,j)
    count = count + 1;
end
if 1 == loadIm(i+1,j) == loadIm(i,j)
    count = count + 1;
end

if count == 1 
    licznik = licznik+1;
end
%top-right corner
i = 1;
j = rozmiar(2);
count = 0;
if loadIm(i,j) == loadIm(i,j-1) == 1
    count = count + 1;
end
if loadIm(i,j) == loadIm(i+1,j-1) == 1
    count = count + 1;
end
if loadIm(i,j) == loadIm(i+1,j) == 1
    count = count + 1;
end

if count == 1 
    licznik = licznik+1;
end
    
%bot-left corner
i = rozmiar(1);
j = 1;
count = 0;
if loadIm(i,j) == loadIm(i-1,j) == 1
    count = count + 1;
end
if loadIm(i,j) == loadIm(i-1,j+1) == 1
    count = count + 1;
end
if loadIm(i,j) == loadIm(i,j+1) == 1
    count = count + 1;
end

if count == 1 
    licznik = licznik+1;
end

%bot-right corner
i = rozmiar(1);
j = rozmiar(2);
count = 0;
if loadIm(i,j) == loadIm(i,j-1) == 1
    count = count + 1;
end
if loadIm(i,j) == loadIm(i-1,j-1) == 1
    count = count + 1;
end
if loadIm(i,j) == loadIm(i-1,j) == 1
    count = count + 1;
end

if count == 1 
    licznik = licznik +1; 
end

%left edge
for i = 2:1:rozmiar(1)-1
    count = 0;
    if loadIm(i,1) == loadIm(i-1,1) == 1
        count = count+1;
    end
    if loadIm(i,1) == loadIm(i-1,2) == 1
        count = count+1;
    end
    if loadIm(i,1) == loadIm(i,2) == 1
        count = count+1;
    end
    if loadIm(i,1) == loadIm(i+1,2) == 1
        count = count+1;
    end
    if loadIm(i,1) == loadIm(i+1,1) == 1
      count = count+1;
    end
    if count == 1 
    licznik = licznik +1;;
    end           
end

%right edge
for i = 2:1:rozmiar(1)-1
    count = 0;
    if loadIm(i,rozmiar(2)) == loadIm(i-1,rozmiar(2)) == 1
        count = count+1;
    end
    if loadIm(i,rozmiar(2)) == loadIm(i-1,rozmiar(2)-1) ==1
        count = count+1;
    end
    if loadIm(i,rozmiar(2)) == loadIm(i,rozmiar(2)-1) == 1
        count = count+1;
    end
    if loadIm(i,rozmiar(2)) == loadIm(i+1,rozmiar(2)-1) == 1
        count = count+1;
    end
    if loadIm(i,rozmiar(2)) == loadIm(i+1,rozmiar(2)) == 1
      count = count+1;
    end
    if count == 1 
    licznik = licznik +1;
    end           
end

%top edge
for j = 2:1:rozmiar(2)-1
    count = 0;
    if loadIm(1,j) == loadIm(1,j-1) == 1
        count = count+1;
    end
    if loadIm(1,j) == loadIm(2,j-1) == 1
        count = count+1;
    end
    if loadIm(1,j) == loadIm(2,j) == 1
        count = count+1;
    end
    if loadIm(1,j) == loadIm(2,j+1) == 1
        count = count+1;
    end
    if loadIm(1,j) == loadIm(1,j+1) == 1
      count = count+1;
    end
    if count == 1 
    licznik = licznik +1;;
    end           
end

%bot edge
for j = 2:1:rozmiar(2)-1
    count = 0;
    if loadIm(rozmiar(1),j) == loadIm(rozmiar(1),j-1) == 1
        count = count+1;
    end
    if loadIm(rozmiar(1),j) == loadIm(rozmiar(1)-1,j-1) == 1
        count = count+1;
    end
    if loadIm(rozmiar(1),j) == loadIm(rozmiar(1)-1,j) == 1
        count = count+1;
    end
    if loadIm(rozmiar(1),j) == loadIm(rozmiar(1)-1,j+1) == 1
        count = count+1;
    end
    if loadIm(rozmiar(1),j) == loadIm(rozmiar(1),j+1) == 1
      count = count+1;
    end
    if count == 1 
    licznik = licznik +1;;
    end           
end

%reszta obrazu
for i = 2:1:rozmiar(1)-1;
    for j = 2:1:rozmiar(2)-1;
        count = 0;
        if loadIm(i,j) == loadIm(i-1,j+1) == 1
            count = count + 1;
        end
        if loadIm(i,j) == loadIm(i-1,j) == 1
            count = count + 1;
        end
        if loadIm(i,j) == loadIm(i-1,j-1) == 1
            count = count + 1;
        end
        if loadIm(i,j) == loadIm(i,j-1) == 1
            count = count + 1;
        end
        if loadIm(i,j) == loadIm(i+1,j-1) == 1
            count = count + 1;
        end
        if loadIm(i,j) == loadIm(i+1,j) == 1
            count = count + 1;
        end
        if loadIm(i,j) == loadIm(i+1,j+1) == 1
            count = count + 1;
        end
        if loadIm(i,j) == loadIm(i,j+1) == 1
            count = count + 1;
        end
        if count == 1
            licznik = licznik +1;
        end
    end
end

output = licznik;
end