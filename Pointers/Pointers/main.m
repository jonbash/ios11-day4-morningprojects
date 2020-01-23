//
//  main.m
//  Pointers
//
//  Created by Jon Bash on 2020-01-23.
//  Copyright © 2020 Jon Bash. All rights reserved.
//

#import <Foundation/Foundation.h>

// Goal: Print Your Name
void pointerTest(void) {
    char *message = "Hello xxxxxxxxxxxxxxxxxxxx!"; // '\0' = null terminated
    printf("message pointer: %p\n", message);
    printf("message: %s\n", message);
    unsigned long length = strlen(message);
    printf("Please allocate a string of size: %zu\n", sizeof(char) * length + 1);
    char *ptr = malloc(sizeof(char) * length + 1);    // memory allocation
    ptr = strcpy(ptr, message);
    // Set your name!
    ptr[6] = 'J'; // START HERE
    ptr[7] = 'o';
    ptr[8] = 'n';
    ptr[9] = '!';
    ptr[10] = '\0';

    printf("message: %s\n", ptr);
    // Expected: message: Hello Paul!    // No x's!
    free(ptr);
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");

        char *thingy = "this is a thingy\0 with more after the NULL";
        printf("%s", thingy); // --> "this is a thingy"
        float float_pi = 3.1415926539;
        double pi = 3.1415926539;

        printf("float_pi: %f\n", float_pi);
        printf("pi: %f\n", pi);

        int value = 42;
        printf("%i\n", value);

        char *ptr = "Hello iOS11!";
        printf("ptr: %s\n", ptr);
        printf("&ptr: %p\n", &ptr); // address of pointer

        printf("\n\n\n-----\n\n\n");

        pointerTest();
    }
    return 0;
}
