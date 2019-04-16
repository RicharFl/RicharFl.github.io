%f: recibe una función en forma de cadena. Por ejemplo: 'x^2'
%var: recibe la variable independiente en forma de cadena, por ejemplo 'x'
%in: recibe el inicio del dominio a graficar
%fin: recibe el fin del domino a graficar

function [] = grafReal(f,var, in, fin)
    
    it = [in:0.01:fin];
    
    y = subs(f, var, it);
    
    plot(it, y)
    title('string(f)')
    xlabel('string(var)')
    ylabel('string(f)')
    
end