%% Práctica 3: Señales en Tiempo Continuo

%% Integrantes
%
% Flores Lima José Ricardo
%
% Medina Bautista Sergio Cristian
%
% Plata Montejano Lissete

%% Objetivos
% * Conocer métodos básicos de integración numérica
% * Manipulación de instrucciones en MATLAB
% * Simular convoluciones y correlaciones de señales continuas

%% Introducción
% Formulas cerradas de Newton-Cotes Compuestas
%
% A partir de la Regla del Trapecio y la Regla de Simpson podemos realizar
% mejores aproximaciones dadas ciertas condiciones. A continuación
% definiremos la Regla Compuesta del Trapecio y la Regla Compuesta de
% Simpson.
%
% * Regla Compuesta del Trapecio
% 
% La idea es subdividir el intervalo de integración en varios intervalos y aplicar en cada
% uno de ellos la regla del trapecio. El resultado sería una aproximación a
% partir de la suma de áreas de los trapecios.
%
% Sabiendo que los puntos intermedios serán evaluados 2 veces, obtenemos la
% siguiente formula:
%
% $$ \int_a^bf(x)dx = \frac{h}{2}[f(a)+2\sum_{j=1}^{n-1}f(x_i)+f(b)] -
% \frac{b-a}{12}h^2f^{''}(u)\hspace{5mm}u\in(a,b) $$
%
% Donde:
%%
% * $$ n $$ = número de intervalos
% * $$ h = \frac{b-a}{n} $$
% * $$ xj = a + jh, \hspace{5mm}j = 0,1,2,...,n $$
%
% Y el último termino es un ajuste que permite la igualdad entre la
% integración analítica y la Regla Compuesta del Trapecio
%
% Ejemplo para $$ e^{-x^2} $$ con $$ n = 10 $$ en [-1, 1]
%%
% * $$ n = 10 $$
% * $$ h = \frac{1-(-1)}{10} = 0.2 $$
% * $$ xj = -1 + 0.2*j, \hspace{5mm}j = 0,1,2,...,10 $$
%
% $$ \int_{-1}^1e^{-x^2}dx = \frac{0.2}{2}[e^{-(-1)^2}+2\sum_{j=1}^{n-1}e^{-(x_i)^2}+e^{-(1)^2}] - \frac{1-(-1)}{12}(0.2)^2[-2*e^{-u^2}(1-2u^2)]$$
%
% $$ \int_{-1}^1e^{-x^2}dx = 1.4887 + 0.0133e^{-u^2}(1-2u), \hspace{5mm}u\in(-1,1) $$
%
% * Regla Compuesta de Simpson
%
% De la misma manera que en la Regla Compuesta del Trapecio, dividimos el
% intervalo de integración en subintervalos. En este caso, tomaremos dos
% intervalos para tener tres puntos y aplicar la Regla de Simpson en ellos.
% 
% Debido a que los puntos extremos de cada subintervalo forman parte de dos
% parábolas (excepto los puntos de integración), multiplicamos por 2 cada
% punto con subíndice par. En los puntos medios de cada
% parábola aplicamos la definición de la Regla de Simpson, de manera que
% multiplicaremos por cuatro los puntos con subíndice impar.
% 
% $$ \int_a^bf(x)dx = \frac{h}{3}[f(a)+2\sum_{j=1}^{\frac{n}{2}-1}f(x_{2j})+4\sum_{j=1}^{\frac{n}{2}}f(x_{2j-1})+f(b)] -
% \frac{b-a}{180}h^4f^{(4)}(u)\hspace{5mm}u\in(a,b) $$
%
% Donde:
%%
% * $$ n $$ = número de intervalos
% * $$ h = \frac{b-a}{n} $$
% * $$ xj = a + jh, \hspace{5mm}j = 0,1,2,...,n $$
%
% Y el último término es un ajuste que permite la igualdad entre la
% integración analítica y la Regla Compuesta de Simpson
%
% Ejemplo para $$ e^{-x^2} $$ con $$ n = 10 $$ en [-1, 1]
%%
% * $$ n = 10 $$
% * $$ h = \frac{1-(-1)}{10} = 0.2 $$
% * $$ xj = -1 + 0.2*j, \hspace{5mm}j = 0,1,2,...,10 $$
%
% $$ \int_{-1}^1e^{-x^2}dx = \frac{0.2}{3}[e^{-(-1)^2}+2\sum_{j=1}^{\frac{n}{2}-1}e^{-(x_{2j})^2}+4\sum_{j=1}^{\frac{n}{2}}e^{-(x_{2j-1})^2}+e^{-(1)^2}] - \frac{1-(-1)}{180}(0.2)^2[-4e^{-u^2}(-4u^2+12u^2-3)]$$
%
% $$ \int_{-1}^1e^{-x^2}dx = 1.4936 + 0.00007e^{-u^2}(-4u^2+12u^2-3), \hspace{5mm}u\in(-1,1) $$
%
%