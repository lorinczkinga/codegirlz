function a = atlag(x)

osszeg=0;   % osztand� az oszt�shoz
k=0;        % oszt� az oszt�shoz

for i=1:length(x)
   
    if mod(x(i),2)==1       % p�ratlan kiv�laszt�sa: ha kett�vel osztva 1 a marad�ka
       osszeg=osszeg+x(i);  % az osszeg-hez adja hozz� az �rt�ket
       k=k+1;               % n�veli az oszt�t
    end
    a = osszeg/k;
    
end