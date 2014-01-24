//
//  ViewController.m
//  ResponderChain
//
//  Created by Keith Norman on 1/23/14.
//  Copyright (c) 2014 Keith Norman. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)customEventFired:(id)sender {
  UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Event Triggered in controller" message:@"not caught until now..." delegate:nil cancelButtonTitle:@"cancel" otherButtonTitles:nil, nil];
  [alertView show];
}

@end
