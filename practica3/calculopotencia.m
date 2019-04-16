
function [potenciafinal] = calculopotencia(funcion,vdeint,a,b)
%Esta funcion calcula la potencia de una funcion considerando que sabemos
%que es de potencia
potenciafinal=(1/(a-b))*limit(int(funcion^{2},vdeint,b,a),vdeint,inf);
end
