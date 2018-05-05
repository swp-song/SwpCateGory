//
//  UIButton+SwpButtonUtils.h
//  swp_song
//
//  Created by swp_song on 2018/5/6.
//  Copyright © 2018年 swp-song. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger, SwpButtonGradientDirection) {
    
    SwpButtonGradientDirectionTopToBottom,
    SwpButtonGradientDirectionLeftToRight,
    SwpButtonGradientDirectionLeftTopToRightBottom,
    SwpButtonGradientDirectionLeftBottomToRightTop,
};
@interface UIButton (SwpButtonUtils)


/**
 *  @author swp_song
 *
 *  @brief  swpButtonUtilsSetGradientColor:colors:scales:direction:colorNumber: ( 设置按钮，渐变颜色，最多三种颜色)
 *
 *  @param  size        size
 *
 *  @param  colors      颜色数组
 *
 *  @param  scales      颜色比例数组
 *
 *  @param  direction   渐变方向
 *
 *  @return UIButton
 */
- (UIButton *)swpButtonUtilsSetGradientColor:(CGSize)size colors:(NSArray<UIColor *> *)colors scales:(NSArray<NSNumber *> *)scales direction:(SwpButtonGradientDirection)direction;

/**
 *  @author swp_song
 *
 *  @brief  swpButtonUtilsSetGradientColor  ( 设置按钮，渐变颜色，最多三种颜色 )
 */
- (__kindof UIButton * _Nonnull (^)(CGSize, NSArray<UIColor *> * _Nonnull, NSArray<NSNumber *> * _Nonnull, SwpButtonGradientDirection))swpButtonUtilsSetGradientColor;

/**
 *  @author swp_song
 *
 *  @brief  swpButtonUtilsSetGradientColor:colors:scales:direction:colorNumber: ( 设置按钮，渐变颜色 )
 *
 *  @param  size        size
 *
 *  @param  colors      颜色数组
 *
 *  @param  scales      颜色比例数组
 *
 *  @param  direction   渐变方向
 *
 *  @param  colorNumber 几个渐变颜色
 *
 *  @return UIButton
 */
- (UIButton *)swpButtonUtilsSetGradientColor:(CGSize)size colors:(NSArray<UIColor *> *)colors scales:(NSArray<NSNumber *> *)scales direction:(SwpButtonGradientDirection)direction colorNumber:(NSInteger)colorNumber;

@end
NS_ASSUME_NONNULL_END
