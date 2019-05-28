function [output] = noiseReduction(loadIm)
rozmiar = size(loadIm);



%noise reduction
%top-left corner
i = 1;
j = 1;
count = 0;
if loadIm(i,j) == loadIm(i,j+1)
    count = count + 1;
end
if loadIm(i,j) == loadIm(i+1,j+1)
    count = count + 1;
end
if loadIm(i,j) == loadIm(i+1,j)
    count = count + 1;
end

if count < 1 
    loadIm(i,j) = not(loadIm(i,j));
end
%top-right corner
i = 1;
j = rozmiar(2);
count = 0;
if loadIm(i,j) == loadIm(i,j-1)
    count = count + 1;
end
if loadIm(i,j) == loadIm(i+1,j-1)
    count = count + 1;
end
if loadIm(i,j) == loadIm(i+1,j)
    count = count + 1;
end

if count < 1 
    loadIm(i,j) = not(loadIm(i,j));
end
    
%bot-left corner
i = rozmiar(1);
j = 1;
count = 0;
if loadIm(i,j) == loadIm(i-1,j)
    count = count + 1;
end
if loadIm(i,j) == loadIm(i-1,j+1)
    count = count + 1;
end
if loadIm(i,j) == loadIm(i,j+1)
    count = count + 1;
end

if count < 1 
    loadIm(i,j) = not(loadIm(i,j));
end

%bot-right corner
i = rozmiar(1);
j = rozmiar(2);
count = 0;
if loadIm(i,j) == loadIm(i,j-1)
    count = count + 1;
end
if loadIm(i,j) == loadIm(i-1,j-1)
    count = count + 1;
end
if loadIm(i,j) == loadIm(i-1,j)
    count = count + 1;
end

if count < 1 
    loadIm(i,j) = not(loadIm(i,j));
end

%left edge
for i = 2:1:rozmiar(1)-1
    count = 0;
    if loadIm(i,1) == loadIm(i-1,1)
        count = count+1;
    end
    if loadIm(i,1) == loadIm(i-1,2)
        count = count+1;
    end
    if loadIm(i,1) == loadIm(i,2)
        count = count+1;
    end
    if loadIm(i,1) == loadIm(i+1,2)
        count = count+1;
    end
    if loadIm(i,1) == loadIm(i+1,1)
      count = count+1;
    end
    if count < 1 
    loadIm(i,j) = not(loadIm(i,j));
    end           
end

%right edge
for i = 2:1:rozmiar(1)-1
    count = 0;
    if loadIm(i,rozmiar(2)) == loadIm(i-1,rozmiar(2))
        count = count+1;
    end
    if loadIm(i,rozmiar(2)) == loadIm(i-1,rozmiar(2)-1)
        count = count+1;
    end
    if loadIm(i,rozmiar(2)) == loadIm(i,rozmiar(2)-1)
        count = count+1;
    end
    if loadIm(i,rozmiar(2)) == loadIm(i+1,rozmiar(2)-1)
        count = count+1;
    end
    if loadIm(i,rozmiar(2)) == loadIm(i+1,rozmiar(2))
      count = count+1;
    end
    if count < 1 
    loadIm(i,j) = not(loadIm(i,j));
    end           
end

%top edge
for j = 2:1:rozmiar(2)-1
    count = 0;
    if loadIm(1,j) == loadIm(1,j-1)
        count = count+1;
    end
    if loadIm(1,j) == loadIm(2,j-1)
        count = count+1;
    end
    if loadIm(1,j) == loadIm(2,j)
        count = count+1;
    end
    if loadIm(1,j) == loadIm(2,j+1)
        count = count+1;
    end
    if loadIm(1,j) == loadIm(1,j+1)
      count = count+1;
    end
    if count < 1 
    loadIm(i,j) = not(loadIm(i,j));
    end           
end

%bot edge
for j = 2:1:rozmiar(2)-1
    count = 0;
    if loadIm(rozmiar(1),j) == loadIm(rozmiar(1),j-1)
        count = count+1;
    end
    if loadIm(rozmiar(1),j) == loadIm(rozmiar(1)-1,j-1)
        count = count+1;
    end
    if loadIm(rozmiar(1),j) == loadIm(rozmiar(1)-1,j)
        count = count+1;
    end
    if loadIm(rozmiar(1),j) == loadIm(rozmiar(1)-1,j+1)
        count = count+1;
    end
    if loadIm(rozmiar(1),j) == loadIm(rozmiar(1),j+1)
      count = count+1;
    end
    if count < 1 
    loadIm(i,j) = not(loadIm(i,j));
    end           
end

%reszta obrazu
for i = 2:1:rozmiar(1)-1;
    for j = 2:1:rozmiar(2)-1;
        count = 0;
        if loadIm(i,j) == loadIm(i-1,j+1)
            count = count + 1;
        end
        if loadIm(i,j) == loadIm(i-1,j)
            count = count + 1;
        end
        if loadIm(i,j) == loadIm(i-1,j-1)
            count = count + 1;
        end
        if loadIm(i,j) == loadIm(i,j-1)
            count = count + 1;
        end
        if loadIm(i,j) == loadIm(i+1,j-1)
            count = count + 1;
        end
        if loadIm(i,j) == loadIm(i+1,j)
            count = count + 1;
        end
        if loadIm(i,j) == loadIm(i+1,j+1)
            count = count + 1;
        end
        if loadIm(i,j) == loadIm(i,j+1)
            count = count + 1;
        end
        if count < 1
            loadIm(i,j) = not(loadIm(i,j));
        end
    end
end

output = loadIm;
end