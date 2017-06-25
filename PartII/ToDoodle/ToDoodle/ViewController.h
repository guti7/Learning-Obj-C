//
//  ViewController.h
//  ToDoodle
//
//  Created by Guti on 6/23/17.
//  Copyright © 2017 Guti. All rights reserved.
//

#import <UIKit/UIKit.h>

// Declare a helper function that you will use to get a path to the location on disk where you can save the to-do list
NSString *DocPath(void);

@interface ViewController : UIViewController <UITableViewDataSource>

@property (nonatomic) UITableView *taskTable;
@property (nonatomic) UITextField *taskField;
@property (nonatomic) UIButton *insertButton;

@property (nonatomic) NSMutableArray *tasks;

- (void)addTask:(id)sender;

@end

