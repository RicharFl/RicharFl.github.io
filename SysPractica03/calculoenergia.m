
function [energiafinal] = calculoenergia(funcion,vdeint,a,b)
%Esta funcion regresa el calculo de energia de una funcion, en cierto
%rango, teniendo en cuenta que conocemos que es una funcion de energia
energiafinal=limit(int(funcion^{2},vdeint,a,b),vdeint,inf);
end

