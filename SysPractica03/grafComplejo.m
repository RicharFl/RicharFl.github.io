function [] = grafComplejo(f, var, in, fin)

    it = [in:0.01:fin];
    
    z = subs(f, var, it);
    
    plot3(it,real(z),imag(z))
    title('string(f)')
    xlabel('string(var)')
    ylabel(['Re'])
    zlabel(['Im'])
    grid on

    %figure(2)
    %plot(it, abs(z))
    %title(['||' f '||'])
    %xlabel(var)
    %ylabel(['||F(' var ')||'])
    
    %figure(3)
    %plot(it, angle(z))
    %title(['<' f ''])
    %xlabel(var)
    %ylabel(['<F(' var ')'])
end