//
//  ViewController.m
//  TestAutomationSuit
//
//  Created by Vinay Raj Dunty on 25/06/15.
//  Copyright (c) 2015 Vinay Raj Dunty. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)viewDidAppear:(BOOL)animated{
    NSString *target = [[[NSProcessInfo processInfo] environment] objectForKey:@"TARGET"];
    if( [target isEqualToString:@"PROD"] ){
        NSLog(@"Log : Prod environment");
    }else if ([target isEqualToString:@"QA"]){
        NSLog(@"Log : QA environment");
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
