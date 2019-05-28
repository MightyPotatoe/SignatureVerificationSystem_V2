function[output] = obracanie(patch ,imge)
img = preprocessing(patch, imge);
 output = 0;
for i = 30:30:360;
    temp = imrotate(img,i);
    x = moment(temp);
    output = cat(2,output,x);
end
   rozmiar = size(output);
   output = output(1,2:rozmiar(2));
end
