//
//  UIColor+SwpColor.m
//  swp_song
//
//  Created by swp_song on 16/6/3.
//  Copyright © 2016年 swp_song. All rights reserved.
//

#import "UIColor+SwpColor.h"

@implementation UIColor (SwpColor)

#pragma mark - System
/**
 *  @author swp_song
 *
 *  @brief  swpBlackColor   ( blackColor, 0.0 white )
 */
+ (__kindof UIColor * _Nonnull (^)(void))swpBlackColor {
    return ^(void) {
        return [UIColor blackColor];
    };
}

/**
 *  @author swp_song
 *
 *  @brief  swpDarkGrayColor    ( darkGrayColor, 0.333 white )
 */
+ (__kindof UIColor * _Nonnull (^)(void))swpDarkGrayColor {
    return ^(void) {
        return [UIColor darkGrayColor];
    };
}

/**
 *  @author swp_song
 *
 *  @brief  swpLightGrayColor   ( lightGrayColor, 0.667 white )
 */
+ (__kindof UIColor * _Nonnull (^)(void))swpLightGrayColor {
    return ^(void) {
        return [UIColor lightGrayColor];
    };
}

/**
 *  @author swp_song
 *
 *  @brief  swpWhiteColor   ( whiteColor, 1.0 white )
 */
+ (__kindof UIColor * _Nonnull (^)(void))swpWhiteColor {
    return ^(void) {
        return [UIColor whiteColor];
    };
}

/**
 *  @author swp_song
 *
 *  @brief  swpGrayColor   ( grayColor, 0.5 white )
 */
+ (__kindof UIColor * _Nonnull (^)(void))swpGrayColor {
    return ^(void) {
        return [UIColor grayColor];
    };
}


/**
 *  @author swp_song
 *
 *  @brief  swpRedColor   ( redColor, 1.0, 0.0, 0.0 RGB )
 */
+ (__kindof UIColor * _Nonnull (^)(void))swpRedColor {
    return ^(void) {
        return [UIColor redColor];
    };
}

/**
 *  @author swp_song
 *
 *  @brief  swpGreenColor   ( greenColor, 0.0, 1.0, 0.0 RGB )
 */
+ (__kindof UIColor * _Nonnull (^)(void))swpGreenColor {
    return ^(void) {
        return [UIColor greenColor];
    };
}

/**
 *  @author swp_song
 *
 *  @brief  swpBlueColor    ( blueColor, 0.0, 0.0, 1.0 RGB )
 */
+ (__kindof UIColor * _Nonnull (^)(void))swpBlueColor {
    return ^(void) {
        return [UIColor blueColor];
    };
}

/**
 *  @author swp_song
 *
 *  @brief  swpCyanColor    ( cyanColor, 0.0, 1.0, 1.0 RGB )
 */
+ (__kindof UIColor * _Nonnull (^)(void))swpCyanColor {
    return ^(void) {
        return [UIColor cyanColor];
    };
}

/**
 *  @author swp_song
 *
 *  @brief  swpYellowColor  ( yellowColor, 1.0, 1.0, 0.0 RGB )
 */
+ (__kindof UIColor * _Nonnull (^)(void))swpYellowColor {
    return ^(void) {
        return [UIColor yellowColor];
    };
}


/**
 *  @author swp_song
 *
 *  @brief  swpMagentaColor ( magentaColor, 1.0, 0.0, 1.0 RGB )
 */
+ (__kindof UIColor * _Nonnull (^)(void))swpMagentaColor {
    return ^(void) {
        return [UIColor magentaColor];
    };
}


/**
 *  @author swp_song
 *
 *  @brief  swpOrangeColor  ( orangeColor, 1.0, 0.5, 0.0 RGB )
 */
+ (__kindof UIColor * _Nonnull (^)(void))swpOrangeColor {
    return ^(void) {
        return [UIColor orangeColor];
    };
}


/**
 *  @author swp_song
 *
 *  @brief  swpPurpleColor  ( purpleColor, 0.5, 0.0, 0.5 RGB )
 */
+ (__kindof UIColor * _Nonnull (^)(void))swpPurpleColor {
    return ^(void) {
        return [UIColor purpleColor];
    };
}

/**
 *  @author swp_song
 *
 *  @brief  swpBrownColor   ( brownColor, 0.6, 0.4, 0.2 RGB )
 */
+ (__kindof UIColor * _Nonnull (^)(void))swpBrownColor {
    return ^(void) {
        return [UIColor brownColor];
    };
}

/**
 *  @author swp_song
 *
 *  @brief  swpClearColor   ( brownColor, 0.0 white, 0.0 alpha )
 */
