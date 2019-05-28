function [ output ] = textureFeature( patch, img )
img = preprocessing(patch, img);
img = imresize(img,[48 156]);
d1 = [0 0 0 0];
d2 = [0 0 0 0];
d3 = [0 0 0 0];
d4 = [0 0 0 0];
d5 = [0 0 0 0];
d6 = [0 0 0 0];
for i =1:1:24
    for j = 1:1:52-1
        if img(i,j) == img(i,j+1) && img(i,j) == 0
            d1(1) = d1(1) + 1;
        elseif img(i,j) == not(img(i,j+1)) && img(i,j) == 0
            d1(2) = d1(2) + 1;
        elseif img(i,j) == img(i,j+1) && img(i,j) == 1
            d1(4) = d1(4) + 1;
        elseif img(i,j) == not(img(i,j+1)) && img(i,j) == 1
            d1(3) = d1(3) + 1;
        end
    end
end

for i =25:1:48
    for j = 1:1:52-1
        if img(i,j) == img(i,j+1) && img(i,j) == 0
            d2(1) = d2(1) + 1;
        elseif img(i,j) == not(img(i,j+1)) && img(i,j) == 0
            d2(2) = d2(2) + 1;
        elseif img(i,j) == img(i,j+1) && img(i,j) == 1
            d2(4) = d2(4) + 1;
        elseif img(i,j) == not(img(i,j+1)) && img(i,j) == 1
            d2(3) = d2(3) + 1;
        end
    end
end

for i =1:1:24
    for j = 53:1:104-1
        if img(i,j) == img(i,j+1) && img(i,j) == 0
            d3(1) = d3(1) + 1;
        elseif img(i,j) == not(img(i,j+1)) && img(i,j) == 0
            d3(2) = d3(2) + 1;
        elseif img(i,j) == img(i,j+1) && img(i,j) == 1
            d3(4) = d3(4) + 1;
        elseif img(i,j) == not(img(i,j+1)) && img(i,j) == 1
            d3(3) = d3(3) + 1;
        end
    end
end
    
for i =25:1:48
    for j = 53:1:104-1
        if img(i,j) == img(i,j+1) && img(i,j) == 0
            d4(1) = d4(1) + 1;
        elseif img(i,j) == not(img(i,j+1)) && img(i,j) == 0
            d4(2) = d4(2) + 1;
        elseif img(i,j) == img(i,j+1) && img(i,j) == 1
            d4(4) = d4(4) + 1;
        elseif img(i,j) == not(img(i,j+1)) && img(i,j) == 1
            d4(3) = d4(3) + 1;
        end
    end
end

for i =1:1:24
    for j = 105:1:156-1
        if img(i,j) == img(i,j+1) && img(i,j) == 0
            d5(1) = d5(1) + 1;
        elseif img(i,j) == not(img(i,j+1)) && img(i,j) == 0
            d5(2) = d5(2) + 1;
        elseif img(i,j) == img(i,j+1) && img(i,j) == 1
            d5(4) = d5(4) + 1;
        elseif img(i,j) == not(img(i,j+1)) && img(i,j) == 1
            d5(3) = d5(3) + 1;
        end
    end
end
    
for i =25:1:48
    for j = 105:1:156-1
        if img(i,j) == img(i,j+1) && img(i,j) == 0
            d6(1) = d6(1) + 1;
        elseif img(i,j) == not(img(i,j+1)) && img(i,j) == 0
            d6(2) = d6(2) + 1;
        elseif img(i,j) == img(i,j+1) && img(i,j) == 1
            d6(4) = d6(4) + 1;
        elseif img(i,j) == not(img(i,j+1)) && img(i,j) == 1
            d6(3) = d6(3) + 1;
        end
    end
end

%gora dol
d13 = [0 0 0 0];
d14 = [0 0 0 0];
d15 = [0 0 0 0];
d16 = [0 0 0 0];
d17 = [0 0 0 0];
d18 = [0 0 0 0];
for j = 1:1:52
    for i =1:1:24-1
        if img(i,j) == img(i+1,j) && img(i,j) == 0
            d13(1) = d13(1) + 1;
        elseif img(i,j) == not(img(i+1,j)) && img(i,j) == 0
            d13(2) = d13(2) + 1;
        elseif img(i,j) == img(i+1,j) && img(i,j) == 1
            d13(4) = d13(4) + 1;
        elseif img(i,j) == not(img(i+1,j)) && img(i,j) == 1
            d13(3) = d13(3) + 1;
        end
    end
end

for j = 53:1:104
    for i =1:1:24-1
        if img(i,j) == img(i+1,j) && img(i,j) == 0
            d14(1) = d14(1) + 1;
        elseif img(i,j) == not(img(i+1,j)) && img(i,j) == 0
            d14(2) = d14(2) + 1;
        elseif img(i,j) == img(i+1,j) && img(i,j) == 1
            d14(4) = d14(4) + 1;
        elseif img(i,j) == not(img(i+1,j)) && img(i,j) == 1
            d14(3) = d14(3) + 1;
        end
    end
end

for j = 105:1:156
    for i =1:1:24-1
        if img(i,j) == img(i+1,j) && img(i,j) == 0
            d15(1) = d15(1) + 1;
        elseif img(i,j) == not(img(i+1,j)) && img(i,j) == 0
            d15(2) = d15(2) + 1;
        elseif img(i,j) == img(i+1,j) && img(i,j) == 1
            d15(4) = d15(4) + 1;
        elseif img(i,j) == not(img(i+1,j)) && img(i,j) == 1
            d15(3) = d15(3) + 1;
        end
    end
end
    
for j = 1:1:52
    for i =25:1:48-1
        if img(i,j) == img(i+1,j) && img(i,j) == 0
            d16(1) = d16(1) + 1;
        elseif img(i,j) == not(img(i+1,j)) && img(i,j) == 0
            d16(2) = d16(2) + 1;
        elseif img(i,j) == img(i+1,j) && img(i,j) == 1
            d16(4) = d16(4) + 1;
        elseif img(i,j) == not(img(i+1,j)) && img(i,j) == 1
            d16(3) = d16(3) + 1;
        end
    end
end

for j = 53:1:104
    for i =25:1:48-1
        if img(i,j) == img(i+1,j) && img(i,j) == 0
            d17(1) = d17(1) + 1;
        elseif img(i,j) == not(img(i+1,j)) && img(i,j) == 0
            d17(2) = d17(2) + 1;
        elseif img(i,j) == img(i+1,j) && img(i,j) == 1
            d17(4) = d17(4) + 1;
        elseif img(i,j) == not(img(i+1,j)) && img(i,j) == 1
            d17(3) = d17(3) + 1;
        end
    end
end

for j = 105:1:156
    for i =25:1:48-1
        if img(i,j) == img(i+1,j) && img(i,j) == 0
            d18(1) = d18(1) + 1;
        elseif img(i,j) == not(img(i+1,j)) && img(i,j) == 0
            d18(2) = d18(2) + 1;
        elseif img(i,j) == img(i+1,j) && img(i,j) == 1
            d18(4) = d18(4) + 1;
        elseif img(i,j) == not(img(i+1,j)) && img(i,j) == 1
            d18(3) = d18(3) + 1;
        end
    end
end


output = [d1, d2, d3, d4, d5, d6, d13, d14, d15, d16, d17, d18];
end

