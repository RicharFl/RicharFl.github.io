%% PROBLEMA 1
% Para el PR04 reporte la grafica de la simulaci�n n�merica de la convoluci�n y compare con el resultado an�litico que 
% obtuvo para el problema 1, esto es, su pr�ctica tendr� que incluir una llamada a la funci�nn convconm y posteriormente 
% se tendr� que mostrar (mediante el Publish) la gr�fica tanto de las se�ales invlucradas como el resultado de 
% la convoluci�n, y en esta �ltima gr�ficara su resultado analitico, se tendr� que incluir el resultado analitico.
% REALICE LA CONVOLUCION DE LAS SIGUIENTES SE�ALES 
%%
%
%FIGURA 1 
figure;
h=@(t) ((-t+1).*((t>=0)&(t<1))+(t-1).*((t>=1)&(t<2)));
t = (-0.01:0.01:3);
s=h(t);
plot (t,s);
grid on; 
axis([-1 3 -1 2]);
ax=gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
ax.Box='off';

%%
%
%FIGURA 2 
figure;
x=@(t) 1.*((t>=0)&(t<1));
t = (-0.01:0.01:3);
s=x(t);
plot (t,s);
grid on; 
axis([-1 2 -1 2]);
ax=gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
ax.Box='off';
%%
%
%CONVOLUCION
h=@(t) ((-t+1).*((t>=0)&(t<1))+(t-1).*((t>=1)&(t<2)));
x=@(t) 1.*((t>=0)&(t<1));
f=@(t) ((-t.^2)/2 + t).*((t>=0)&(t<1))+ (t.^2 - 3.*t + 5/2).*((t>=1)&(t<2))+(-(t.^2)/2 + 2.*t - 3/2).*((t>=2)&(t<3));

convconm2(x, h, f, -1, 4, -1, 2, -1, 2, -1:.1:4);
%%
%
% RESULTADO ANALITICO 
%
%
% $$ (-t+1)[u(t)-u(t-1)]+(t-1)[u(t-1)-u(t-2)] * 1[u(t)-u(t-1)]
% = \left\{ \begin{array}{lcc}
%            0 & si & t<0
%              \\\frac{-t^2}{2}+t &  si & 0 < t < 1 \\
%             \\t^2 - 3t +\frac{5}{2} & si & 1<t<2
%             \\\frac{-t^2}{2} + 2t -\frac{3}{2} & si & 2<t<3
%             \\ 0 & si & t>3
%             \end{array}
%   \right.$






