//
//  MasterVolumeViewController.m
//  HW2
//
//  Created by keren man on 1/24/15.
//  Copyright (c) 2015 keren man. All rights reserved.
//

#import "MasterVolumeViewController.h"

@interface MasterVolumeViewController ()

@end

@implementation MasterVolumeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
}


- (IBAction)volumeChanged:(id)sender
{
    self.VolumeLabel.stringValue = self.VolumeSlider.stringValue;
}

@end
