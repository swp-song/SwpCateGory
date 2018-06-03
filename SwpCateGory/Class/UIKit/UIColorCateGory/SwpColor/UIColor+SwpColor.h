//
//  UIColor+SwpColor.h
//  swp_song
//
//  Created by swp_song on 16/6/3.
//  Copyright © 2016年 swp_song. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIColor (SwpColor)


#pragma mark - System

/**
 *  @author swp_song
 *
 *  @brief  swpBlackColor   ( blackColor )
 */
+ (__kindof UIColor * _Nonnull (^)(void))swpBlackColor;

/**
 *  @author swp_song
 *
 *  @brief  swpDarkGrayColor    ( darkGrayColor, 0.333 white )
 */
+ (__kindof UIColor * _Nonnull (^)(void))swpDarkGrayColor;

/**
 *  @author swp_song
 *
 *  @brief  swpLightGrayColor   ( lightGrayColor, 0.667 white )
 */
+ (__kindof UIColor * _Nonnull (^)(void))swpLightGrayColor;

/**
 *  @author swp_song
 *
 *  @brief  swpWhiteColor   ( whiteColor, 1.0 white )
 */
+ (__kindof UIColor * _Nonnull (^)(void))swpWhiteColor;

/**
 *  @author swp_song
 *
 *  @brief  swpGrayColor   ( grayColor, 0.5 white )
 */
+ (__kindof UIColor * _Nonnull (^)(void))swpGrayColor;

/**
 *  @author swp_song
 *
 *  @brief  swpRedColor   ( redColor, 1.0, 0.0, 0.0 RGB )
 */
+ (__kindof UIColor * _Nonnull (^)(void))swpRedColor;

/**
 *  @author swp_song
 *
 *  @brief  swpGreenColor   ( greenColor, 0.0, 1.0, 0.0 RGB )
 */
+ (__kindof UIColor * _Nonnull (^)(void))swpGreenColor;

/**
 *  @author swp_song
 *
 *  @brief  swpBlueColor    ( blueColor, 0.0, 0.0, 1.0 RGB )
 */
+ (__kindof UIColor * _Nonnull (^)(void))swpBlueColor;

/**
 *  @author swp_song
 *
 *  @brief  swpCyanColor    ( cyanColor, 0.0, 1.0, 1.0 RGB )
 */
+ (__kindof UIColor * _Nonnull (^)(void))swpCyanColor;

/**
 *  @author swp_song
 *
 *  @brief  swpYellowColor  ( yellowColor, 1.0, 1.0, 0.0 RGB )
 */
+ (__kindof UIColor * _Nonnull (^)(void))swpYellowColor;

/**
 *  @author swp_song
 *
 *  @brief  swpMagentaColor ( magentaColor, 1.0, 0.0, 1.0 RGB )
 */
+ (__kindof UIColor * _Nonnull (^)(void))swpMagentaColor;

/**
 *  @author swp_song
 *
 *  @brief  swpOrangeColor  ( orangeColor, 1.0, 0.5, 0.0 RGB )
 */
+ (__kindof UIColor * _Nonnull (^)(void))swpOrangeColor;

/**
 *  @author swp_song
 *
 *  @brief  swpPurpleColor  ( purpleColor, 0.5, 0.0, 0.5 RGB )
 */
+ (__kindof UIColor * _Nonnull (^)(void))swpPurpleColor;

/**
 *  @author swp_song
 *
 *  @brief  swpBrownColor   ( brownColor, 0.6, 0.4, 0.2 RGB )
 */
+ (__kindof UIColor * _Nonnull (^)(void))swpBrownColor;

/**
 *  @author swp_song
 *
 *  @brief  swpClearColor   ( brownColor, 0.0 white, 0.0 alpha )
 */
+ (__kindof UIColor * _Nonnull (^)(void))swpClearColor;


#pragma mark - Custom
/**
 *  @author swp_song
 *
 *  @brief  swpColorWithHexadecimal ( 使用十六进制值设置颜色 )
 */
+ (__kindof UIColor * _Nonnull (^)(NSInteger))swpColorWithHexadecimal;

/**
 *  @author swp_song
 *
 *  @brief  swpColorWithHexadecimal:    ( 使用十六进制值设置颜色 )
 *
 *  @param  hexadecimalValue    hexadecimalValue
 *
 *  @return UIColor
 */
+ (__kindof UIColor *)swpColorWithHexadecimal:(NSInteger)hexadecimalValue;


/**
 *  @author swp_song
 *
 *  @brief  swpColorWithHexadecimal ( 使用十六进制值设置颜色 )
 */
+ (__kindof UIColor * _Nonnull (^)(NSInteger, CGFloat))swpColorWithHexadecimalAlpha;

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
+ (__kindof UIColor *)swpColorWithHexadecimal:(NSInteger)hexadecimalValue alpha:(CGFloat)alpha;

/**
 *  @author swp_song
 *
 *  @brief  swpColorWithHexadecimalString   ( 使用字符串设置十六进制颜色 0x Or # < Null 颜色 Clear Color > )
 */
+ (__kindof UIColor * _Nonnull (^)(NSString * _Nullable))swpColorWithHexadecimalString;

/**
 *  @author swp_song
 *
 *  @brief  swpColorWithHexadecimalString:  ( 使用字符串设置十六进制颜色 0x Or # < Null 颜色 Clear Color > )
 *
 *  @param  hexadecimalStringValue  hexadecimalStringValue
 *
 *  @return UIColor
 */
+ (__kindof UIColor *)swpColorWithHexadecimalString:(NSString * _Nullable)hexadecimalStringValue;

/**
 *  @author swp_song
 *
 *  @brief  swpColorWithHexadecimalStringAlpha  ( 使用字符串设置十六进制颜色 0x Or # < Null 颜色 Clear Color > )
 */
+ (__kindof UIColor * _Nonnull (^)(NSString * _Nullable, CGFloat))swpColorWithHexadecimalStringAlpha;


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
+ (__kindof UIColor *)swpColorWithHexadecimalString:(NSString * _Nullable)hexadecimalStringValue alpha:(CGFloat)alpha;


/**
 *  @author swp_song
 *
 *  @brief  swpColorWithRGB ( 使用 R G B 色值设置颜色 )
 */
+ (__kindof UIColor * _Nonnull (^)(CGFloat, CGFloat, CGFloat))swpColorWithRGB;

/**
 *  @author swp_song
 *
 *  @brief  swpColorWithRGB:green:blue: ( 使用 R G B 色值设置颜色  )
 *
 *  @param  red     red
 *
 *  @param  green   green
 *
 *  @param  blue    blue
 *
 *  @return UIColor
 */
+ (__kindof UIColor *)swpColorWithRGB:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue;

/**
 *  @author swp_song
 *
 *  @brief  swpColorWithRGB ( 使用 R G B 色值设置颜色 )
 */
+ (__kindof UIColor * _Nonnull (^)(CGFloat, CGFloat, CGFloat, CGFloat))swpColorWithRGBA;

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
+ (__kindof UIColor *)swpColorWithRGB:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue alpha:(CGFloat)alpha;

/**
 *  @author swp_song
 *
 *  @brief  swpColorWithRandom  ( 生成一个随机色 )
 */
+ (__kindof UIColor * _Nonnull (^)(void))swpColorWithRandomChain;

/**
 *  @author swp_song
 *
 *  @brief  swpColorWithRandom_ ( 生成一个随机色 )
 *
 *  @return UIColor
 */
+ (__kindof UIColor *)swpColorWithRandom;

@end
NS_ASSUME_NONNULL_END
