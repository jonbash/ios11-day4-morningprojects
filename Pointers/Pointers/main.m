//
//  main.m
//  Pointers
//
//  Created by Jon Bash on 2020-01-23.
//  Copyright © 2020 Jon Bash. All rights reserved.
//

#import <Foundation/Foundation.h>

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
    }
    return 0;
}
