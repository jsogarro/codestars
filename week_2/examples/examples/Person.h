//
//  Person.h
//  examples
//
//  Created by Jamal O'Garro on 8/10/15.
//  Copyright (c) 2015 jso. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
@property NSString *firstName;
@property NSString *lastName;
@property int age;
@property Person *bestFriend;

- (NSString*)sayHello;
- (int)addNumbersOne:(int)firstNumber andTwo:(int)secondNumber;
+ (Person *)initPersonWithFirstName:(NSString*)first andLastName:(NSString*)last;

@end
