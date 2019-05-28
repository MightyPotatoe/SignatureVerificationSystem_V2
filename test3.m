przyklady = 42;
patch = 'C:\Users\tomas\Desktop\Sieci Neuronowe\Feature Extraction\baza\test\';

for i = 1:1:przyklady
    p = preprocessing2(patch, [num2str(i), '.png']);
    p = p(:);
    y = siec1(p);
    wynik(1,i) = y(1);
    
    p = features(patch, [num2str(i), '.png']);
    p = p(:);
    y = siec2(p);
    wynik(2,i) = y(1);
    
    p = gridFeature(patch, [num2str(i), '.png']);
    p = p(:);
    y = siec3(p);
    wynik(5,i) = y(1);
    
    p = textureFeature(patch, [num2str(i), '.png']);
    p = p(:);
    y = siec4(p);
    wynik(4,i) = y(1);  
    
    p = obracanie(patch, [num2str(i), '.png']);
    p = p(:);
    y = siec5(p);
    wynik(3,i) = y(1);
    
end

cnt = 0;
for i = 1:1:przyklady
    if wynik(1,i) < 0.9
        cnt = cnt +1;
    end
    
    if wynik(2,i) < 0.9
       cnt = cnt +1;
    end
    
    if wynik(3,i) < 0.9
       cnt = cnt +1;
    end
    
    if wynik(4,i) < 0.9
       cnt = cnt +1;
    end
    
     if wynik(5,i) < 0.9
       cnt = cnt +1;
    end
    
  if cnt > 1
      wynik_ost(i) = 0;
  else
      wynik_ost(i) = 1;
  end
  cnt = 0;
end