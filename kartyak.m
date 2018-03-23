classdef kartyak
   properties
      szin;
      ertek;
   end
   methods
% %       konstruktor
        function A=kartyak(varargin)
            szinek={'pikk' 'treff' 'k�r�' 'k�r'};
            ertekek={ '2' '3' '4' '5' '6' '7' ...
                '8' '9' '10' 'bubi' 'kir�ly' 'd�ma' '�sz' };
            switch nargin
                case 0      % nincs input a fv has�ban: kartya()
                    A.szin='';
                    A.ertek='';
                case 1      % 1 input a fv has�ban: kartya('vmi')
                    error('nem megfelel� input')
                case 2      % 2 input
                    for i=1:4   % valamelyik input sz�nnel azonos�that�-e
                         if strcmp(varargin(1),szinek(i))==1 
                             for j=1:numel(ertekek)
                                if strcmp(varargin(2),ertekek(j))==1; % a m�sik input �rt�kkel azonos�that�-e
                                    A.szin=varargin(1);
                                    A.ertek=varargin(2);
                                end
                             end
                             
                         elseif strcmp(varargin(2),szinek(i))==1
                             for j=1:numel(ertekek)
                                if strcmp(varargin(1),ertekek(j))==1; % a m�sik input �rt�kkel azonos�that�-e
                                    A.szin=varargin(2);
                                    A.ertek=varargin(1);
                                end
                             end
                         end
                    end
                otherwise % ha kett�n�l t�bb input van
                    error('nem megfelel� input')    
            end
        end
   end   
end