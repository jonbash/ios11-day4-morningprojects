//
//  JBPerson.h
//  Numbers
//
//  Created by Jon Bash on 2020-01-23.
//  Copyright © 2020 Jon Bash. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JBPerson : NSObject

// 'copy' copies the value whenever you 'set' it from this object (but *not* when you 'get' it, so you have to remember to do that yourself)
@property (nonatomic, copy) NSString *name; // always use a copy with NSString *

- (instancetype)initWithName:(NSString *)name;

@end
