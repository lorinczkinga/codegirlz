clear
clc
cd D:\greenfox

abc='abcdefghijklmnopqrstuvwxyz';
szo='ZOO';
szo=lower(szo);     % nagybetûk cseréje kicsire
k=0;                % számláló
szo_uj=szo;         

% Hanyszor szerepel az elsõ betû a szövegben?
for i=1:numel(szo)
    if strcmp(szo(1),szo(i))==1
       k=k+1;       % számláló (ez lesz az eltolás mértéke is)
    end
end

% Eltolas:
for i=1:numel(szo)
    for j=1:numel(abc)
        if strcmp(szo(i),abc(j))==1
            if j+k>numel(abc)   % kifut-e az abc-bõl
                szo_uj=strrep(szo_uj,szo(i),abc(j+k-numel(abc)));   % ha igen akkor kezdje elölrõl
            else
                szo_uj=strrep(szo_uj,szo(i),abc(j+k));  % ha nem akkor csak simán elég hozzáadni k-t
            end
        end
    end
end