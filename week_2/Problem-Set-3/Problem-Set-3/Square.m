//
//  Square.m
//  Problem-Set-3
//
//  Created by Felicia O'Garro on 8/19/15.
//  Copyright (c) 2015 ComputerLab. All rights reserved.
//

#import "Square.h"

@implementation Square

-(int)calculateArea{
    int shapeSize = [super calculateArea];
    return shapeSize * 2;
}

@end
