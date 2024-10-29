%% 5. Sistema de Color RGB
%% Programa para manejar colores en formato RGB
color_valido(R, G, B) :-
    R >= 0, R =< 255,
    G >= 0, G =< 255,
    B >= 0, B =< 255.

es_gris(R, G, B) :-
    color_valido(R, G, B),
    R =:= G,
    G =:= B.

intensidad_color(R, G, B, Intensidad) :-
    color_valido(R, G, B),
    Intensidad is (R + G + B) / 3.

%% Equivalente en Python:
# class SistemaRGB:
#     def color_valido(self, r, g, b):
#         return (0 <= r <= 255) and (0 <= g <= 255) and (0 <= b <= 255)
#     
#     def es_gris(self, r, g, b):
#         return self.color_valido(r, g, b) and r == g == b
#     
#     def intensidad_color(self, r, g, b):
#         if self.color_valido(r, g, b):
#             return (r + g + b) / 3
#         return None
