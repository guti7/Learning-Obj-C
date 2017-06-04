//
//  main.c
//  CountDown
//
//  Created by Guti on 6/2/17.
//  Copyright © 2017 Piel De Jaguar. All rights reserved.
//

#include <stdio.h>
#include <unistd.h>
#include <readline/readline.h>
#include <stdlib.h>


void countDown(int n) {
    if (n < 0) {
        printf("Nothing to count down.\n");
    } else {
        // Start the countdown to zero
        while (n >= 0) {
//            if (n % 5 == 0) {
//                printf("Found one!\n");
//            } else {
//                printf("%d", n);
//            }
            printf("%d", n);
            if (n % 5 == 0) {
                printf(" Found one!");
            }
            printf("\n");
            n--;
        }
    }
}

int main(int argc, const char * argv[]) {
    countDown(10);
    sleep(2);
    printf("\n");
    countDown(99);
    
    // User input for countdown
    printf("Where should I start counting?");
    const char *number = readline(NULL);
    printf("%d That number is Cool!\n\n", atoi(number)); // <stdlib.h>
    countDown(atoi(number));
    return 0;  // EXIT_SUCCESS , #include <stdlib.h>
}
