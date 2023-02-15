Algoritmo ejercicio5extrav1_2
	Definir v1,v2,frase,cara como cadena
	Definir i,j,posicion,k,a,h,vacio,lleno Como Entero
	Dimension v1[20],v2[20]
	
	escribir "frase:"
	leer frase
	
	Para i<-0 Hasta 20-1 Hacer
		v1[i]=Subcadena(frase,i,i)
	FinPara
	
	para k<-0  Hasta 20-1 Hacer
		escribir "v1[",k,"]:",v1[k]  
	FinPara
	
	Repetir
		escribir "posición" Sin Saltar
		leer posicion
	Mientras Que posicion>19
	
	escribir "carácter:"
	leer cara
	
	lleno = 0
	para k<-0 hasta 20-1 Hacer  // busca los subíndices que esten vacios. esto será usado en la estructura "Si" que depende de esta variable
		si v1[k] <> "" y  v1[k]<> " " Entonces
			lleno = lleno+1
		FinSi
	FinPara
	
	si lleno = 20 Entonces // si todos los subíndices están completos se mostrará este mensaje y no se hará nada.
		escribir "todos los subíndices se encuentran ocupados :(" 
	sino
		si v1[posicion] <> "" y  v1[posicion]<> " " Entonces  //se asegura de que esté ocupada la posición antes de correr el código.
			
			
			para j<-0  Hasta 20-1 Hacer
				si j=0 Entonces
					a=abs(j-posicion)
					vacio=j //cuenta los espacios vacios y elige el mas cercano a la posicion elegida. sirve para darle un valor a la variable "a"
				finsi
				si v1[j] = "" o  v1[j] = " " Entonces
					si abs(j-posicion)<a Entonces
						a=abs(j-posicion) //cuenta los espacios vacios y elige el mas cercano a la posicion elegida. (variable "a" es la encargada de esto)
						vacio=j // el vacio sera la posicion de j mas cercana.. por eso esta dentro de una estructura si que depende de la variable "a"
					FinSi
				FinSi
				
				si j=20-1 Entonces // al final el espacio vacio mas cercano es el destinado para guardar la variable que ocupa el lugar de la posicion elegida
					
					si vacio > posicion  Entonces
						para h=0 Hasta a-1 Hacer
							v1[vacio-h]=v1[vacio-(h+1)] // si el espacio vacio es mayor que la posicion debe restarse
						FinPara
					SiNo
						si vacio = 0 Entonces
							para h=0 Hasta 0 Hacer // para el caso de que pos = 0 y vacio = 1 da error de otra forma.
								v1[vacio+h]=v1[vacio+(h+1)]// si el espacio vacio es menor que la posicion debe sumarse
							FinPara
						SiNo
							para h=0 Hasta a-1 Hacer
								v1[vacio+h]=v1[vacio+(h+1)]// si el espacio vacio es menor que la posicion debe sumarse
							FinPara
						FinSi
					FinSi
					v1[posicion]=cara // finalmente el carácter es asignado a la posición indicada.
				FinSi
			FinPara
		SiNo // si el espacio(subíndice) está libre sucederá esto 
			v1[posicion]=cara
			escribir "¡felicidades, el espacio estaba libre!"
		FinSi
		para k<-0  Hasta 20-1 Hacer
			escribir "v1[",k,"]:",v1[k]  //encargado de escribir todo el vector por pantalla
		FinPara
		
	FinSi
	
FinAlgoritmo
