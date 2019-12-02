function [B]= bnk(M)
%par

if((-1).^M)==1
    
    for n=0:1:((M/2)-1)
        w(n+1)=((2*pi)./M)*(n+1/2);
        for k=0:1:((M/2)-1)
            B(n+1,k+1)=2*sin(((M-1)./2-k)*w(n+1));
        end
    end
end

%impar
if((-1).^M)==-1
   
    for nn=0:1:(((M-1)./2)-1)% 5-1/2 -1 sera una matriz de 0 a 1 2x2
        w(nn+1)=(((2*pi)./M)*(nn+1/2));
        for kk=0:1:(((M-1)./2)-1)
            B(nn+1,kk+1)=2*sin((((M-1)./2)-kk)*w(nn+1));
        end
    end
end
 
% B
end