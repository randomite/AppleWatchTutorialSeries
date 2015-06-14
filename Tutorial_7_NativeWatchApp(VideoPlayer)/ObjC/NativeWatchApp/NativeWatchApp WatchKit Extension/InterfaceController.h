//
//  InterfaceController.h
//  NativeWatchApp WatchKit Extension
//
//  Created by Ravin Sardal on 6/14/15.
//  Copyright © 2015 Ravin Sardal. All rights reserved.
//

#import <WatchKit/WatchKit.h>
#import <Foundation/Foundation.h>

@interface InterfaceController : WKInterfaceController
@property (strong, nonatomic) IBOutlet WKInterfaceMovie *myMoviePlayer;

@end