+ (__kindof UIColor * _Nonnull (^)(void))swpClearColor {
    return ^(void) {
        return [UIColor clearColor];
    };
}

#pragma mark - Custom
/**
 *  @author swp_song
 *
 *  @brief  swpColorWithHexadecimal ( 使用十六进制值设置颜色 )
 */
+ (__kindof UIColor * _Nonnull (^)(NSInteger))swpColorWithHexadecimal {
    return ^(NSInteger hexadecimalValue){
        return [self.class swpColorWithHexadecimal:hexadecimalValue];
    };
}

/**
 *  @author swp_song
 *
 *  @brief  swpColorWithHexadecimal:    ( 使用十六进制值设置颜色 )
 *
 *  @param  hexadecimalValue    hexadecimalValue
 *
 *  @return UIColor
 */
+ (__kindof UIColor *)swpColorWithHexadecimal:(NSInteger)hexadecimalValue {
    return [UIColor swpColorWithHexadecimal:hexadecimalValue alpha:1.0];
}


/**
 *  @author swp_song
 *
 *  @brief  swpColorWithHexadecimal ( 使用十六进制值设置颜色 )
 */
+ (__kindof UIColor * _Nonnull (^)(NSInteger, CGFloat))swpColorWithHexadecimalAlpha {
    return ^(NSInteger hexadecimalValue, CGFloat alpha){
        return [self.class swpColorWithHexadecimal:hexadecimalValue alpha:alpha];
    };
}


/**
 *  @author swp_song
 *
 *  @brief  swpColorWithHexadecimal:alpha:  ( 使用十六进制值设置颜色 )
 *
 *  @param  hexadecimalValue    hexadecimalValue
 *
 *  @param  alpha               alpha
 *
 *  @return UIColor
 */
+ (__kindof UIColor *)swpColorWithHexadecimal:(NSInteger)hexadecimalValue alpha:(CGFloat)alpha {
    return [UIColor colorWithRed:((float)((hexadecimalValue & 0xFF0000) >> 16)) / 255.0 green:((float)((hexadecimalValue & 0xFF00) >> 8)) / 255.0 blue:((float)(hexadecimalValue & 0xFF)) / 255.0 alpha:alpha];
}


/**
 *  @author swp_song
 *
 *  @brief  swpColorWithHexadecimalString   ( 使用字符串设置十六进制颜色 0x Or # < Null 颜色 Clear Color > )
 */
+ (__kindof UIColor * _Nonnull (^)(NSString * _Nullable))swpColorWithHexadecimalString {
    return ^(NSString *hexadecimalStringValue) {
        return [self.class swpColorWithHexadecimalString:hexadecimalStringValue];
    };
}


/**
 *  @author swp_song
 *
 *  @brief  swpColorWithHexadecimalString:  ( 使用字符串设置十六进制颜色 0x Or # < Null 颜色 Clear Color > )
 *
 *  @param  hexadecimalStringValue  hexadecimalStringValue
 *
 *  @return UIColor
 */
+ (__kindof UIColor *)swpColorWithHexadecimalString:(NSString * _Nullable)hexadecimalStringValue {
    return [UIColor swpColorWithHexadecimalString:hexadecimalStringValue alpha:1.0];
}


/**
 *  @author swp_song
 *
 *  @brief  swpColorWithHexadecimalStringAlpha  ( 使用字符串设置十六进制颜色 0x Or # < Null 颜色 Clear Color > )
 */
+ (__kindof UIColor * _Nonnull (^)(NSString * _Nullable, CGFloat))swpColorWithHexadecimalStringAlpha {
    return ^(NSString *hexadecimalStringValue, CGFloat alpha) {
        return [self.class swpColorWithHexadecimalString:hexadecimalStringValue alpha:alpha];
    };
}

/**
 *  @author swp_song
 *
 *  @brief  swpColorWithHexadecimalString:alpha:    ( 使用字符串设置十六进制颜色 0x Or # < Null 颜色 Clear Color >  )
 *
 *  @param  hexadecimalStringValue  hexadecimalStringValue
 *
 *  @param  alpha                   alpha
 *
 *  @return UIColor
 */
