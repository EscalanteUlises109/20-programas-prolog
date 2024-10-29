% 3. Calculadora de Descuentos
%% Programa para calcular descuentos en compras

%% Programación Lógica y Funcional
%% Maestro: Rene Solis Reyes


descuento(Monto, Descuento) :-
    Monto >= 1000,
    Descuento is Monto * 0.20.
descuento(Monto, Descuento) :-
    Monto >= 500,
    Monto < 1000,
    Descuento is Monto * 0.10.
descuento(Monto, Descuento) :-
    Monto < 500,
    Descuento is Monto * 0.05.

total_con_descuento(Monto, Total) :-
    descuento(Monto, Descuento),
    Total is Monto - Descuento.
%% Equivalente en Python:
# class CalculadoraDescuentos:
#     def calcular_descuento(self, monto):
#         if monto >= 1000:
#             return monto * 0.20
#         elif monto >= 500:
#             return monto * 0.10
#         else:
#             return monto * 0.05
#     
#     def total_con_descuento(self, monto):
#         descuento = self.calcular_descuento(monto)
#         return monto - descuento