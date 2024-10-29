%% Programa para calcular el máximo común divisor (MCD)
%% Escalante Hernandez Kevin Ulises 21211937
%% Programación Lógica y Funcional
%% Maestro: Rene Solis Reyes

% Caso base
mcd(X, 0, X) :- X > 0.
mcd(0, Y, Y) :- Y > 0.

% Caso recursivo usando el algoritmo de Euclides
mcd(X, Y, R) :-
    X > 0,
    Y > 0,
    Z is X mod Y,
    mcd(Y, Z, R).

%% Equivalente en Python:
%% def mcd(a, b):
%%     while b:
%%         a, b = b, a % b
%%     return a