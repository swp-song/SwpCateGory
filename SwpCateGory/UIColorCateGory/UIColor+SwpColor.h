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


/*!
 *  @author swp_song
 *
 *  @brief  swpColorWithHexadecimal: ( 使用 十六进制值 设置 颜色 )
 *
 *  @param  hexadecimalValue
 *
 *  @return UIColor
 */
+ (UIColor *)swpColorWithHexadecimal:(NSInteger)hexadecimalValue;

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
+ (UIColor *)swpColorWithHexadecimal:(NSInteger)hexadecimalValue alpha:(CGFloat)alpha;


/*!
 *  @author swp_song
 *
 *  @brief  swpColorWithRGB:green:blue: ( 使用 R G B 色值 设置 颜色  )
 *
 *  @param  red
 *
 *  @param  green
 *
 *  @param  blue
 *
 *  @return UIColor
 */
+ (UIColor *)swpColorWithRGB:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue;

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
+ (UIColor *)swpColorWithRGB:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue alpha:(CGFloat)alpha;



@end
NS_ASSUME_NONNULL_END
