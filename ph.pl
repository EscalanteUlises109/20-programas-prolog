%% 9. Calculadora de pH
%% Programa para calcular pH y clasificar solucionescalcular_
ph(ConcentracionH, PH) :-
    ConcentracionH > 0,
    PH is -log10(ConcentracionH).

tipo_solucion(PH, Tipo) :-
    PH < 7,
    Tipo = 'Ácida'.
tipo_solucion(PH, Tipo) :-
    PH > 7,
    Tipo = 'Básica'.
tipo_solucion(7, 'Neutra').

fuerza_acido(PH, Fuerza) :-
    PH < 3,
    Fuerza = 'Fuerte'.
fuerza_acido(PH, Fuerza) :-
    PH >= 3,
    PH < 7,
    Fuerza = 'Débil'.

%% Equivalente en Python:
# import math
# 
# class CalculadoraPH:
#     def calcular_ph(self, concentracion_h):
#         if concentracion_h > 0:
#             return -math.log10(concentracion_h)
#         return None
#     
#     def tipo_solucion(self, ph):
#         if ph < 7:
#             return 'Ácida'
#         elif ph > 7:
#             return 'Básica'
#         return 'Neutra'
#     
#     def fuerza_acido(self, ph):
#         if ph < 3:
#             return 'Fuerte'
#         elif 3 <= ph < 7:
#             return 'Débil'
#         return 'No es ácido'


