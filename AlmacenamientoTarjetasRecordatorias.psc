Algoritmo AlmacenamientoTarjetasRecordatorias
Dimension tarjetas[100]: Cadena  // Declarar un arreglo de cadenas con un tamaño maximo
    Definir opcion, indice como Entero
    opcion -> 0:  // Inicializar la opcion con un valor que no sea 1, 2 o 3
    indice <- 1  // Inicializar el indice en 1
	Mientras opcion <> 3 Hacer
        Escribir "----- Menu Principal -----"
        Escribir "1. Agregar tarjeta"
        Escribir "2. Mostrar tarjetas"
        Escribir "3. Salir"
        Escribir "Seleccione una opcion: "
        Leer opcion
		Segun opcion Hacer
            1:
                Si indice <= 100 Entonces
                    Escribir "Ingrese el contenido de la tarjeta: "
                    Leer tarjeta
                    tarjetas[indice] <- tarjeta
                    Escribir "Tarjeta agregada exitosamente."
                    indice <- indice + 1
                Sino
                    Escribir "No se pueden agregar mas tarjetas. El limite es 100."
                Fin Si
            2:
                Si indice > 1 Entonces
                    Escribir "----- Tarjetas -----"
                    Para i <- 1 Hasta indice - 1 Hacer
                        Escribir i, ". ", tarjetas[i]
                    Fin Para
                Sino
                    Escribir "No hay tarjetas almacenadas."
                Fin Si
            3:
                Escribir "Saliendo del programa."
            De Otro Modo:
                Escribir "Opcion no valida."
        Fin Segun
    Fin Mientras

	

FinAlgoritmo
	
	
	
