//
//  main.m
//  Problem-Set-3
//
//  Created by Felicia O'Garro on 8/19/15.
//  Copyright (c) 2015 ComputerLab. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Shape.h"
#import "Square.h"
#import "Circle.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Shape *shape = [[Shape alloc]init];
        [shape setWidth:4];
        [shape setHeight:5];
        
        Square *square = [[Square alloc]init];
        [square setWidth:8];
        [square setHeight:6];
        
        Circle *circle = [[Circle alloc]init];
        [circle setRadius:5];
        
        NSLog(@"The area of shape is: %i", [shape calculateArea]);
        NSLog(@"The area of square is: %i", [square calculateArea]);
        NSLog(@"The area of circle is: %i", [circle calculateArea]);
        
    }
    return 0;
}
