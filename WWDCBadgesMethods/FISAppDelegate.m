//
//  FISAppDelegate.m
//  WWDCBadgesMethods
//
//  Created by Chris Gonzales on 5/28/14.
//  Copyright (c) 2014 FIS. All rights reserved.
//

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    return YES;
}

//define methods here
- (NSString *)badgeMaker:(NSString *)attendee
{
    return [NSString stringWithFormat:@"Hello, my name is %@.", attendee];
}

- (NSArray *)batchBadgeCreator:(NSArray *)attendees
{
    NSMutableArray *badges = [[NSMutableArray alloc] init];
    for (int i=0; i<[attendees count]; i++) {
        badges[i] = [self badgeMaker:attendees[i]];
    }
    return [badges copy];
}

- (NSArray *)assignRooms:(NSArray *)attendees
{
    NSMutableArray *roomAssignments = [[NSMutableArray alloc] init];
    for (int i=0; i<[attendees count]; i++) {
        roomAssignments[i] = [NSString stringWithFormat:@"Hello, %@! You'll be assigned to room %i!", attendees[i], i+1];
    }
    return [roomAssignments copy];
}

@end
