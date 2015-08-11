//
//  main.m
//  examples
//
//  Created by Jamal O'Garro on 8/10/15.
//  Copyright (c) 2015 jso. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        Person * someone = [[Person alloc] init];
        someone.firstName = @"Michael";
        someone.lastName = @"Jordan";
        someone.age = 50;
        
        NSString *response = [someone sayHello];
        NSLog(@"%@", response);
        
        int points = [someone addNumbersOne:100
                                     andTwo:200];
        NSLog(@"%d", points);
        
        Person * somebodyElse = [Person initPersonWithFirstName:@"Scottie"
                                                    andLastName:@"Pippen"];
        
        NSLog(@"%@, %@", somebodyElse.firstName, somebodyElse.lastName);
        
        someone.bestFriend = somebodyElse;
        
        
    }
    return 0;
}
