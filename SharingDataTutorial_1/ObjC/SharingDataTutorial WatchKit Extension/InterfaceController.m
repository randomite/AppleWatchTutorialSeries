//
//  InterfaceController.m
//  SharingDataTutorial WatchKit Extension
//
//  Created by Ravin Sardal on 11/25/14.
//  Copyright (c) 2014 Ravin Sardal. All rights reserved.
//

#import "InterfaceController.h"


@interface InterfaceController()

@end


@implementation InterfaceController
@synthesize myLabel;

- (instancetype)initWithContext:(id)context {
    self = [super init];
    if (self){
        // Initialize variables here.
        // Configure interface objects here.
        NSLog(@"%@ initWithContext", self);
        
    }
    return self;
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    NSLog(@"%@ will activate", self);
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    NSLog(@"%@ did deactivate", self);
}
- (IBAction)showUserInfo {
     NSUserDefaults *mySharedDefaults = [[NSUserDefaults alloc] initWithSuiteName:@"group.sharingdata"];
    [mySharedDefaults synchronize];
    self.myLabel.text = [mySharedDefaults stringForKey:@"savedUserInput"];
}

@end



