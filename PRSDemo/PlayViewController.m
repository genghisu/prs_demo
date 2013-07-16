//
//  PlayViewController.m
//  PRSDemo
//
//  Created by Han Xu on 7/15/13.
//  Copyright (c) 2013 Han Xu. All rights reserved.
//

#import "PlayViewController.h"
#import "AFHTTPRequestOperation.h"
#import "AFJSONRequestOperation.h"
#import "GameHistory.h"

@interface PlayViewController ()

@end

@implementation PlayViewController

@synthesize picker;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)goButtonPressed:(id)sender {
    NSInteger selectedRow = [self.picker selectedRowInComponent:0];
    NSString *urlString;
    NSString *baseUrl = @"http://hanbox.org/throw/";
    
    if (selectedRow == Paper) {
        urlString = [NSString stringWithFormat:@"%@%@", baseUrl, @"paper"];
    } else if (selectedRow == Rock) {
        urlString = [NSString stringWithFormat:@"%@%@", baseUrl, @"rock"];
    } else if (selectedRow == Scissors) {
        urlString = [NSString stringWithFormat:@"%@%@", baseUrl, @"scissors"];
    }
    
    NSURL *url = [NSURL URLWithString:urlString];
    
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    AFJSONRequestOperation *operation = [AFJSONRequestOperation JSONRequestOperationWithRequest:request success:^(NSURLRequest *request, NSHTTPURLResponse *response, id JSON) {
        NSString *yourPlay = [JSON valueForKeyPath:@"player"];
        NSString *computerPlay = [JSON valueForKeyPath:@"computer"];
        NSString *result = [JSON valueForKeyPath:@"response"];
        
        NSString *finalText = [NSString stringWithFormat:@"You played: %@.  The computer played: %@.  %@.", yourPlay, computerPlay, result];
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Results" message:finalText delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alertView show];
        
        [[GameHistory sharedInstance] addGame:finalText];
    } failure:nil];
    [operation start];
}

- (void)doneButtonPressed:(id)sender {
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return 3;
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    if (row == Paper) {
        return @"Paper";
    } else if (row == Rock) {
        return @"Rock";
    } else if (row == Scissors) {
        return @"Scissors";
    }
}
@end
