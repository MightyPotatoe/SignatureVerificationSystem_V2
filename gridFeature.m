function [ tab ] = gridFeature( patch, img )
img = preprocessing(patch, img);
img = imresize(img,[48 156]);
max = 0;
for k=1:1:8
    for l =1:1:12;
        suma = 0;
        for i = 1:1:6
            for j = 1:1:13
               suma = suma + img(k*6-6+i,l*13-13+j);
            end
        end
        tab(k*l) = suma;
        if suma > max
            max = suma;
        end
    end
end

for z = 1:1:96
    tab(z) = tab(z)/max;
end

end



