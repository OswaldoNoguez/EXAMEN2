Proceso Examen2
	dimension mes[12]
	mes[0]<-'Enero'; mes[1]<-'Febrero';mes[2]<-'Marzo';mes[3]<-'Abril';mes[4]<-'Mayo';mes[5]<-'Junio';mes[6]<-'Julio';mes[7]<-'Agosto';mes[8]<-'Septiembre'
	mes[9]<-'Octubre';mes[10]<-'Noviembre';mes[11]<-'Diciembre'; //Se inicializa el valor del arreglo así dado que no se puede hacer como en el código
	definir i, ano, dia como entero
	Escribir "Indique el mes (con número):\n" //La /n representa el salto de línea
	hacer
		leer i
		si i<=0 o i>12
			Escribir "Error en el mes, vuelva a intentarlo\n"
		FinSi
	hasta que i>0 y i <=12
	Escribir "Indique el día (con número):\n"
	si i<=7 entonces 
		Si i%2==0 y i<>2 
			Hacer																	
				leer dia
				Si dia<=0 o dia>30
					Escribir "Error en el día, vuelva a intentar\n"
				Fin si
			Hasta que dia>0 y dia<=30	
		Fin si
		Si i==2								//Se tuvieron que crear varios if, dado que desconozco 
			hacer							//como usar else-if en PSeInt
				leer dia
				si dia<=0 o dia>29
					Escribir "Error en el día, vuelva a intentar\n"	
				FinSi
			Hasta que dia>0 y dia<=29
		FinSi
		Si i%2<>0
			Hacer
				leer dia
				Si dia<=0 o dia>31
					Escribir "Error en el día, vuelva a intentar\n"
				Fin si
			Hasta que dia>0 y dia<=31	
		Fin si
	SiNo
		Si i%2==0 
			Hacer																	
				leer dia
				Si dia<=0 o dia>31
					Escribir "Error en el día, vuelva a intentar\n"
				Fin si
			Hasta que dia>0 y dia<=31	
		Fin si
		Si i%2<>0
			Hacer
				leer dia
				Si dia<=0 o dia>30
					Escribir "Error en el día, vuelva a intentar\n"
				Fin si
			Hasta que dia>0 y dia<=30	
		Fin si	
	FinSi
	Escribir "Indique el año (2020):\n"
	Hacer
		leer ano
		si ano<>2020
			Escribir "Error en el año, vuelva a intentarlo, debe ser 2020\n"
		FinSi
	Hasta que ano=2020
	Escribir"La fecha ingresada es " dia " de " mes[i-1] " del " ano
FinProceso
