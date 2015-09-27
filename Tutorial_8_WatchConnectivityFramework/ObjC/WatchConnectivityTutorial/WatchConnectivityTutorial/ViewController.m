//
//  ViewController.m
//  WatchConnectivityTutorial
//
//  Created by Ravin Sardal on 9/27/15.
//  Copyright © 2015 Ravin Sardal. All rights reserved.
//

#import "ViewController.h"
#import <WatchConnectivity/WatchConnectivity.h>

@interface ViewController () <WCSessionDelegate>
@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    WCSession* session = [WCSession defaultSession];
    session.delegate = self;
    [session activateSession];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)sendMessageToWatch:(id)sender {
    WCSession* session = [WCSession defaultSession];
    session.delegate = self;
    [session activateSession];
    
    [session sendMessage:@{@"a":@"hello"} replyHandler:nil errorHandler:nil];
}


#pragma mark - WatchConnectivity Delegate Method

- (void) session:(nonnull WCSession *)session didReceiveMessage:(nonnull NSDictionary<NSString *,id> *)message replyHandler:(nonnull void (^)(NSDictionary<NSString *,id> * __nonnull))replyHandler{
    self.messageLabel.text = (NSString *) message;
    NSLog(message);
}

@end
