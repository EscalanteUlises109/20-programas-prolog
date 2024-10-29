%% Programa de un sistema de inventario de una tienda
%% Escalante Hernandez Kevin Ulises 21211937
%% Programación Lógica y Funcional
%% Maestro: Rene Solis Reyes

% Base de datos de artículos
articulo(1, 'Laptop', 15000, 5).
articulo(2, 'Mouse', 300, 20).
articulo(3, 'Teclado', 500, 15).

% Verificar stock
stock_bajo(ID) :-
    articulo(ID, _, _, Cantidad),
    Cantidad < 10.

% Calcular valor total del inventario
valor_total(Total) :-
    findall(Valor, 
            (articulo(_, _, Precio, Cantidad), 
            Valor is Precio * Cantidad), 
            Valores),
    sumlist(Valores, Total).

%% Equivalente en Python:
%% class Inventario:
%%     def __init__(self):
%%         self.articulos = {
%%             1: {"nombre": "Laptop", "precio": 15000, "cantidad": 5},
%%             2: {"nombre": "Mouse", "precio": 300, "cantidad": 20},
%%             3: {"nombre": "Teclado", "precio": 500, "cantidad": 15}
%%         }
%%     
%%     def stock_bajo(self, id):
%%         return self.articulos[id]["cantidad"] < 10
%%
%%     def valor_total(self):
%%         return sum(art["precio"] * art["cantidad"] for art in self.articulos.values())