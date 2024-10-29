% 2. Sistema de Notas Musicales
%% Programa para trabajar con notas musicales y sus frecuencias
frecuencia_nota(do, 261.63).
frecuencia_nota(re, 293.66).
frecuencia_nota(mi, 329.63).
frecuencia_nota(fa, 349.23).
frecuencia_nota(sol, 392.00).
frecuencia_nota(la, 440.00).
frecuencia_nota(si, 493.88).

siguiente_nota(do, re).
siguiente_nota(re, mi).
siguiente_nota(mi, fa).
siguiente_nota(fa, sol).
siguiente_nota(sol, la).
siguiente_nota(la, si).
siguiente_nota(si, do).

intervalo_frecuencia(Nota1, Nota2, Diferencia) :-
    frecuencia_nota(Nota1, Freq1),
    frecuencia_nota(Nota2, Freq2),
    Diferencia is abs(Freq2 - Freq1).

%% Equivalente en Python:
# class SistemaNotasMusicales:
#     def __init__(self):
#         self.frecuencias = {
#             'do': 261.63, 're': 293.66, 'mi': 329.63,
#             'fa': 349.23, 'sol': 392.00, 'la': 440.00, 'si': 493.88
#         }
#         self.siguiente = {
#             'do': 're', 're': 'mi', 'mi': 'fa',
#             'fa': 'sol', 'sol': 'la', 'la': 'si', 'si': 'do'
#         }
#     
#     def intervalo_frecuencia(self, nota1, nota2):
#         return abs(self.frecuencias[nota2] - self.frecuencias[nota1])