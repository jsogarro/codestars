//
//  ViewController.m
//  Calculator
//
//  Created by Jamal O'Garro on 8/27/15.
//  Copyright (c) 2015 jso. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
{
    double _total;
    double _currentInput;
    int _operation;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)one:(id)sender {
    _currentInput *= 10;
    _currentInput += 1;
    
    self.inputDisplay.text = [NSString stringWithFormat:@"%.2f", _currentInput];
}

- (IBAction)two:(id)sender {
    _currentInput *= 10;
    _currentInput += 2;
    
    self.inputDisplay.text = [NSString stringWithFormat:@"%.2f", _currentInput];
}
- (IBAction)three:(id)sender {
    _currentInput *= 10;
    _currentInput += 3;
    
    self.inputDisplay.text = [NSString stringWithFormat:@"%.2f", _currentInput];
}
- (IBAction)four:(id)sender {
    _currentInput *= 10;
    _currentInput += 4;
    
    self.inputDisplay.text = [NSString stringWithFormat:@"%.2f", _currentInput];
}
- (IBAction)five:(id)sender {
    _currentInput *= 10;
    _currentInput += 5;
    
    self.inputDisplay.text = [NSString stringWithFormat:@"%.2f", _currentInput];
}
- (IBAction)six:(id)sender{
    _currentInput *= 10;
    _currentInput += 6;
    
    self.inputDisplay.text = [NSString stringWithFormat:@"%.2f", _currentInput];
}
- (IBAction)seven:(id)sender {
    _currentInput *= 10;
    _currentInput += 7;
    
    self.inputDisplay.text = [NSString stringWithFormat:@"%.2f", _currentInput];
}
- (IBAction)eight:(id)sender {
    _currentInput *= 10;
    _currentInput += 8;
    
    self.inputDisplay.text = [NSString stringWithFormat:@"%.2f", _currentInput];
}
- (IBAction)nine:(id)sender {
    _currentInput *= 10;
    _currentInput += 9;
    
    self.inputDisplay.text = [NSString stringWithFormat:@"%.2f", _currentInput];
}
- (IBAction)zero:(id)sender {
    _currentInput *= 10;
    _currentInput += 0;
    
    self.inputDisplay.text = [NSString stringWithFormat:@"%2.f", _currentInput];
}

- (IBAction)multiply:(id)sender {
    
    // The base case
    if (!_total) {
        _total = _currentInput;
    } else {
        [self performOperation];
    }
    
    _operation = 1; // specify the current operation
    _currentInput = 0; // reset the current input
}
- (IBAction)divide:(id)sender {

    if (!_total) {
        _total = _currentInput;
    } else {
        [self performOperation];
    }
    
    _operation = 2;
    _currentInput = 0;
}
- (IBAction)add:(id)sender {
    
    if (!_total) {
        _total = _currentInput;
    } else {
        [self performOperation];
    }
    
    _operation = 3;
    _currentInput = 0;
}
- (IBAction)subtract:(id)sender {
    
    if (!_total) {
        _total = _currentInput;
    } else {
        [self performOperation];
    }
    
    _operation = 4;
    _currentInput = 0;
}

// Clear our label and all of our inputs
- (IBAction)clear:(id)sender {
    
    _operation = 0;
    _total = 0;
    _currentInput = 0;
    
    self.inputDisplay.text = [NSString stringWithFormat:@"0"];
}

// Display the total
- (IBAction)equal:(id)sender {
    
    if (!_total) {
        _total = _currentInput;
    } else {
        [self performOperation];
    }
    
    _operation = 0;
    _currentInput = 0;
    
    self.inputDisplay.text = [NSString stringWithFormat:@"%.2f", _total];
}

- (void)performOperation {
    switch (_operation) {
        case 1:
            _total *= _currentInput;
            break;
        case 2:
            _total /= _currentInput;
            break;
        case 3:
            _total += _currentInput;
            break;
        case 4:
            _total -= _currentInput;
            break;
            
        default:
            break;
    }
}

@end
