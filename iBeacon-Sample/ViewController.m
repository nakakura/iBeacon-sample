//
//  ViewController.m
//  iBeacon-Sample
//
//  Created by Toshiya Nakakura on 2/6/14.
//  Copyright (c) 2014 Toshiya Nakakura. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController
@synthesize textField;
@synthesize beaconManager;

- (void)viewDidLoad
{
    [super viewDidLoad];
    beaconManager = [[IBeaconManager alloc]
                     init: @"B9407F30-F5F8-466E-AFF9-25556B57FE6D"
                     Identifier: @"com.ntt.webcore"];
    beaconManager.delegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - CLLocationManagerDelegate methods

- (void) display:(NSString *)message{
    textField.scrollEnabled = NO;
    textField.text = message;
    textField.scrollEnabled = YES;
    NSLog(@"%@", message);
}


@end