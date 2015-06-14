//
//  InterfaceController.m
//  NativeWatchApp WatchKit Extension
//
//  Created by Ravin Sardal on 6/14/15.
//  Copyright © 2015 Ravin Sardal. All rights reserved.
//

#import "InterfaceController.h"


@interface InterfaceController()

@end


@implementation InterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];

    // Configure interface objects here.
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
    NSURL* url = [[NSBundle mainBundle] URLForResource:@"test" withExtension:@"mov"];
    [self.myMoviePlayer setMovieURL:url];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

@end



