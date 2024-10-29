%% 3. Conversor de Tiempo
%% Programa para convertir entre diferentes unidades de tiempo
segundos_a_tiempo(Segundos, Horas, Minutos, SegundosRest) :-
    Horas is Segundos // 3600,
    RestoHoras is Segundos mod 3600,
    Minutos is RestoHoras // 60,
    SegundosRest is RestoHoras mod 60.

tiempo_a_segundos(Horas, Minutos, Segundos, Total) :-
    Total is Horas * 3600 + Minutos * 60 + Segundos.

%% Equivalente en Python:
# class ConversorTiempo:
#     def segundos_a_tiempo(self, segundos):
#         horas = segundos // 3600
#         resto = segundos % 3600
#         minutos = resto // 60
#         segundos_rest = resto % 60
#         return horas, minutos, segundos_rest
#     
#     def tiempo_a_segundos(self, horas, minutos, segundos):
#         return horas * 3600 + minutos * 60 + segundos