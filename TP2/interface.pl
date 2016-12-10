writeHorarios(Turma, NTurmas):-Turma > NTurmas.
writeHorarios(Turma, NTurmas):-
        Turma =< NTurmas,
        write('Horario Turma '),write(Turma),nl,nl,
        horario(Turma,Horario),
        writeHorario(1,Horario),
        NextTurma is Turma + 1,
        writeHorarios(NextTurma, NTurmas).


writeHorario(_,[]).
writeHorario(Dia ,[H1|Hs]):-
        translateDiaSemana(Dia, DiaString),
        write(DiaString),nl,
        writeDisciplinas(H1),nl,
        NextDia is Dia + 1,
        writeHorario(NextDia ,Hs).

writeDisciplinas([]).
writeDisciplinas([H1|Hs]):-
        translateDisciplina(H1, DisciplinaString),
        write(DisciplinaString),nl,
        writeDisciplinas(Hs).


writeTestes(ListaTestes1, ListaTestes2):-
        write('Fase 1 Testes'),nl,nl,
        writeTestesAux(ListaTestes1),nl,nl,
        write('Fase 2 Testes'),nl,nl,
        writeTestesAux(ListaTestes2).

writeTestesAux([]).
writeTestesAux([Turma, Disciplina, Semana , DiaSemana | Ls]):-
        translateDisciplina(Disciplina, DisciplinaString),
        translateDiaSemana(DiaSemana, DiaString),
        write('Turma '), write(Turma), write(' -> '), write(DisciplinaString), write(': Semana '), write(Semana), write(', '), write(DiaString),nl,
        writeTestesAux(Ls).



        
        
translateDiaSemana(1, 'Segunda-Feira').
translateDiaSemana(2, 'Ter�a-Feira').
translateDiaSemana(3, 'Quarta-Feira').
translateDiaSemana(4, 'Quinta-Feira').
translateDiaSemana(5, 'Sexta-Feira').

translateDisciplina(1, 'Matem�tica').
translateDisciplina(2, 'Portugu�s').
translateDisciplina(3, 'Ingl�s').
translateDisciplina(4, 'Educa��o F�sica').
translateDisciplina(5, '�rea de Projeto').
translateDisciplina(6, 'Ci�ncias').
translateDisciplina(7, 'Forma��o C�vica').
translateDisciplina(8, 'Hist�ria').
translateDisciplina(9, 'Educa��o Musical').
