//
//  ViewController.h
//  iBeacon-Sample
//
//  Created by Toshiya Nakakura on 2/6/14.
//  Copyright (c) 2014 Toshiya Nakakura. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "IBeaconManager.h"

@interface ViewController : UIViewController<IBeaconManagerProtocol>{
    
}

@property (retain) IBeaconManager *beaconManager;
@property (retain) IBOutlet UITextView *textField;

@end
