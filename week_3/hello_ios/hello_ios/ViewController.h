//
//  ViewController.h
//  hello_ios
//
//  Created by Jamal O'Garro on 8/17/15.
//  Copyright (c) 2015 jso. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *greetingLabel;

- (IBAction)buttonClicked:(id)sender;

@end