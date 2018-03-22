function a = atlag(x)

osszeg=0;   % osztandó az osztáshoz
k=0;        % osztó az osztáshoz

for i=1:length(x)
   
    if mod(x(i),2)==1       % páratlan kiválasztása: ha kettõvel osztva 1 a maradéka
       osszeg=osszeg+x(i);  % az osszeg-hez adja hozzá az értéket
       k=k+1;               % növeli az osztót
    end
    a = osszeg/k;
    
end