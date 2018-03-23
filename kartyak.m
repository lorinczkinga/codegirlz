classdef kartyak
   properties
      szin;
      ertek;
   end
   methods
% %       konstruktor
        function A=kartyak(varargin)
            szinek={'pikk' 'treff' 'káró' 'kör'};
            ertekek={ '2' '3' '4' '5' '6' '7' ...
                '8' '9' '10' 'bubi' 'király' 'dáma' 'ász' };
            switch nargin
                case 0      % nincs input a fv hasában: kartya()
                    A.szin='';
                    A.ertek='';
                case 1      % 1 input a fv hasában: kartya('vmi')
                    error('nem megfelelõ input')
                case 2      % 2 input
                    for i=1:4   % valamelyik input színnel azonosítható-e
                         if strcmp(varargin(1),szinek(i))==1 
                             for j=1:numel(ertekek)
                                if strcmp(varargin(2),ertekek(j))==1; % a másik input értékkel azonosítható-e
                                    A.szin=varargin(1);
                                    A.ertek=varargin(2);
                                end
                             end
                             
                         elseif strcmp(varargin(2),szinek(i))==1
                             for j=1:numel(ertekek)
                                if strcmp(varargin(1),ertekek(j))==1; % a másik input értékkel azonosítható-e
                                    A.szin=varargin(2);
                                    A.ertek=varargin(1);
                                end
                             end
                         end
                    end
                otherwise % ha kettõnél több input van
                    error('nem megfelelõ input')    
            end
        end
   end   
end