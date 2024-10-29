%% 1. Calculadora de Distancia entre Puntos
%% Programa para calcular distancia entre dos puntos en 2D y 3D
distancia_2d(X1, Y1, X2, Y2, Distancia) :-
    DeltaX is X2 - X1,
    DeltaY is Y2 - Y1,
    Distancia is sqrt(DeltaX * DeltaX + DeltaY * DeltaY).

distancia_3d(X1, Y1, Z1, X2, Y2, Z2, Distancia) :-
    DeltaX is X2 - X1,
    DeltaY is Y2 - Y1,
    DeltaZ is Z2 - Z1,
    Distancia is sqrt(DeltaX * DeltaX + DeltaY * DeltaY + DeltaZ * DeltaZ).

%% Equivalente en Python:
# class CalculadoraDistancia:
#     def distancia_2d(self, x1, y1, x2, y2):
#         delta_x = x2 - x1
#         delta_y = y2 - y1
#         return math.sqrt(delta_x**2 + delta_y**2)
#     
#     def distancia_3d(self, x1, y1, z1, x2, y2, z2):
#         delta_x = x2 - x1
#         delta_y = y2 - y1
#         delta_z = z2 - z1
#         return math.sqrt(delta_x**2 + delta_y**2 + delta_z**2)