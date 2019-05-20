%% Práctica 6: Sistemas diferenciales
%% Integrantes
%
% Flores Lima José Ricardo
%
% Medina Bautista Sergio Cristian
%
% Plata Montejano Lissete
%% Objetivos:
% * Conocer comandos para obtener las funciones de respuesta de un sistema
% * Graficar las expresiones de respuesta
% 
%%
%% Introducción
% En esta practica se mostrará como un programa resuelve sistemas
% diferenciales de orden n mediante la transformada de Laplace y Fourier, el
% programa despliega la función de trasnferencia, la respuesta al impulso,
% la respuesta a entrada cero, la respuesta a estado cero, la respuesta
% total con condiciones iniciales y las gráficas correspondientes

%% FUNCION 
% $$ y^2+3y^1+2y =x^1+3x $$
%
% condiciones iniciales 
%
%
% $$ y^2 (0)=0 $$
%  $$  y^1 (0)=2 $$
%  $$  y (0)=1  $$
%  $$ x (0)= cos(t)u(t)  $$

%% PUNTO 1 
%
% Muestra la función de transferencia del sistema
%
%
% $$(S+3)/(S^2+3S+2) $$
n=[1 3];
d=[1 3 2];
G=tf(n,d)
pole(G);
step(G);
%
%% PUNTO 2 
%
% Se muestra la respuesta al impulso del sistema
%
%
syms t
transFourierImpulse([2 3 1],[3 1],dirac(t),10)

%% PUNTO 3 
%
%
%  Se muestra la respuesta a entrada cero del sistema
%
%
syms t
transLaplaceCero([2 3 1],[3 1],[1 2],[0],0*t,10)
%


%% PUNTO  4
%
%
%  Se muestra la respuesta a estado cero del sistema
%
%
syms t
transLaplaceCeroState([2 3 1],[3 1],[0 0],[0],cos(t)*heaviside(t),10)
%
%

%% PUNTO  5
%
%
%  Se muestra la respuesta total del sistema
%
%
syms t
transLaplaceCeroState([2 3 1],[3 1],[1 2],[0],cos(t)*heaviside(t),10)
% 
%

%% PUNTO 6
%
% Se muestra la respuesta total al escalón unitario con condiciones iniciales
% cero
%
transLaplaceCeroState([2 3 1],[3 1],[0 0],[0],heaviside(t),10)
%
%

%% PUNTO 7
%
% Se muestra las respuestas simbólicas y gráficas en un subplot
%
sistemas( [2 3 1],[3 1],[1 2],[0],cos(t)*heaviside(t),10 )


