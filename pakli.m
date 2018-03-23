   classdef pakli 
    properties
      szin;
      ertek;
   end
   methods
      % konstruktor
        function B=pakli(szam)
            szinek={'pikk' 'treff' 'káró' 'kör'};
            ertekek={ '2' '3' '4' '5' '6' '7' ...
                '8' '9' '10' 'bubi' 'király' 'dáma' 'ász' };
            switch nargin
                case 0      % nincs input a fv hasában: pakli()
                    B.szin='';
                    B.ertek='';
                case 1      % 1 input a fv hasában: pakli(szám)
                    for i=1:szam        % random feltölti értékekkel szin-t és értéket-t
                        B.szin{i}=szinek(randi(size(szinek)));  % 1-4-ig random egész számot sorsol
                        B.ertek{i}=ertekek(randi(size(ertekek)));  % 1-13-ig random egész számot sorsol
                    end
                    if szam>3           % ha 4-nél több kártya van: random elhelyezek a 4 színbõl 1-1-et
                        r = randperm(szam);   % a számnak megfelelõ nagyságú random permutáció
                        B.szin{r(1)}='pikk';
                        B.szin{r(2)}='treff';
                        B.szin{r(3)}='káró';
                        B.szin{r(4)}='kör';
                    elseif szam==3      % ha 3 kártya van
                        r=randperm(numel(szinek));   % 1-4-ig random permutáció
                        for i=1:3
                            B.szin{i}=szinek{r(i)};     % az elsõ szín a random perm 1 eleménál lévõ értékhez tartozó szín-elem lesz
                        end
                        elseif szam==2  % ha 2 kártya van
                            r=randperm(numel(szinek));   
                            for i=1:2
                                B.szin{i}=szinek{r(i)};     % az elsõ szín a random perm 1 eleménál lévõ értékhez tartozó szín-elem lesz
                            end
                    else                % ha 1 kártya van
                                r=randperm(numel(szinek));   
                                B.szin{1}=szinek{r(1)};  
                    end
                otherwise % ha egynél több input van
                    error('nem megfelelõ input')    
            end
        end
   end   
end