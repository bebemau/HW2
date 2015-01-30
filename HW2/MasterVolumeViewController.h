//
//  MasterVolumeViewController.h
//  HW2
//
//  Created by keren man on 1/24/15.
//  Copyright (c) 2015 keren man. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface MasterVolumeViewController : NSViewController

@property (weak) IBOutlet NSTextFieldCell *VolumeLabel;
@property (weak) IBOutlet NSSlider *VolumeSlider;


@end