+ (__kindof UIColor *)swpColorWithHexadecimalString:(NSString * _Nullable)hexadecimalStringValue alpha:(CGFloat)alpha {
    
    NSString *cString = [[hexadecimalStringValue stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];
    
    // String should be 6 or 8 characters
    if ([cString length] < 6)  return [UIColor clearColor];
    
    // strip "0X" or "#" if it appears
    if ([cString hasPrefix:@"0X"]) cString = [cString substringFromIndex:2];
    if ([cString hasPrefix:@"#"])  cString = [cString substringFromIndex:1];
    if ([cString length] != 6) return [UIColor clearColor];
    
    // Separate into r, g, b substrings
    NSRange range;
    range.location    = 0;
    range.length      = 2;
    //r
    NSString *rString = [cString substringWithRange:range];
    //g
    range.location    = 2;
    NSString *gString = [cString substringWithRange:range];
    //b
    range.location    = 4;
    NSString *bString = [cString substringWithRange:range];
    // Scan values
    unsigned int r, g, b;
    [[NSScanner scannerWithString:rString] scanHexInt:&r];
    [[NSScanner scannerWithString:gString] scanHexInt:&g];
    [[NSScanner scannerWithString:bString] scanHexInt:&b];
    
    return [self swpColorWithRGB:(float)r green:(float)g blue:(float)b alpha:alpha];
}


/**
 *  @author swp_song
 *
 *  @brief  swpColorWithRGB ( 使用 R G B 色值设置颜色 )
 */
+ (__kindof UIColor * _Nonnull (^)(CGFloat, CGFloat, CGFloat))swpColorWithRGB {
    return ^(CGFloat red, CGFloat green, CGFloat blue) {
        return [self.class swpColorWithRGB:red green:green blue:blue];
    };
}

/**
 *  @author swp_song
 *
 *  @brief  swpColorWithRGB:green:blue: ( 使用 R G B 色值设置颜色 )
 *
 *  @param  red     red
 *
 *  @param  green   green
 *
 *  @param  blue    blue
 *
 *  @return UIColor
 */
+ (__kindof UIColor *)swpColorWithRGB:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue {
    return [UIColor swpColorWithRGB:red green:green blue:blue alpha:1.0];
}

/**
 *  @author swp_song
 *
 *  @brief  swpColorWithRGB ( 使用 R G B 色值设置颜色 )
 */
+ (__kindof UIColor * _Nonnull (^)(CGFloat, CGFloat, CGFloat, CGFloat))swpColorWithRGBA {
    return ^(CGFloat red, CGFloat green, CGFloat blue, CGFloat alpha) {
        return [self.class swpColorWithRGB:red green:green blue:blue alpha:alpha];
    };
}

/**
 *  @author swp_song
 *
 *  @brief  swpColorWithRGB:green:blue:alpha:   ( 使用 R G B 色值设置颜色 )
 *
 *  @param  red     red
 *
 *  @param  green   green
 *
 *  @param  blue    blue
 *
 *  @param  alpha   alpha
 *
 *  @return UIColor
 */
+ (__kindof UIColor *)swpColorWithRGB:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue alpha:(CGFloat)alpha {
    return [UIColor colorWithRed:red / 255.0 green:green / 255.0 blue:blue / 255.0 alpha:alpha];
}

/**
 *  @author swp_song
 *
 *  @brief  swpColorWithRandom  ( 生成一个随机色 )
 */
+ (__kindof UIColor * _Nonnull (^)(void))swpColorWithRandomChain {
    return ^(void) {
        return [self.class swpColorWithRandom];
    };
}

/**
 *  @author swp_song
 *
 *  @brief  swpColorWithRandom  ( 生成一个随机色 )
 *
 *  @return UIColor
 */
+ (__kindof UIColor *)swpColorWithRandom {
    return [UIColor swpColorWithRGB:arc4random_uniform(256) green:arc4random_uniform(256) blue:arc4random_uniform(256)];
}



#pragma mark - Test

// 注意转换出来的字符串不带＃号, 测试方法
+ (NSString*)toStrByUIColor:(UIColor *)color {
    CGFloat r, g, b, a;
    [color getRed:&r green:&g blue:&b alpha:&a];
    NSLog(@"%i", (int)(r * 255.0f));
    NSLog(@"%i", (int)(g * 255.0f));
    NSLog(@"%i", (int)(b * 255.0f));
    int rgb = (int) (r * 255.0f) << 16 | (int)(g * 255.0f) << 8 | (int)(b * 255.0f) << 0;
    return [NSString stringWithFormat:@"%06x", rgb].uppercaseString;
}

+ (NSString*)toStrByUIColor1:(NSInteger)hexadecimalValue {
    
    NSLog(@"%ld", (long)(hexadecimalValue & 0xFF0000) >> 16);
    NSLog(@"%ld", (long)(hexadecimalValue & 0xFF00) >> 8);
    NSLog(@"%ld", (long)(hexadecimalValue & 0xFF));
    return nil;
}


@end
