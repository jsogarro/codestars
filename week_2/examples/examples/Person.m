//
//  Person.m
//  examples
//
//  Created by Jamal O'Garro on 8/10/15.
//  Copyright (c) 2015 jso. All rights reserved.
//

#import "Person.h"

@implementation Person

- (NSString*)sayHello {
    return [NSString stringWithFormat:@"Hello my name is %@", self.firstName];
}

- (int)addNumbersOne:(int)firstNumber andTwo:(int)secondNumber {
    
    return firstNumber + secondNumber;
}

+ (Person *)initPersonWithFirstName:(NSString *)first andLastName:(NSString *)last {
    
    Person *personVar = [[Person alloc] init];
    
    personVar.firstName = first;
    personVar.lastName = last;
    
    return personVar;
}

@end
