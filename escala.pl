% 8. Sistema de Escalas Musicales
%% Programa para trabajar con escalas musicales
escala_mayor(Nota) :-
    siguiente_nota(Nota, Seg1),
    siguiente_nota(Seg1, Seg2),
    siguiente_nota(Seg2, Ter1),
    siguiente_nota(Ter1, Ter2),
    siguiente_nota(Ter2, Ter3),
    siguiente_nota(Ter3, Sep1),
    siguiente_nota(Sep1, Oct).

distancia_notas(Nota1, Nota2, Pasos) :-
    siguiente_nota(Nota1, Siguiente),
    contar_pasos(Siguiente, Nota2, 1, Pasos).

contar_pasos(Nota, Nota, Acc, Acc).
contar_pasos(Nota1, Nota2, Acc, Pasos) :-
    siguiente_nota(Nota1, Siguiente),
    AccNew is Acc + 1,
    contar_pasos(Siguiente, Nota2, AccNew, Pasos).

%% Equivalente en Python:
# class SistemaEscalasMusicales:
#     def __init__(self):
#         self.notas = ['do', 're', 'mi', 'fa', 'sol', 'la', 'si']
#     
#     def escala_mayor(self, nota):
#         idx = self.notas.index(nota)
#         escala = []
#         for i in range(8):
#             escala.append(self.notas[(idx + i) % 7])
#         return escala
#     
#     def distancia_notas(self, nota1, nota2):
#         idx1 = self.notas.index(nota1)
#         idx2 = self.notas.index(nota2)
#         if idx2 >= idx1:
#             return idx2 - idx1
#         return len(self.notas) - idx1 + idx2