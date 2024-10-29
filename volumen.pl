%% 4. Calculadora de Volúmenes
%% Programa para calcular volúmenes de diferentes formas geométricas
volumen_cubo(Lado, Volumen) :-
    Volumen is Lado * Lado * Lado.

volumen_esfera(Radio, Volumen) :-
    Pi is 3.14159,
    Volumen is (4/3) * Pi * Radio * Radio * Radio.

volumen_cilindro(Radio, Altura, Volumen) :-
    Pi is 3.14159,
    Volumen is Pi * Radio * Radio * Altura.

%% Equivalente en Python:
# class CalculadoraVolumenes:
#     def volumen_cubo(self, lado):
#         return lado ** 3
#     
#     def volumen_esfera(self, radio):
#         return (4/3) * math.pi * radio ** 3
#     
#     def volumen_cilindro(self, radio, altura):
#         return math.pi * radio ** 2 * altura
