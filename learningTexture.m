
ciagUczacy= [1:1:48];            %wiersz
ciagUczacy=ciagUczacy(:);          %kolumna


indexUcz=1;
patch = 'C:\Users\tomas\Desktop\Sieci Neuronowe\Feature Extraction\baza\';
nazw = {'szymaniak\', 'bury\', 'grzybowski\', 'kirsza\', 'kwasnik\', 'markisz\', 'siama\', 'szwedo\', 'tarajka\'};

patch2 = [patch, nazw{1}];
ile = 136;
%--------------Ladowanie przykladowych podpisow do wektora uczacego
    for i=1:1:ile  %inkrementacja drugiego cz³onu nazwy
        fileName = [num2str(i),'.png'];
        tic
        data=textureFeature(patch2, fileName);
        toc
        data=data(:);
        ciagUczacy = cat(2, ciagUczacy, data);
                    
    end 
    
 ile = 26;   
for k = 2:1:9
    patch2 = [patch, nazw{k}];
    for i=1:1:ile  %inkrementacja drugiego cz³onu nazwy
        fileName = [num2str(i),'.png'];
        data=textureFeature(patch2, fileName);
        data=data(:);
        ciagUczacy = cat(2, ciagUczacy, data);
                    
    end
end
    koniec = size(ciagUczacy);
    ciagUczacy = ciagUczacy(:, 2:koniec(2));
    ciagWyjsc = zeros(2, 136 + 8*26); %inicjalizacja ciagu zadanych wyjsc (uzupelnienie zerami)
    
    %--------------tworzenie prawidlowego ciagu uczacego--
    for i = 1: 1: 136
        ciagWyjsc(1, i) = 1;
    end
    
    for i = 137: 1: 136 + 8*26
        ciagWyjsc(2, i) = 1;
    end
   %---------------------------------------------------------- 