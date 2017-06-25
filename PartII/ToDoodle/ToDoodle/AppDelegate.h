//
//  AppDelegate.h
//  ToDoodle
//
//  Created by Guti on 6/23/17.
//  Copyright © 2017 Guti. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate, UITableViewDataSource>

@property (strong, nonatomic) UIWindow *window;

@property (nonatomic) UITableView *taskTable;
@property (nonatomic) UITextField *taskField;
@property (nonatomic) UIButton *insertButton;

@property (nonatomic) NSMutableArray *tasks;

- (void)addTask:(id)sender;

@end

