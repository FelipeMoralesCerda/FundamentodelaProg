hermano(carlos).
hermano(alberto).
hermano(luis).

dia(lunes).
dia(martes).
dia(miercoles).
dia(jueves).
dia(viernes).
dia(sabado).
dia(domingo).

frase('Hoy es el tercer dia que miento').
frase('Hola, soy alberto').
frase('Mañana será sabado').

miente(alberto,lunes).
miente(alberto,martes).
miente(alberto, miercoles).

miente(carlos,miercoles).
miente(carlos,jueves).
miente(carlos,viernes).

miente(luis,viernes).
miente(luis,sabado).
miente(luis,domingo).

dice(alberto,lunes,'Hoy es el tercer dia que miento').
dice(alberto,lunes,'Mañana será sabado').
dice(alberto,martes,'Hoy es el tercer dia que miento').
dice(alberto,martes,'Mañana será sabado').
dice(alberto, miercoles,'Mañana será sabado').

dice(carlos,miercoles,'Hoy es el tercer dia que miento').
dice(carlos,miercoles,'Hola, soy alberto').
dice(carlos,jueves,'Hoy es el tercer dia que miento').
dice(carlos,jueves,'Hola, soy alberto').
dice(carlos,viernes,'Hola, soy alberto').

dice(luis,viernes,'Hoy es el tercer dia que miento').
dice(luis,viernes,'Hola, soy alberto').
dice(luis,sabado,'Hoy es el tercer dia que miento').
dice(luis,sabado,'Hola, soy alberto').
dice(luis,sabado,'Mañana será sabado').
dice(luis,domingo,'Hola, soy alberto').
dice(luis,domingo,'Mañana será sabado').

verdad(alberto,jueves,'Hola, soy alberto').
verdad(alberto,viernes,'Hola, soy alberto').
verdad(alberto,viernes,'Mañana será sabado').
verdad(alberto,sabado,'Hola, soy alberto').

respuesta(X,Y,Z):-dia(X),hermano(Y),frase(Z), miente(Y,X),dice(Y,X,Z),verdad(Y,X,Z).