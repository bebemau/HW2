//
//  NumberDisplayViewController.h
//  HW2
//
//  Created by keren man on 1/24/15.
//  Copyright (c) 2015 keren man. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface NumberDisplayViewController : NSViewController

@property (weak) IBOutlet NSTextField *InputNumber;
@property (weak) IBOutlet NSTextField *NumberResult;

@property (weak) IBOutlet NSMatrix *StyleSelector;
@property (strong, nonatomic) NSNumberFormatter *numberFormatter;
@end
