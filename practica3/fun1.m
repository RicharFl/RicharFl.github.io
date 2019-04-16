%Función que recibe como parametros a y w, los evalua
%Según la función a/(a^2+w^2)
function [F] = fun1 (w, a)
    F = a./(a.^2 + w.^2);
end