//
//  ViewController.m
//  Numbers
//
//  Created by Jon Bash on 2020-01-23.
//  Copyright © 2020 Jon Bash. All rights reserved.
//

#import "ViewController.h"
#import "JBPerson.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // NSNumber

//    NSArray *array = [[NSArray alloc] initWithObjects:1, 2, 3, nil]; // Error: Implicit conversion of 'int' to 'id _Nonnull' is disallowed with ARC
    // objc: NSArrays must hold objects, not primitives (ie no floats, ints, chars...)

    // c-string literal = "abc"
    // objc string literal = @"abc"
    // number literal = @1
    // array literal = @[]

    NSNumber *one = [NSNumber numberWithInt:1];
    NSNumber *two = [NSNumber numberWithInt:2];
    NSNumber *three = [NSNumber numberWithInt:3];

    NSArray *array = [[NSArray alloc] initWithObjects:one, two, three, nil];
    NSArray *arrayBetter = [[NSArray alloc] initWithObjects:@1, @2, @3, nil];
    NSArray *arrayBest = @[@1, @2, @3];

    double sum = [self calculateSum:@[@3.14, @400, @-45, @1000.1]];
    printf("sum: %f\n", sum);


    // mutability

    // NSString = readonly              @"James"
    // NSMutableString = readwrite      @"James" -> @"Jim"
    // NSArray, NSDictionary, NSSet...
    // NSMutableArray, NSMutableDictionary...
    // let = constant, var = variable (mutable)

    NSMutableString *james = [@"James" mutableCopy];
    JBPerson *actor = [[JBPerson alloc] initWithName:james];
    NSLog(@"Actor: %@", actor.name);
    [james setString:@"Jim"];
    NSLog(@"Actor: %@", actor.name);
}

- (double)calculateSum:(NSArray *)array {
    double sum = 0;
    for (NSNumber *num in array) {
        sum += num.doubleValue;
    }
    return sum;
}


@end
