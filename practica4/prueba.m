figure;
f=@(t)  (-4-t).*((t>=-4)&(t<-3))+(t+2).*((t>=-3)&(t<-1))+(4+3.*t).*((t>=-1)&(t<0))+(-t+4).*((t>=0)&(t<1))+(-t+2).*((t>=1)&(t<3))+(-4+t).*((t>=3)&(t<4));

t = (-06:0.01:6);
s=f(t);
plot (t,s);
grid on; 
axis([-6 6 -3 6]);
ax=gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
ax.Box='off';


