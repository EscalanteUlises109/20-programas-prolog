%% Programa de conversión de temperaturas
%% Escalante Hernandez Kevin Ulises 21211937
%% Programación Lógica y Funcional
%% Maestro: Rene Solis Reyes

% Convertir de Celsius a Fahrenheit
celsius_a_fahrenheit(C, F) :-
    F is (C * 9/5) + 32.

% Convertir de Fahrenheit a Celsius
fahrenheit_a_celsius(F, C) :-
    C is (F - 32) * 5/9.

% Convertir de Celsius a Kelvin
celsius_a_kelvin(C, K) :-
    K is C + 273.15.

%% Equivalente en Python:
%% class Temperatura:
%%     @staticmethod
%%     def celsius_a_fahrenheit(c):
%%         return (c * 9/5) + 32
%%     
%%     @staticmethod
%%     def fahrenheit_a_celsius(f):
%%         return (f - 32) * 5/9
%%     
%%     @staticmethod
%%     def celsius_a_kelvin(c):
%%         return c + 273.15