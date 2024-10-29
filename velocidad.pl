%% 7. Conversor de Velocidad
%% Programa para convertir entre diferentes unidades de velocidad
kmh_a_ms(KmH, MS) :-
    MS is KmH / 3.6.

ms_a_kmh(MS, KmH) :-
    KmH is MS * 3.6.

kmh_a_mph(KmH, MPH) :-
    MPH is KmH * 0.621371.

mph_a_kmh(MPH, KmH) :-
    KmH is MPH / 0.621371.

%% Equivalente en Python:
# class ConversorVelocidad:
#     def kmh_a_ms(self, kmh):
#         return kmh / 3.6
#     
#     def ms_a_kmh(self, ms):
#         return ms * 3.6
#     
#     def kmh_a_mph(self, kmh):
#         return kmh * 0.621371
#     
#     def mph_a_kmh(self, mph):
#         return mph / 0.621371
