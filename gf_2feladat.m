clear
clc
cd D:\greenfox

abc='abcdefghijklmnopqrstuvwxyz';
szo='ZOO';
szo=lower(szo);     % nagybet�k cser�je kicsire
k=0;                % sz�ml�l�
szo_uj=szo;         

% Hanyszor szerepel az els� bet� a sz�vegben?
for i=1:numel(szo)
    if strcmp(szo(1),szo(i))==1
       k=k+1;       % sz�ml�l� (ez lesz az eltol�s m�rt�ke is)
    end
end

% Eltolas:
for i=1:numel(szo)
    for j=1:numel(abc)
        if strcmp(szo(i),abc(j))==1
            if j+k>numel(abc)   % kifut-e az abc-b�l
                szo_uj=strrep(szo_uj,szo(i),abc(j+k-numel(abc)));   % ha igen akkor kezdje el�lr�l
            else
                szo_uj=strrep(szo_uj,szo(i),abc(j+k));  % ha nem akkor csak sim�n el�g hozz�adni k-t
            end
        end
    end
end