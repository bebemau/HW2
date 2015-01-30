//
//  NumberDisplayViewController.m
//  HW2
//
//  Created by keren man on 1/24/15.
//  Copyright (c) 2015 keren man. All rights reserved.
//

#import "NumberDisplayViewController.h"

@interface NumberDisplayViewController ()

@end

@implementation NumberDisplayViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
    self.numberFormatter  = [NSNumberFormatter new];
    
}

-(NSString*)ReturnFormattedNumber:(NSInteger)input StyleFlag : (long) styleSelected {
    switch (styleSelected) {
        case 0:
        {
            self.numberFormatter.numberStyle = NSNumberFormatterNoStyle;
            break;
        }
        case 1:
        {
            self.numberFormatter.numberStyle = NSNumberFormatterDecimalStyle;
            break;
        }
        case 2:
        {
            self.numberFormatter.numberStyle = NSNumberFormatterCurrencyStyle;
            break;
        }
        case 3:
        {
            self.numberFormatter.numberStyle = NSNumberFormatterPercentStyle;
            break;
        }
        case 4:
        {
            self.numberFormatter.numberStyle = NSNumberFormatterScientificStyle;
            break;
        }
        case 5:
        {
            self.numberFormatter.numberStyle = NSNumberFormatterSpellOutStyle;
            break;
        }
        default:
            break;
    }
    NSNumber *value = [NSNumber numberWithInteger: input];
    NSLog(@"%@", value);
    NSString *formatted = [self.numberFormatter stringFromNumber : value];
    NSLog(@"%@", formatted);
    NSLog(@"%@", value);
    return formatted;
}

- (IBAction)StyleSelector_Changed:(id)sender {
    NSLog(@"%ld", (long)self.StyleSelector.selectedRow);
    
    self.NumberResult.stringValue = [self ReturnFormattedNumber: self.InputNumber.integerValue StyleFlag: (long)self.StyleSelector.selectedRow ];
}


- (IBAction)DisplayClicked:(id)sender {
    
    self.NumberResult.stringValue = [self ReturnFormattedNumber: self.InputNumber.integerValue StyleFlag: (long)self.StyleSelector.selectedRow ];
}

@end
