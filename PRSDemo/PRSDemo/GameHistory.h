//
//  GameHistory.h
//  PRSDemo
//
//  Created by Han Xu on 7/15/13.
//  Copyright (c) 2013 Han Xu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GameHistory : NSObject

@property NSMutableArray *games;

+ (id)sharedInstance;
- (void)addGame:(NSString*)game;

@end
