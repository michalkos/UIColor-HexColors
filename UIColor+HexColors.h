//
//  UIColor+HexColors.h
//
//  Created by Michal Kos on 05.06.13.
//  Copyright (c) 2013 Michal Kos. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (HexColors)

/**
 *  Color with Hex value and aplha
 *
 *  @param hexValue Hex value (0xFFFFFF)
 *  @param alpha    Aplha
 *  @return UIColor
 */
+ (UIColor *)colorWithHexValue:(uint)hexValue andAlpha:(CGFloat)alpha;

/**
 *  Color with Hex string and aplha
 *
 *  @param hexString Hex string (#FFFFFF)
 *  @param alpha     Aplha
 *  @return UIColor
 */
+ (UIColor *)colorWithHexString:(NSString *)hexString andAlpha:(CGFloat)alpha;

/**
 *  Color with Hex value
 *
 *  @param hexValue Hex value (0xFFFFFF)
 *  @return UIColor
 */
+ (UIColor *)colorWithHexValue:(uint)hexValue;

/**
 *  Color with Hex string
 *
 *  @param hexString Hex string (#FFFFFF)
 *  @return UIColor
 */
+ (UIColor *)colorWithHexString:(NSString *)hexString;

@end
