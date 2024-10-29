%% Programa de sistema de calificaciones
%% Escalante Hernandez Kevin Ulises 21211937
%% Programación Lógica y Funcional
%% Maestro: Rene Solis Reyes

% Definir niveles de calificación
nivel_calificacion(Calificacion, 'A') :- 
    Calificacion >= 90.

nivel_calificacion(Calificacion, 'B') :- 
    Calificacion >= 80,
    Calificacion < 90.

nivel_calificacion(Calificacion, 'C') :- 
    Calificacion >= 70,
    Calificacion < 80.

nivel_calificacion(Calificacion, 'D') :- 
    Calificacion >= 60,
    Calificacion < 70.

nivel_calificacion(Calificacion, 'F') :- 
    Calificacion < 60.

%% Equivalente en Python:
%% def obtener_nivel(calificacion):
%%     if calificacion >= 90:
%%         return 'A'
%%     elif calificacion >= 80:
%%         return 'B'
%%     elif calificacion >= 70:
%%         return 'C'
%%     elif calificacion >= 60:
%%         return 'D'
%%     else:
%%         return 'F'