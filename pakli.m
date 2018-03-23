   classdef pakli 
    properties
      szin;
      ertek;
   end
   methods
      % konstruktor
        function B=pakli(szam)
            szinek={'pikk' 'treff' 'k�r�' 'k�r'};
            ertekek={ '2' '3' '4' '5' '6' '7' ...
                '8' '9' '10' 'bubi' 'kir�ly' 'd�ma' '�sz' };
            switch nargin
                case 0      % nincs input a fv has�ban: pakli()
                    B.szin='';
                    B.ertek='';
                case 1      % 1 input a fv has�ban: pakli(sz�m)
                    for i=1:szam        % random felt�lti �rt�kekkel szin-t �s �rt�ket-t
                        B.szin{i}=szinek(randi(size(szinek)));  % 1-4-ig random eg�sz sz�mot sorsol
                        B.ertek{i}=ertekek(randi(size(ertekek)));  % 1-13-ig random eg�sz sz�mot sorsol
                    end
                    if szam>3           % ha 4-n�l t�bb k�rtya van: random elhelyezek a 4 sz�nb�l 1-1-et
                        r = randperm(szam);   % a sz�mnak megfelel� nagys�g� random permut�ci�
                        B.szin{r(1)}='pikk';
                        B.szin{r(2)}='treff';
                        B.szin{r(3)}='k�r�';
                        B.szin{r(4)}='k�r';
                    elseif szam==3      % ha 3 k�rtya van
                        r=randperm(numel(szinek));   % 1-4-ig random permut�ci�
                        for i=1:3
                            B.szin{i}=szinek{r(i)};     % az els� sz�n a random perm 1 elem�n�l l�v� �rt�khez tartoz� sz�n-elem lesz
                        end
                        elseif szam==2  % ha 2 k�rtya van
                            r=randperm(numel(szinek));   
                            for i=1:2
                                B.szin{i}=szinek{r(i)};     % az els� sz�n a random perm 1 elem�n�l l�v� �rt�khez tartoz� sz�n-elem lesz
                            end
                    else                % ha 1 k�rtya van
                                r=randperm(numel(szinek));   
                                B.szin{1}=szinek{r(1)};  
                    end
                otherwise % ha egyn�l t�bb input van
                    error('nem megfelel� input')    
            end
        end
   end   
end