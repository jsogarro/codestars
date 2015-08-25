//
//  main.m
//  Problem-Set_4
//
//  Created by O'Garro, Felicia on 8/20/15.
//  Copyright (c) 2015 O'Garro, Felicia. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "Planet.h"



int main(int argc, char * argv[]) {
    @autoreleasepool {
        NSArray *arr = @[@"Pluto", @"Mercury", @"Uranus"];
        Planet *planets = [[Planet alloc]init];
        NSArray *cap = [planets capStrings:arr];
        
        NSLog(@"%@", cap);
        
        NSArray *first = @[@1, @2, @3];
        NSArray *second = @[@4, @5, @6];
        NSArray *combined = [planets combinedArrays:first
                                        secondArray:second];
        NSLog(@"%@", combined);
        
        NSDictionary *m6 = @{@"make": @"BMW", @"model": @"M6", @"year": @2015};
        NSDictionary *m3 = @{@"make": @"BMW", @"model": @"M3", @"year": @2015};
        NSDictionary *x5 = @{@"make": @"BMW", @"model": @"X5", @"year": @2015};
        NSDictionary *m5 = @{@"make": @"BMW", @"model": @"M5", @"year": @2015};
        NSDictionary *x3 = @{@"make": @"BMW", @"model": @"X3", @"year": @2015};
        
        NSArray *bimmers = @[m6, m3, x5, m5, x3];
        [planets printDictionary:bimmers];
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
        
    }
}


