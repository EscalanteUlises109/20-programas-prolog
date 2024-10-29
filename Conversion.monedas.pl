%% Programa de conversión de monedas
%% Escalante Hernandez Kevin Ulises 21211937
%% Programación Lógica y Funcional
%% Maestro: Rene Solis Reyes

% Tasas de cambio
tasa(usd, mxn, 17.50).
tasa(eur, mxn, 19.20).
tasa(gbp, mxn, 22.30).

% Conversión directa
convertir(Cantidad, Moneda1, Moneda2, Resultado) :-
    tasa(Moneda1, Moneda2, Tasa),
    Resultado is Cantidad * Tasa.

% Conversión inversa
convertir(Cantidad, Moneda1, Moneda2, Resultado) :-
    tasa(Moneda2, Moneda1, Tasa),
    Resultado is Cantidad / Tasa.

%% Equivalente en Python:
%% class ConversorMoneda:
%%     def __init__(self):
%%         self.tasas = {
%%             ('usd', 'mxn'): 17.50,
%%             ('eur', 'mxn'): 19.20,
%%             ('gbp', 'mxn'): 22.30
%%         }
%%     
%%     def convertir(self, cantidad, moneda1, moneda2):
%%         if (moneda1, moneda2) in self.tasas:
%%             return cantidad * self.tasas[(moneda1, moneda2)]
%%         elif (moneda2, moneda1) in self.tasas:
%%             return cantidad / self.tasas[(moneda2, moneda1)]