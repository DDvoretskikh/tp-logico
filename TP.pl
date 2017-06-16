
programador(fernando , visualBasic).
programador(fernando, cobol).
programador(fernando, java).
programador(julieta, java).
programador(marcos, java).
programador(santiago, java).
programador(santiago, ecmaScript).

rolDe(fernando, programador).
rolDe(fernando, analistaFuncional).
rolDe(julieta, programador).
rolDe(marcos, programador).
rolDe(santiago, programador).
rolDe(andres, projectLeader).


sabeProgramarEn(Persona, Lenguaje) :-
	programador(Persona, Lenguaje).

rolesQueCumple(Persona, Rol) :-
	rolDe(Persona, Rol).

% Segunda Parte del TP.

lenguajeDe(sumatra, java).
lenguajeDe(sumatra, net).
lenguajeDe(prometeus, cobol).

trabajaEn(sumatra, julieta).
trabajaEn(sumatra, marcos).
trabajaEn(sumatra, andres).
trabajaEn(prometeus, fernando).
trabajaEn(prometeus, santiago).


lenguajeNecesarioPara(Proyecto, Lenguaje) :-
	lenguajeDe(Proyecto, Lenguaje).

personaCorrectamenteAsignadaEn(Proyecto, Persona) :-
	trabajaEn(Proyecto, Persona),
	programaEnLosLenguajesDe(Proyecto, Persona).

personaCorrectamenteAsignadaEn(Proyecto, Persona) :-
	trabajaEn(Proyecto, Persona),
	rolDe(Persona, analistaFuncional).

personaCorrectamenteAsignadaEn(Proyecto, Persona) :-
	trabajaEn(Proyecto, Persona),
	rolDe(Persona, projectLeader).

programaEnLosLenguajesDe(Proyecto, Persona) :-


	



/*
Cosas que no agregamos:
1) "Aun no sabemos si julieta programo en Go"
No agregamos a Julieta en la base de conocimiento porque lo consideramos como un hecho que haya programado en Go.
2)"Nadie programo en Assembler"
No lo agregamos para definir que nadie programo en Assembler.

Consultas:
a) sabeProgramarEn(fernando, Lenguaje).
b) sabeProgramarEn(Persona, java).
c) sabeProgramarEn(_, assembler).
d) programador(fernando, _).
e) rolesQueCumple(fernando, Rol)
f) programador(Persona, _).
g) rolDe(_, projectLeader).
/*








