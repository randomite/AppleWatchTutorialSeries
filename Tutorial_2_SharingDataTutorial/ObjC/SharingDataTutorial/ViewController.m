//
//  ViewController.m
//  SharingDataTutorial
//
//  Created by Ravin Sardal on 11/25/14.
//  Copyright (c) 2014 Ravin Sardal. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize myLabel;
@synthesize myTextField;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)saveInfo:(id)sender {
    
    NSString* myString = [myTextField text];
    self.myLabel.text = myString;
    
    NSUserDefaults *mySharedDefaults = [[NSUserDefaults alloc] initWithSuiteName:@"group.sharingdata"];
    [mySharedDefaults setObject:myString forKey:@"savedUserInput"];
    [mySharedDefaults synchronize];
    
}



@end
