//
//  InterfaceController.m
//  HTTPRequestTutorialAppleWatch WatchKit Extension
//
//  Created by Ravin Sardal on 12/3/14.
//  Copyright (c) 2014 Ravin Sardal. All rights reserved.
//

#import "InterfaceController.h"


@interface InterfaceController()

@end


@implementation InterfaceController

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

- (IBAction)updateWeather {
    
    NSURLRequest* urlRequest = [NSURLRequest requestWithURL:[NSURL URLWithString:@"http://api.openweathermap.org/data/2.5/weather?q=Cupertino,usa"]];
    
    NSURLResponse* response = nil;
    NSError* error = nil;
    NSData* data = [NSURLConnection sendSynchronousRequest:urlRequest returningResponse:&response error:&error];
    
    //NSString* myData = [[NSString alloc] initWithData:data encoding:NSASCIIStringEncoding];
    
    //NSLog(myData);
    
    NSMutableDictionary *allData = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:&error];
    
    NSString *currentWeather = nil;
    
    NSArray* weather = allData[@"weather"];
    for (NSDictionary *theWeather in weather) {
        currentWeather = theWeather[@"main"];
        
    }
    
    self.myLabel.text = currentWeather;

}



@end



