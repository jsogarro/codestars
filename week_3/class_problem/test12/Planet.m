//
//  Planet.m
//  test12
//
//  Created by Felicia O'Garro on 8/20/15.
//  Copyright (c) 2015 ComputerLab. All rights reserved.
//

#import "Planet.h"

@implementation Planet
-(NSArray*)capStrings:(NSArray*)arr{
    NSMutableArray *capitalArray = [[NSMutableArray alloc]init];
    NSString *capString;
    
    for(NSString *str in arr){
        capString = [str uppercaseString];
        [capitalArray addObject:capString];
    }
    return capitalArray;
    
}

@end
