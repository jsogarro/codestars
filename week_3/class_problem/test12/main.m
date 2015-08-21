//
//  main.m
//  test12
//
//  Created by Felicia O'Garro on 8/20/15.
//  Copyright (c) 2015 ComputerLab. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Planet.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *arr = @[@"Pluto", @"Mercury", @"Uranus"];
        Planet *planets = [[Planet alloc]init];
        NSArray *cap = [planets capStrings:arr];
        
        NSLog(@"%@", cap);
    }
    return 0;
}

