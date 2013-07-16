//
//  PlayViewController.h
//  PRSDemo
//
//  Created by Han Xu on 7/15/13.
//  Copyright (c) 2013 Han Xu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PlayViewController : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>

typedef enum {
    Paper,
    Rock,
    Scissors
} ThrowType;

@property IBOutlet UIPickerView *picker;

- (IBAction)goButtonPressed:(id)sender;
- (IBAction)doneButtonPressed:(id)sender;

@end
