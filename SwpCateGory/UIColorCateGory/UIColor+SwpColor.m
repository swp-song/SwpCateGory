//
//  UIColor+SwpColor.m
//  swp_song
//
//  Created by swp_song on 16/6/3.
//  Copyright © 2016年 swp_song. All rights reserved.
//

#import "UIColor+SwpColor.h"

@implementation UIColor (SwpColor)


/*!
 *  @author swp_song
 *
 *  @brief  swpColorWithHexadecimal: ( 使用 十六进制值 设置 颜色 )
 *
 *  @param  hexadecimalValue
 *
 *  @return UIColor
 */
+ (UIColor *)swpColorWithHexadecimal:(NSInteger)hexadecimalValue {
    return [UIColor colorWithRed:((float)((hexadecimalValue & 0xFF0000) >> 16)) / 255.0 green:((float)((hexadecimalValue & 0xFF00) >> 8)) / 255.0 blue:((float)(hexadecimalValue & 0xFF)) / 255.0 alpha:1.0];
}


/*!
 *  @author swp_song
 *
 *  @brief  swpColorWithHexadecimal:alpha: ( 使用 十六进制值 设置 颜色 )
 *
 *  @param  hexadecimalValue
 *
 *  @param  alpha
 *
 *  @return UIColor
 */
+ (UIColor *)swpColorWithHexadecimal:(NSInteger)hexadecimalValue alpha:(CGFloat)alpha {
    return [UIColor colorWithRed:((float)((hexadecimalValue & 0xFF0000) >> 16)) / 255.0 green:((float)((hexadecimalValue & 0xFF00) >> 8)) / 255.0 blue:((float)(hexadecimalValue & 0xFF)) / 255.0 alpha:alpha];
}


/*!
 *  @author swp_song
 *
 *  @brief  swpColorWithRGB:green:blue: ( 使用 R G B 色值 设置 颜色 )
 *
 *  @param  red
 *
 *  @param  green
 *
 *  @param  blue
 *
 *  @return UIColor
 */
+ (UIColor *)swpColorWithRGB:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue {
    return [UIColor colorWithRed:red / 255.0 green:green / 255.0 blue:blue / 255.0 alpha:1.0];
}


/*!
 *  @author swp_song
 *
 *  @brief  swpColorWithRGB:green:blue:alpha:   ( 使用 R G B 色值 设置 颜色 )
 *
 *  @param  red
 *
 *  @param  green
 *
 *  @param  blue
 *
 *  @param  alpha
 *
 *  @return UIColor
 */
+ (UIColor *)swpColorWithRGB:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue alpha:(CGFloat)alpha {
    return [UIColor colorWithRed:red / 255.0 green:green / 255.0 blue:blue / 255.0 alpha:alpha];
}



@end
