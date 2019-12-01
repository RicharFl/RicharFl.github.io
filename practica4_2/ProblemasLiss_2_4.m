%% PROBLEMA 2
% Para el PR04 reporte la grafica de la simulación númerica de la convolución y compare con el resultado análitico que 
% obtuvo para el problema 3, esto es, su práctica tendrá que incluir una llamada a la funciónn convconm y posteriormente 
% se tendrá que mostrar (mediante el Publish) la gráfica tanto de las señales invlucradas como el resultado de 
% la convolución, y en esta última gráficara su resultado analitico, se tendrá que incluir el resultado analitico.
% REALICE LA CONVOLUCION DE LAS SIGUIENTES SEÑALES 
%%
%
%FIGURA 1
figure(1);
p=@(t)t.*(t<1)+(t>=1)-t.*(t<0)-(t>2);
t = (-0.01:0.01:3);
s=p(t);
plot (t,s);
grid on; 
axis([-1 4 -1 2]);
ax=gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
ax.Box='off';
%%
%
%FIGURA 2 
figure(2);
p = @(t) (t>=1)-(t>=3);
t = (0.999:0.01:3.1);
s=p(t);
plot (t,s);
grid on; 
axis([-1 4 -1 2]);
ax=gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
ax.Box='off';
%%
%
%CONVOLUCION
h = @(t) t.*(t<1)+(t>=1)-t.*(t<0)-(t>2);
x = @(t) ((t>=1) & (t<3));
f = @(t) (0.5-t+0.5*(2.^t)).*(t>=1 & t<2) + (t-(3/2)).*(t>=2 & t<3) + (-3+3*t-0.5*(2.^t)).*(t>=3 & t<4) + (5-t).*(t>=4 & t<5);
convconm2(x, h, f, -1, 6, -1, 2, -1, 5, 0:.1:6);
%%
%
% RESULTADO ANALITICO 
% $$t[u(t)-u(t-1)]+u(t-1)-u(t-2) * [u(t-1)-u(t-3)]
% = \left\{ \begin{array}{lcc}
%            0 & si & t<1
%             \\\frac{1}{2}-t+\frac{t^2}{2} &  si & 1 < t < 2 \\
%             \\ t-\frac{3}{2} & si & 2<t<3
%             \\-3+3t-\frac{1}{2}t^{2} & si & 3<t<4
%             \\5-t & si & 4<t<5
%             \\0 & si & t>5
%             \end{array}
%   \right.$

%% PROBLEMA 4 
% Para el PR06 reporte la grafica de la simulación númerica de la correalción y compare con el resultado análitico
% que obtuvo para el problema f), esto es, su práctica tendrá que incluir una llamada a la funciónn convconm y 
% posteriormente se tendrá que mostrar (mediante el Publish) la gráfica tanto de las señales involucradas como el 
% resultado de su correlación, y en esta última graficara su resultado analitico, se tendrá que incluir el resultado 
% analitico.
% Realice la correlacion de las señales en las figuras 3 y 4 
%%
%
%FIGURA 3
figure(3)
f= @(t) (t>=0)-2*(t>2)+2*(t>=4);
t= 0:0.001:4;
y= f(t);
plot (t,y);
grid on; 
axis([-1 5 -2 2]);
ax=gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
ax.Box='off';
%%
%
%FIGURA 4
figure(4)
f= @(t) (t>=0)-2*(t>=3)+2*(t>=4);
t= 0:0.001:4;
y= f(t);
plot (t,y);
grid on 
axis([-1 5 -2 2]);
ax=gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
ax.Box='off';
%%
%
%%RESULTADO CORRELACION
x = @(t) 1.*((t>=0 & t<3) - (t>=3 & t<4));
h = @(t) 1.*(-(t>=-4 & t<-2) + (t>=-2 & t<0));
f = @(t) (-4-t).*(t>=-4 & t<-2) + (t).*(t>=-2 & t<-1) + (3*t+2).*(t>=-1 & t<0) + (2+t).*(t>=0 & t<1) + (-3*t+6).*(t>=1 & t<2) + (2-t).*(t>=2 & t<3) + (-4+t).*(t>=3 & t<4);
convconm2(x, h, f, -5, 5, -2, 2, -3, 4, -4.25:.1:4.25)

%%
%
% RESULTADO ANALITICO 
% $$t[u(t)-u(t-1)]+u(t-1)-u(t-2) * [u(t-1)-u(t-3)]
% = \left\{ \begin{array}{lcc}
%            0 & si & t<-4
%             \\-4-t  &  si & -4 < t < -3 \\
%             \\ t+2 & si & -3<t<-2
%             \\3t+6 & si & -2<t<-1
%             \\-t+2 & si & -1<t<0
%             \\-3t+2 & si & 0<t<1
%             \\-t & si & 1<t<2
%             \\-4+t & si & 2<t<4
%             \\0 & si & t>4
%             \end{array}
%   \right.$
