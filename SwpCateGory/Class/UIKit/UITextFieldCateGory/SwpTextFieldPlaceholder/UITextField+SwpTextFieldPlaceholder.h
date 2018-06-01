//
//  UITextField+SwpTextFieldPlaceholder.h
//  swp_song
//
//  Created by swp_song on 2018/6/1.
//  Copyright © 2018年 swp-song. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@interface UITextField (SwpTextFieldPlaceholder)

/**
 *  @author swp_song
 *
 *  @brief  swpPlaceholderColor:    ( set placeholder color )
 *
 *  @param  color   color
 */
- (void)swpPlaceholderColor:(UIColor * _Nullable)color;

/**
 *  @author swp_song
 *
 *  @brief  swpPlaceholderColor ( set placeholder color )
 */
- (__kindof UITextField * _Nonnull (^)(UIColor * _Nullable))swpPlaceholderColor;

/**
 *  @author swp_song
 *
 *  @brief  swpPlaceholderFont: ( set placeholder font )
 *
 *  @param  font    font
 */
- (void)swpPlaceholderFont:(UIFont * _Nullable)font;

/**
 *  @author swp_song
 *
 *  @brief  swpPlaceholderFont  ( set placeholder font )
 */
- (__kindof UITextField * _Nonnull (^)(UIFont * _Nullable))swpPlaceholderFont;

/**
 *  @author swp_song
 *
 *  @brief  swpPlaceholderSystemFontOfSize: ( set placeholder system font size )
 *
 *  @param  size    size
 */
- (void)swpPlaceholderSystemFontOfSize:(CGFloat)size;

/**
 *  @author swp_song
 *
 *  @brief  swpPlaceholderSystemFontOfSize  ( set placeholder system font size )
 */
- (__kindof UITextField * _Nonnull (^)(CGFloat))swpPlaceholderSystemFontOfSize;

@end
NS_ASSUME_NONNULL_END
