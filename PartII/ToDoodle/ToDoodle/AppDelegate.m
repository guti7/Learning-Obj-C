//
//  AppDelegate.m
//  ToDoodle
//
//  Created by Guti on 6/23/17.
//  Copyright © 2017 Guti. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

#pragma mark - Application delegate callbacks

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    NSLog(@"Aplication did finish launching with options: %@", launchOptions);
    NSLog(@"The root window: %@", self.window);
//    NSLog(@"The window's root view controller: %@", self.window.rootViewController);
    
    // Make the `AppDelegate` the table view's `dataSource`
    self.taskTable.dataSource = self;
    
    
    // Create and configure the `UIWindow` instance
    // a `CGRect` is a struct with an origin (x, y) and a size (width, height)
    CGRect windowBounds = [[UIScreen mainScreen] bounds];
//    UIWindow *mainWindow = [[UIWindow alloc] initWithFrame:windowBounds];
    
    // Define the frame rectangles for UI elements
    // `CGRectMake()` creates a `CGRect` from (x, y, width, height)
    CGRect tableFrame = CGRectMake(0, 80, windowBounds.size.width, windowBounds.size.height - 100);
    CGRect fieldFrame = CGRectMake(20, 40, 200, 31);
    CGRect buttonFrame = CGRectMake(228, 40, 72, 31);
    
    // Create and configure the `UITableView` instance
    self.taskTable = [[UITableView alloc] initWithFrame:tableFrame style:UITableViewStylePlain];
    self.taskTable.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
    // Tell the table view which class to instantiate whenever it needs to create a new cell
    [self.taskTable registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Cell"];
    
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
//    [self.window addSubview:self.taskTable];
//    [self.window addSubview:self.taskField];
//    [self.window addSubview:self.insertButton];
    [self.window.rootViewController.view addSubview:self.taskTable];
    [self.window.rootViewController.view addSubview:self.taskField];
    [self.window.rootViewController.view addSubview:self.insertButton];
    
    // Finalize window and put it on the screen
//    self.window.backgroundColor = [UIColor blueColor];
    [self.window makeKeyAndVisible];
    
    NSLog(@"Load complete");
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

#pragma mark - Actions
- (void)addTask:(id)sender {
    
    // Get the task
    NSString *taskText = [self.taskField text];
    
    // Quit here if `taskField` is empty
    if ([taskText length] == 0) {
        return;
    }
    
    // Log text to console
    NSLog(@"Task entered: %@", taskText);
    
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

- (UITableViewCell *)tableView:(UITableView)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    // This method first checks for an existing cell object that can be reused. If there isn't one, then a new cell is created (Performance enhancer).
    UITableViewCell *cell = [self.taskTable dequeueReusableCellWithIdentifier:@"Cell"];
    
    // Reconfigure the cell based on the model object(tasks array).
    NSString *taskString = [self.tasks objectAtIndex:indexPath.row];
    cell.textLabel.text = taskString;
    
    // hand the cell back to the table view(the table view calls the table view's data source helper methods)
    return cell;
    
}

@end
