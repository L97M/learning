#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>


/** Ticket Control System for TransLok Company **/


void MainMenu () {

	printf("\n# ---- OPTIONS MENU ------- #\n");
	printf("#                           #\n");
	printf("# 1. Buy a Ticket           #\n");
	printf("# 2. List Sold Tickets      #\n");
	printf("# 3. List Amount Received   #\n");
	printf("# 4. Exit                   #\n");
	printf("#                           #\n");
	printf("# ------------------------- #\n");

}

void BuyMenu () {

	printf("\n# ---- OPTIONS MENU ------- #\n");
	printf("#                           #\n");
	printf("# 1. Florianópolis (7am)    #\n");
	printf("# 2. Curitiba (6h30am)      #\n");
	printf("# 3. São Paulo (6am)        #\n");
	printf("#                           #\n");
	printf("# ------------------------- #\n");
	printf("#    Tickets available      #\n"); 
	printf("#      only for today       #\n");
	printf("# ------------------------- #\n");

}

int main(int argc, char const *argv[]) {
	
	int i = 0, j = 1, mainmenu_option, destination = 0, num_tickets[10]; 
	char anything_else;

	system("clear");

	printf("\nHello! Welcome to TransLokSys!\n");

	//sleep(2);

	MainMenu();

	printf("\nEnter the number of desired option: ");
	scanf("%d", &mainmenu_option);

	do {

	switch (mainmenu_option) {

		case 1:

			system("clear");

			BuyMenu();

			printf("\nChoose the destination: ");
			scanf("%d", &destination);

			//printf("valor da variável destination = %d\n", destination);

			fflush(stdin);

			if(destination == 1 && i <= 9) {

				num_tickets[i] = j;	

				//printf("elemento na posição 0 = %d \n", num_tickets[i]);

				printf("\nTicket Purchased! Your seat number is %d ;D\n", num_tickets[i]);

				i++;
				j++;

				//printf("i = %d \n", i);
				//printf("j = %d \n", j);

			}else if(destination == 2 && i <= 10) {

				num_tickets[i] = j;	

				printf("%d \n", num_tickets[i]);

				printf("Ticket Purchased! Your seat number is %d ;D\n", num_tickets[i]);

				i++;
				j++;

				printf("i = %d \n", i);
				printf("j = %d \n", j);

			}
			else if(destination == 3 && i <= 10) {
				num_tickets[i] = j;	

				printf("%d \n", num_tickets[i]);

				printf("Ticket Purchased! Your seat number is %d ;D\n", num_tickets[i]);

				i++;
				j++;

				printf("i = %d \n", i);
				printf("j = %d \n", j);
			}
			else {
				printf("Tickets are sold out =/\nGoodbye!");
			}

			break;

		case 2:

			printf("case 2\n");

			break;

		case 4:

			printf("\nExiting! \n");

			break;

		default:

			printf("\nInvalid option! Try Again =) \n");

			sleep(2);

			system("clear");

			MainMenu();

			printf("\nEnter the number of desired option: ");
			scanf("%d", &mainmenu_option);

			break;

	} // fim do switch

			//printf("\nNeed anything else? Y [Yes] or N [No] ");
			//scanf("%c", &anything_else);

			sleep(5);

			//if(anything_else == 'Y' || anything_else == 'y') {

				system("clear");

				MainMenu();

				printf("\nEnter the number of desired option: ");
				scanf("%d", &mainmenu_option);

			//} else {

				//mainmenu_option = 4;
				//printf("\nExiting! \n");

			//}

			//sleep(5);

	} while (mainmenu_option != 4);

	//printf("\n sai do switch! \n");

	printf("\n\n");

	return 0;
}
