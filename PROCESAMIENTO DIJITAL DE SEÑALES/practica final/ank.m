function [A]= ank(M)
%par , M numero de muestras

if((-1).^M)==1
    
for k=0:(M/2-1)
    w(k+1)=((2*pi)/M)*(k);                          %matlab no inicia en 0 (2*pi*k)/M ,, renglon -->
    
    for n=0:1:(M/2-1)
        A(k+1,n+1)=2*cos(((M-1)./2-(n))*w(k+1));    %columna
    end
    
end
end 

%Impar
if((-1).^M)==-1
    for kk=0:((M-1)/2)
         
        w(kk+1)=((2*pi)/M)*(kk);
         
        for nn=0:1:((M-1)/2)
          if(nn==(M-1)/2)                           % si llega al ultimo valor, osea el limite
             A(kk+1,nn+1)=1;                        % habra un 1 en la ultima columna, para saber
             
%Impar
         else
           A(kk+1,nn+1)=2.*cos(((M-1)./2-(nn)).*w(kk+1));   
         end
        end
    end
end        
%A
end