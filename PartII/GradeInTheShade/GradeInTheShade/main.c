//
//  main.c
//  GradeInTheShade
//
//  Created by Guti on 7/3/17.
//  Copyright © 2017 Guti. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h> // malloc(), free()

float averageFloats(float data[], int dataCount) {
    float sum = 0.0;
    for (int i = 0; i < dataCount; i++) {
        sum += data[i];
    }
    return sum / dataCount; // return type is float as sum is a float.
}

int main(int argc, const char * argv[]) {
    
    // Create an array of floats
    //float *gradeBook = malloc(3 * sizeof(float)); // on the heap.
//    float *gradeBookFrame[3]; // declares buffer as part of the frame(the stack).
//    gradeBookFrame[0] = 60.2;
//    gradeBookFrame[1] = 94.5;
//    gradeBookFrame[2] = 81.1;
    //gradeBook[-3] = 23.1;
    // Array literals
    float gradeBook[] = {60.2, 94.5, 81.1}; // the new type array[] replaces the use of * (pointer declaration)
    
    
    
    
    // Calculate the average
    float average = averageFloats(gradeBook, 3);
    
    // Free the array
//    free(gradeBook);
//    gradeBook = NULL;
    // No need to free up the array declared in the frame, cleanup happens automatically when the function returns
    
    printf("Average = %.2f\n", average);
    
    return 0;
}
