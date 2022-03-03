#include<stdio.h>
#include<stdlib.h>
#include "include/clear.h"

#pragma GCC ignored -Wall



void menu() {
    system("~/.stupidOS/menu.py");
    int choice;
    printf("Enter your choice: ");
    scanf("%d", &choice);
    switch(choice) {
        case 1:
	    clear();
            system("~/.stupidOS/bin/clock");
	    clear();
            menu();
        case 2:
	    clear();
            system("~/.stupidOS/bin/random");
	    menu();
	case 3:
	    clear();
            system("~/.stupidOS/bin/calculator");
            menu();
        case 4:
            printf("Exiting...\n");
            exit(0);
        default:
            printf("Invalid choice\n");
	    clear();
            menu();
    }
}

int main() {
	menu();
}
