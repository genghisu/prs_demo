//
//  ViewController.m
//  PRSDemo
//
//  Created by Han Xu on 7/15/13.
//  Copyright (c) 2013 Han Xu. All rights reserved.
//

#import "ViewController.h"
#import "PlayViewController.h"
#import "HistoryViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)playButtonPressed:(id)sender {
    PlayViewController *controller = [[PlayViewController alloc] init];
    [self presentViewController:controller animated:YES completion:^{
        
    }];
}

- (void)historyButtonPressed:(id)sender {
    HistoryViewController *controller = [[HistoryViewController alloc] init];
    [self presentViewController:controller animated:YES completion:^{
        
    }];
}
@end
