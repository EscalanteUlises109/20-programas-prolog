%% 5. Calculadora de Préstamos
%% Programa para calcular pagos mensuales de préstamos

%% Programación Lógica y Funcional
%% Maestro: Rene Solis Reyes


pago_mensual(Monto, Tasa, Plazo, Pago) :-
    TasaMensual is (Tasa/100)/12,
    Factor is (1 + TasaMensual) ** Plazo,
    Pago is Monto * (TasaMensual * Factor) / (Factor - 1).

total_a_pagar(Monto, Tasa, Plazo, Total) :-
    pago_mensual(Monto, Tasa, Plazo, Pago),
    Total is Pago * Plazo.

interes_total(Monto, Tasa, Plazo, Interes) :-
    total_a_pagar(Monto, Tasa, Plazo, Total),
    Interes is Total - Monto.

%% Equivalente en Python:
# class CalculadoraPrestamos:
#     def calcular_pago_mensual(self, monto, tasa, plazo):
#         tasa_mensual = (tasa/100)/12
#         factor = (1 + tasa_mensual) ** plazo
#         return monto * (tasa_mensual * factor) / (factor - 1)
#     
#     def total_a_pagar(self, monto, tasa, plazo):
#         pago_mensual = self.calcular_pago_mensual(monto, tasa, plazo)
#         return pago_mensual * plazo
#     
#     def interes_total(self, monto, tasa, plazo):
#         total = self.total_a_pagar(monto, tasa, plazo)
#         return total - monto