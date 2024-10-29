%% Programa de un sistema de reservaciones de hotel
%% Escalante Hernandez Kevin Ulises 21211937
%% Programación Lógica y Funcional
%% Maestro: Rene Solis Reyes

% Base de datos de habitaciones
habitacion(101, simple, 1000).
habitacion(102, doble, 1500).
habitacion(103, suite, 2500).

% Base de datos de reservaciones
reservada(101, '2024-01-01', '2024-01-03').
reservada(102, '2024-02-01', '2024-02-05').

% Verificar disponibilidad
disponible(Habitacion, FechaInicio, FechaFin) :-
    habitacion(Habitacion, _, _),
    \+ reservada(Habitacion, FechaInicio, FechaFin).

%% Equivalente en Python:
%% class Hotel:
%%     def __init__(self):
%%         self.habitaciones = {
%%             101: {"tipo": "simple", "precio": 1000},
%%             102: {"tipo": "doble", "precio": 1500},
%%             103: {"tipo": "suite", "precio": 2500}
%%         }
%%         self.reservaciones = {
%%             101: [("2024-01-01", "2024-01-03")],
%%             102: [("2024-02-01", "2024-02-05")]
%%         }