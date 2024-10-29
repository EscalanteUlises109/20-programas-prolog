%% Programa de cálculo de áreas y perímetros
%% Escalante Hernandez Kevin Ulises 21211937
%% Programación Lógica y Funcional
%% Maestro: Rene Solis Reyes

% Área y perímetro de un círculo
area_circulo(Radio, Area) :-
    Area is pi * Radio * Radio.

perimetro_circulo(Radio, Perimetro) :-
    Perimetro is 2 * pi * Radio.

% Área y perímetro de un rectángulo
area_rectangulo(Base, Altura, Area) :-
    Area is Base * Altura.

perimetro_rectangulo(Base, Altura, Perimetro) :-
    Perimetro is 2 * (Base + Altura).

%% Equivalente en Python:
%% import math
%% 
%% class Geometria:
%%     @staticmethod
%%     def area_circulo(radio):
%%         return math.pi * radio * radio
%%     
%%     @staticmethod
%%     def perimetro_circulo(radio):
%%         return 2 * math.pi * radio
%%     
%%     @staticmethod
%%     def area_rectangulo(base, altura):
%%         return base * altura
%%     
%%     @staticmethod
%%     def perimetro_rectangulo(base, altura):
%%         return 2 * (base + altura)