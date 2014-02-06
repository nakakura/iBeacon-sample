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
                     init: @"00000000-8E5B-1001-B000-001C4DB3DB2C"
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