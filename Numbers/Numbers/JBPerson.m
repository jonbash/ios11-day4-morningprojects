//
//  JBPerson.m
//  Numbers
//
//  Created by Jon Bash on 2020-01-23.
//  Copyright © 2020 Jon Bash. All rights reserved.
//

#import "JBPerson.h"

@implementation JBPerson

- (instancetype)initWithName:(NSString *)name {
    self = [super init];
    if (self) {
        _name = [name copy]; // always copy a value if property has it
    }
    return self;
}

@end
