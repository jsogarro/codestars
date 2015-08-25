//
//  Planet.m
//  Problem-Set_4
//
//  Created by Felicia O'Garro on 8/23/15.
//  Copyright (c) 2015 O'Garro, Felicia. All rights reserved.
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

-(NSArray*)combinedArrays:(NSArray*)first secondArray:(NSArray *)second{
    NSArray *combinedArray = [first arrayByAddingObjectsFromArray: second];
    return combinedArray;
}

-(void)printDictionary:(NSArray *)arr{
    for (NSDictionary *item in arr) {
        NSLog(@"%@ %@ %@", item[@"year"], item[@"make"], item[@"model"]);
    }
}


@end
