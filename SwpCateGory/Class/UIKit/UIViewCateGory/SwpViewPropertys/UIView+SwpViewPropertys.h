//
//  UIView+SwpViewPropertys.h
//  SwpCateGoryDemo
//
//  Created by swp_song on 2018/6/3.
//  Copyright © 2018年 swp-song. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@interface UIView (SwpViewPropertys)

/**
 *  @author swp_song
 *
 *  @brief  swpBackgroundColor  ( set backgroundColor )
 */
- (__kindof UIView * _Nonnull (^)(UIColor * _Nullable))swpBackgroundColor;

/**
 *  @author swp_song
 *
 *  @brief  swpBorderWidth  ( set layer borderWidth )
 */
- (__kindof UIView * _Nonnull (^)(CGFloat))swpBorderWidth;

/**
 *  @author swp_song
 *
 *  @brief  swpBorderWidth  ( set layer cornerRadius )
 */
- (__kindof UIView * _Nonnull (^)(CGFloat))swpCornerRadius;

/**
 *  @author swp_song
 *
 *  @brief  swpCornerRadiusMasks    ( set layer cornerRadius, masksToBounds )
 */
- (__kindof UIView * _Nonnull (^)(CGFloat))swpCornerRadiusMasks;

/**
 *  @author swp_song
 *
 *  @brief  swpMasksToBounds    ( set layer masksToBounds )
 */
- (__kindof UIView * _Nonnull (^)(BOOL))swpMasksToBounds;

/**
 *  @author swp_song
 *
 *  @brief  swpBorderColor  ( set layer borderColor )
 */
- (__kindof UIView * _Nonnull (^)(UIColor *))swpBorderColor;

@end
NS_ASSUME_NONNULL_END
