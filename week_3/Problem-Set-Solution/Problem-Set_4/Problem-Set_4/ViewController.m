//
//  ViewController.m
//  Problem-Set_4
//
//  Created by O'Garro, Felicia on 8/20/15.
//  Copyright (c) 2015 O'Garro, Felicia. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

NSArray *suggestions;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    suggestions = @[@"Citibike", @"Japas Karaoke", @"Broadway Show", @"Happy Hour",  @"iMax Movie",  @"Bowling"];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)generateActivity;
{
    int suggestionCount = (int)[suggestions count];
    int random = arc4random_uniform(suggestionCount);
    self.label.text = [suggestions objectAtIndex:random];
    
}


@end
