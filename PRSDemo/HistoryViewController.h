//
//  HistoryViewController.h
//  PRSDemo
//
//  Created by Han Xu on 7/15/13.
//  Copyright (c) 2013 Han Xu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HistoryViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property IBOutlet UITableView *tableView;

- (IBAction)doneButtonPressed:(id)sender;

@end
