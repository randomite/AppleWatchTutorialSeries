//
//  InterfaceController.m
//  Apple Watch Tutorial WatchKit Extension
//
//  Created by Ravin Sardal on 11/19/14.
//  Copyright (c) 2014 Ravin Sardal. All rights reserved.
//

#import "InterfaceController.h"


@interface InterfaceController()

@end

int x = 0;

@implementation InterfaceController

- (instancetype)initWithContext:(id)context {
    self = [super initWithContext:context];
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
    
    self.myLabel.text = @"0";
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    NSLog(@"%@ did deactivate", self);
}

- (IBAction)upButton {
    
    x++;
    NSString *myString = [NSString stringWithFormat:@"%d",x];
    self.myLabel.text = myString;
    
}

- (IBAction)downButton {
    x--;
    NSString *myString = [NSString stringWithFormat:@"%d",x];
    self.myLabel.text = myString;
    
}


@end



