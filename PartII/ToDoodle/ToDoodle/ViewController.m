//
//  ViewController.m
//  ToDoodle
//
//  Created by Guti on 6/23/17.
//  Copyright © 2017 Guti. All rights reserved.
//

#import "ViewController.h"

// Helper function to fetch the path to the to-do data stored on disk
NSString *DocPath() {
    NSArray *pathList = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    return [pathList[0] stringByAppendingPathComponent:@"data.td"];
}

@interface ViewController ()

@end

@implementation ViewController

# pragma mark - View Controller life cycle

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    // Create and configure the `UIWindow` instance
    // a `CGRect` is a struct with an origin (x, y) and a size (width, height)
    CGRect windowBounds = [[UIScreen mainScreen] bounds];
    
    // Define the frame rectangles for UI elements
    // `CGRectMake()` creates a `CGRect` from (x, y, width, height)
    CGRect tableFrame = CGRectMake(0, 80, windowBounds.size.width, windowBounds.size.height - 100);
    CGRect fieldFrame = CGRectMake(20, 40, 200, 31);
    CGRect buttonFrame = CGRectMake(228, 40, 72, 31);
    
    // Create and configure the `UITableView` instance
    self.taskTable = [[UITableView alloc] initWithFrame:tableFrame style:UITableViewStylePlain];
    self.taskTable.separatorStyle = UITableViewCellSeparatorStyleNone;
    // Tell the table view which class to instantiate whenever it needs to create a new cell
    [self.taskTable registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Cell"];
    
    // Make the `AppDelegate` the table view's `dataSource`
    self.taskTable.dataSource = self;
    // Create an empty array to get the task list started
    self.tasks = [NSMutableArray array];
    
    // Create and cofigure the `UITextField instance
    self.taskField = [[UITextField alloc] initWithFrame:fieldFrame];
    self.taskField.borderStyle = UITextBorderStyleRoundedRect;
    self.taskField.placeholder = @"Type a task, tap Insert.";
    
    // Create and configure the `UIButton`
    self.insertButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.insertButton.frame = buttonFrame;
    [self.insertButton setTitle:@"Insert" forState:UIControlStateNormal];
    
    // Set the target and action for the button
    // The button's target is the object to which the mesage should be sent.
    // The button's action is the message that you want sent when the button is tapped.
    [self.insertButton addTarget:self action:@selector(addTask:) forControlEvents:UIControlEventTouchUpInside];
    
    // Add UI elements to the window
    [self.view addSubview:self.taskTable];
    [self.view addSubview:self.taskField];
    [self.view addSubview:self.insertButton];
    
}

#pragma mark - Actions

- (void)addTask:(id)sender {
    
    // Get the task
    NSString *taskText = [self.taskField text];
    
    // Quit here if `taskField` is empty
    if ([taskText length] == 0) {
        return;
    }
    
    // Add it to the working array
    [self.tasks addObject:taskText];
    
    // Refresh the table so that the new item shows up
    [self.taskTable reloadData];
    
    // Clear out the text field
    [self.taskField setText:@""];
    
    // Dismis the keyboard
    [self.taskField resignFirstResponder];
}

#pragma mark - Table view management

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // this table only has one section, so the number of rows in it is equal to the number of items in the tasks array
    return [self.tasks count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    // This method first checks for an existing cell object that can be reused. If there isn't one, then a new cell is created (Performance enhancer).
    UITableViewCell *cell = [self.taskTable dequeueReusableCellWithIdentifier:@"Cell"];
    
    // Reconfigure the cell based on the model object(tasks array).
    NSString *taskString = [self.tasks objectAtIndex:indexPath.row];
    cell.textLabel.text = taskString;
    
    // hand the cell back to the table view(the table view calls the table view's data source helper methods)
    return cell;
}

@end
