//
//  ViewController.h
//  Calculator
//
//  Created by Jamal O'Garro on 8/27/15.
//  Copyright (c) 2015 jso. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic, weak) IBOutlet UILabel *inputDisplay;

// Number actions
- (IBAction)one:(id)sender;
- (IBAction)two:(id)sender;
- (IBAction)three:(id)sender;
- (IBAction)four:(id)sender;
- (IBAction)five:(id)sender;
- (IBAction)six:(id)sender;
- (IBAction)seven:(id)sender;
- (IBAction)eight:(id)sender;
- (IBAction)nine:(id)sender;
- (IBAction)zero:(id)sender;

// Operation actions
- (IBAction)multiply:(id)sender;
- (IBAction)divide:(id)sender;
- (IBAction)add:(id)sender;
- (IBAction)subtract:(id)sender;

// Equal and clear actions
- (IBAction)clear:(id)sender;
- (IBAction)equal:(id)sender;

// Perform the current operation
- (void)performOperation;

@end

