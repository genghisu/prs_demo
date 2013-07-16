//
//  GameHistory.m
//  PRSDemo
//
//  Created by Han Xu on 7/15/13.
//  Copyright (c) 2013 Han Xu. All rights reserved.
//

#import "GameHistory.h"

@implementation GameHistory

static GameHistory *sharedInstance = nil;

@synthesize games;

+ (GameHistory *)sharedInstance {
    if (sharedInstance == nil) {
        sharedInstance = [[super allocWithZone:NULL] init];
    }
    
    return sharedInstance;
}

- (id)init
{
    self = [super init];
    
    if (self) {
        self.games = [[NSMutableArray alloc] init];
    }
    
    return self;
}

- (void)addGame:(NSString *)game {
    [self.games addObject:game];
}
@end
