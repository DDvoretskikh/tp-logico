
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


/*
Cosas que no agregamos:
1) "Aun no sabemos si julieta programo en Go"
No agregamos a Julieta en la base de conocimiento porque no es un hecho que haya programado en Go.
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


---------------------------------------------------------------------

lenguajeDe(Sumatra, java).
lenguajeDe(Sumatra, net).

personaDe(Sumatra, julieta).
personaDe(Sumatra, marcos).
personaDe(Sumatra, andres).

lenguajeDe(Prometeus, cobol).

personaDe(Prometeus, fernando).
personaDe(Prometeus, santiago).

personaCorrectamenteAsignadaEn(Proyecto, Persona) :-
	personaDe(Proyecto, Persona),
/*



