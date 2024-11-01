%% \Calculadora de IMC
%% Programa para calcular el Índice de Masa Corporal
%% Programación Lógica y Funcional
%% Maestro: Rene Solis Reyes

imc(Peso, Altura, IMC) :-
    IMC is Peso / (Altura * Altura).

categoria_imc(IMC, Categoria) :-
    IMC < 18.5,
    Categoria = 'Bajo peso'.
categoria_imc(IMC, Categoria) :-
    IMC >= 18.5,
    IMC < 25,
    Categoria = 'Normal'.
categoria_imc(IMC, Categoria) :-
    IMC >= 25,
    IMC < 30,
    Categoria = 'Sobrepeso'.
categoria_imc(IMC, Categoria) :-
    IMC >= 30,
    Categoria = 'Obesidad'.

%% Equivalente en Python:
# class CalculadoraIMC:
#     def calcular_imc(self, peso, altura):
#         return peso / (altura * altura)
#     
#     def obtener_categoria(self, imc):
#         if imc < 18.5:
#             return "Bajo peso"
#         elif imc < 25:
#             return "Normal"
#         elif imc < 30:
#             return "Sobrepeso"
#         else:
#             return "Obesidad"
