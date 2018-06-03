//
//  UITextField+SwpTextFieldPropertys.h
//  swp_song
//
//  Created by swp_song on 2018/6/2.
//  Copyright © 2018年 swp-song. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <SwpCateGory/UIView+SwpViewPropertys.h>

NS_ASSUME_NONNULL_BEGIN
@interface UITextField (SwpTextFieldPropertys)

/**
 *  @author swp_song
 *
 *  @brief  swpText ( 设置 text )
 */
- (__kindof UITextField * _Nonnull (^)(NSString * _Nullable))swpText;

/**
 *  @author swp_song
 *
 *  @brief  swpTextColor    ( 设置 textColor )
 */
- (__kindof UITextField * _Nonnull (^)(UIColor *))swpTextColor;

/**
 *  @author swp_song
 *
 *  @brief  swpPlaceholder  ( 设置 swpPlaceholder )
 */
- (__kindof UITextField * _Nonnull (^)(NSString * _Nullable))swpPlaceholder;

/**
 *  @author swp_song
 *
 *  @brief  swpFont ( 设置 text )
 */
- (__kindof UITextField * _Nonnull (^)(UIFont * _Nullable))swpFont;

/**
 *  @author swp_song
 *
 *  @brief  swpSystemFontSize   ( 设置 System Font Size )
 */
- (__kindof UITextField * _Nonnull (^)(CGFloat))swpSystemFontSize;

/**
 *  @author swp_song
 *
 *  @brief  swpKeyboardType ( 设置 keyboardType )
 */
- (__kindof UITextField * _Nonnull (^)(UIKeyboardType))swpKeyboardType;

/**
 *  @author swp_song
 *
 *  @brief  swpSecureTextEntry  ( 设置 swpSecureTextEntry )
 */
- (__kindof UITextField * _Nonnull (^)(BOOL))swpSecureTextEntry;

/**
 *  @author swp_song
 *
 *  @brief  swpClearButtonMode  ( 设置 clearButtonMode )
 */
- (__kindof UITextField * _Nonnull (^)(UITextFieldViewMode))swpClearButtonMode;

/**
 *  @author swp_song
 *
 *  @brief  swpLeftView ( 设置左侧 view )
 */
- (__kindof UITextField * _Nonnull (^)(UIView *, UITextFieldViewMode))swpLeftView;

/**
 *  @author swp_song
 *
 *  @brief  swpRightView    ( 设置右侧 view )
 */
- (__kindof UITextField * _Nonnull (^)(UIView *, UITextFieldViewMode))swpRightView;

/**
 *  @author swp_song
 *
 *  @brief  swpTextLeftMargins  ( The left margin of the text )
 */
- (__kindof UITextField * _Nonnull (^)(CGFloat))swpTextLeftMargins;

/**
 *  @author swp_song
 *
 *  @brief  swpTextLeftDefaultMargins   ( The left default margin of the text  )
 */
- (__kindof UITextField * _Nonnull (^)(void))swpTextLeftDefaultMargins;

/**
 *  @author swp_song
 *
 *  @brief  swpLeftImage    ( The left imageView  )
 */
- (__kindof UITextField * _Nonnull (^)(UIImage *image))swpLeftImage;




#pragma mark - TextFieldPlaceholder

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
