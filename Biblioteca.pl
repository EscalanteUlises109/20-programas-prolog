%% Programa de un sistema de biblioteca
%% Escalante Hernandez Kevin Ulises 21211937
%% Programación Lógica y Funcional
%% Maestro: Rene Solis Reyes

% Base de datos de libros
libro(1, 'El Quijote', 'Cervantes', disponible).
libro(2, '1984', 'Orwell', prestado).
libro(3, 'Cien años de soledad', 'García Márquez', disponible).

% Reglas para préstamos
puede_prestar(ID) :-
    libro(ID, _, _, disponible).

prestar(ID) :-
    puede_prestar(ID),
    retract(libro(ID