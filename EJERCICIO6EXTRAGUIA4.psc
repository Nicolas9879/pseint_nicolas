Algoritmo ejercicio6extra
	Definir n,v1,i Como Entero
	
	escribir "tamaño vector:"
	leer n
	
	dimension v1[n]
	
	para i=0 hasta n-1 Hacer
		escribir "v1[",i,"]:"
		leer v1[i]
	FinPara
	
	Escribir "Diferencia entre el vector más chico y más grande:" llamada(v1,n)
	
FinAlgoritmo

funcion chicogrande<-llamada(v1,n)
	definir chicogrande,mayor,menor,j como entero
	
	para j=0 hasta n-1 Hacer
		
		si j=0 Entonces
			mayor = v1[j]
			menor= v1[j]    //inicializa las variables ..
		FinSi
		
		si v1[j] > mayor Entonces
			mayor = v1[j]      //altera las variables
		FinSi
		si v1[j] < menor Entonces
			menor = v1[j]  //altera las variables
		FinSi
	FinPara
	
	chicogrande=abs(mayor-menor)
	
FinFuncion
