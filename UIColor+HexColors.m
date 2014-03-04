//
//  UIColor+HexColors.m
//
//  Created by Michal Kos on 05.06.13.
//  Copyright (c) 2013 Michal Kos. All rights reserved.
//

#import "UIColor+HexColors.h"

@implementation UIColor (HexColors)

+ (UIColor *)colorWithHexValue:(uint)hexValue andAlpha:(CGFloat)alpha {
    return [UIColor
            colorWithRed:((float)((hexValue & 0xFF0000) >> 16))/255.0
            green:((float)((hexValue & 0xFF00) >> 8))/255.0
            blue:((float)(hexValue & 0xFF))/255.0
            alpha:alpha];
}

+ (UIColor *)colorWithHexString:(NSString *)hexString andAlpha:(CGFloat)alpha {
    UIColor *color;
    hexString = [hexString stringByReplacingOccurrencesOfString:@"#"
                                                     withString:@"0x"];
    uint hexValue;
    if ([[NSScanner scannerWithString:hexString] scanHexInt:&hexValue]) {
        color = [self colorWithHexValue:hexValue andAlpha:alpha];
        
    } else {
        color = [self blackColor];
    }
    
    return color;
}

+ (UIColor *)colorWithHexValue:(uint)hexValue {
    return [self colorWithHexValue:hexValue andAlpha:1.f];
}

+ (UIColor *)colorWithHexString:(NSString *)hexString {
    return [self colorWithHexString:hexString andAlpha:1.f];
}

@end
