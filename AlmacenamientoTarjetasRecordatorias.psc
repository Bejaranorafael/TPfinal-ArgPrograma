Algoritmo AlmacenamientoTarjetasRecordatorias:
    Dimension tarjetas[100]: Cadena // Declarar un arreglo de cadenas con un tamaño máximo
    Definir opcion, indice, usuario, contrasena como Cadena // Agregar usuario y contraseña
    opcion -> 0: // Inicializar la opción con un valor que no sea 1, 2 o 3
    indice <- 1 // Inicializar el índice en 1
    usuario <- "usuario" // Establecer un usuario y contraseña predefinidos
    contrasena <- "contrasena"

    Escribir "Ingrese su nombre de usuario: "
    Leer usuarioIngresado
    Escribir "Ingrese su contraseña: "
    Leer contrasenaIngresada

    Si usuarioIngresado = usuario Y contrasenaIngresada = contrasena Entonces
        Mientras opcion <> 3 Hacer
            Escribir "----- Menu Principal -----"
            Escribir "1. Agregar tarjeta"
            Escribir "2. Mostrar tarjetas"
            Escribir "3. Salir"
            Escribir "Seleccione una opción: "
            Leer opcion
            Segun opcion Hacer
            
                    Si indice <= 100 Entonces
                        Escribir "Ingrese el contenido de la tarjeta: "
                        Leer tarjeta
                        tarjetas[indice] <- tarjeta
                        Escribir "Tarjeta agregada exitosamente."
                        indice <- indice + 1
                    Sino
                        Escribir "No se pueden agregar más tarjetas. El límite es 100."
                    Fin Si
                
                    Si indice > 1 Entonces
                        Escribir "----- Tarjetas -----"
                        Para i <- 1 Hasta indice - 1 Hacer
                            Escribir i, ". ", tarjetas[i]
                        Fin Para
                    Sino
                        Escribir "No hay tarjetas almacenadas."
                    Fin Si
                
                    Escribir "Saliendo del programa."
                De Otro Modo:
                    Escribir "Opción no válida."
            Fin Segun
        Fin Mientras
    Sino
        Escribir "Usuario o contraseña incorrectos. Saliendo del programa."
    Fin Si
Fin Algoritmo


	
	
	
