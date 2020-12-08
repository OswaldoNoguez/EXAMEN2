#include<stdio.h>
#include<locale.h>
int main(){
	setlocale(LC_ALL, "");
	char mes[12][25]={"Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre"};
	int i,dia,ano;
	printf("Indique el mes (con número):\n");
	do{
		scanf("%d",&i);
		if (i<=0 or i>12)
			printf("Error en el mes, vuelva a intentarlo\n");
	}while((i<=0 or i>12));
	printf("Indique el día (con número):\n");
	if(i<=7){
		if(i%2==0 and i!=2){
			do{
				scanf("%d",&dia);
				if (dia<=0 or dia>30)
					printf("Error en el día, vuelva a intentar\n");
			}while(dia<=0 or dia>30);
		}
		else if (i==2){
			do{
				scanf("%d",&dia);
				if (dia<=0 or dia>29)
					printf("Error en el día, vuelva a intentar\n");	
			}while(dia<=0 or dia>29);
		}
		else{
			do{
				scanf("%d",&dia);
				if (dia<=0 or dia>31)
					printf("Error en el día, vuelva a intentar\n");	
			}while(dia<=0 or dia>31);	
		}
	}
	else{ //Esto es porque en Agosto se repite (31 días)
			if(i%2==0){
			do{
				scanf("%d",&dia);
				if (dia<=0 or dia>31)
					printf("Error en el día, vuelva a intentar\n");
			}while(dia<=0 or dia>31);
			}
			else{
				do{
					scanf("%d",&dia);
					if (dia<=0 or dia>30)
						printf("Error en el día, vuelva a intentar\n");	
				}while(dia<=0 or dia>30);	
			} 
	}
	printf("Indique el año (2020):\n");
	do{
		scanf("%d",&ano);
		if (ano!=2020)
			printf("Error en el año, vuelva a intentarlo, debe ser 2020\n");
	}while(ano!=2020);
	printf("La fecha ingresada es %d de %s del %d",dia, mes[i-1],ano);
	return 0;
}
