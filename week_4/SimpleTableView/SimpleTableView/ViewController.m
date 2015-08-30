//
//  ViewController.m
//  SimpleTableView
//
//  Created by Jamal O'Garro on 8/24/15.
//  Copyright (c) 2015 jso. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

// Instance Variables

{
    NSMutableArray *_sneakers; // start with NSArray
}


# pragma mark - UIViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    _sneakers = @[@"Nike Air Jordan III", @"Nike Air Jordan XI", @"Nike Air Jordan IX", @"Nike Air Max 90", @"Nike Air Uptempo", @"Converse Chuck Taylors", @"Reebok Classics", @"Reebok Kamikazee", @"Nike Air Huarache", @"Nike AirMax 1", @"Adidas Ben Smith", @"Reebok Pumps", @"British Knights", @"LA Gear", @"Nike Dunk", @"Nike Air Force One", @"Gucci Tennis 84", @"Shell Toe Adidas", @"Nike LeBron 8 South Beach", @"Nike Air Jordan 1", @"Air Yeezy Red October", @"Converse Ox", @"Nike Air Jordan XII", @"Adidas Yeezy Boost", @"Nike Air Force One Low"];
    
    _sneakers = [NSMutableArray arrayWithObjects:@"Nike Air Jordan III", @"Nike Air Jordan XI", @"Nike Air Jordan IX", @"Nike Air Max 90", @"Nike Air Uptempo", @"Converse Chuck Taylors", @"Reebok Classics", @"Reebok Kamikazee", @"Nike Air Huarache", @"Nike AirMax 1", @"Adidas Ben Smith", @"Reebok Pumps", @"British Knights", @"LA Gear", @"Nike Dunk", @"Nike Air Force One", @"Gucci Tennis 84", @"Shell Toe Adidas", @"Nike LeBron 8 South Beach", @"Nike Air Jordan 1", @"Air Yeezy Red October", @"Converse Ox", @"Nike Air Jordan XII", @"Adidas Yeezy Boost", @"Nike Air Force One Low", nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - DataSource Methods

// let's the table view know the number of rows in the section
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _sneakers.count;
}

// Select a row in the table view
- (UITableViewCell*)tableView:(UITableView*)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *cellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    cell.textLabel.text = [_sneakers objectAtIndex:indexPath.row];
    
    return cell;
}

// Delete row ** DO THIS LAST **
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    
    // Remove the data from the array
    [_sneakers removeObjectAtIndex:indexPath.row];
    
    // Reload the table view
    [tableView deleteRowsAtIndexPaths:@[indexPath]
                     withRowAnimation:YES];
    
}


#pragma mark - Delegate Methods

// React to table view row/cell seletion
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString * sneaker = [_sneakers objectAtIndex:indexPath.row];
    
    UIAlertView *alertMessage = [[UIAlertView alloc] initWithTitle:@"Sneaker"
                                                           message:sneaker delegate:nil
                                                 cancelButtonTitle:@"OK"
                                                 otherButtonTitles:nil, nil];
    
    // Display the alert
    [alertMessage show];
    
    // Programatically deselect the selected row
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
}

@end
