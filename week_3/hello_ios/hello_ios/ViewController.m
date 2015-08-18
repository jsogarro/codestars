//
//  ViewController.m
//  hello_ios
//
//  Created by Jamal O'Garro on 8/17/15.
//  Copyright (c) 2015 jso. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.greetingLabel.text = @"Hello World";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonClicked:(id)sender {
    self.greetingLabel.text = @"Button clicked!!!";
}
@end
