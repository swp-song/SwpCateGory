//
//  SwpCircleAnimationButton.h
//  swp_song
//
//  Created by swp_song on 2018/5/2.
//  Copyright © 2018年 swp-song. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SwpCircleAnimationButton;


NS_ASSUME_NONNULL_BEGIN

#define SWP_CIRCLE_ANIMATION_BUTTON_INFORMATION_DEPRECATED(instead) NS_DEPRECATED_IOS(1_0_0, 2_7_0, instead)

/**
 *  @author swp_song
 *
 *  @brief  SwpCircleAnimationButtonAnimationBlock  ( SwpCircleAnimationButton 动画回调参数 )
 *
 *  @param  button  button
 */
typedef void(^SwpCircleAnimationButtonAnimationBlock)(SwpCircleAnimationButton *button);

@protocol SwpCircleAnimationButtonDelegate <NSObject>

@optional

/**
 *  @author swp_song
 *
 *  @brief  swpCircleAnimationButtonDidStartAnimation:  ( SwpCircleAnimationButton 代理方法，动画开始调用 )
 *
 *  @param  button  button
 */
- (void)swpCircleAnimationButtonDidStartAnimation:(SwpCircleAnimationButton *)button;

/**
 *  @author swp_song
 *
 *  @brief  swpCircleAnimationButtonWillFinishAnimation:    ( SwpCircleAnimationButton 代理方法，动画将要接结束调用 )
 *
 *  @param  button  button
 */
- (void)swpCircleAnimationButtonWillFinishAnimation:(SwpCircleAnimationButton *)button;

/**
 *  @author swp_song
 *
 *  @brief  swpCircleAnimationButtonDidFinishAnimation: ( SwpCircleAnimationButton 代理方法，动画已经结束调用 )
 *
 *  @param  button  button
 */
- (void)swpCircleAnimationButtonDidFinishAnimation:(SwpCircleAnimationButton *)button;


@end

@interface SwpCircleAnimationButton : UIButton

/**
 *  @author swp_song
 *
 *  @brief  swpCircleAnimationButton    ( 快速初始化 )
 *
 *  @return swpCircleAnimationButton
 */
+ (instancetype)swpCircleAnimationButton;

/**
 *  @author swp_song
 *
 *  @brief  swpCircleAnimationButtonInit    ( 快速初始化 )
 */
+ (__kindof SwpCircleAnimationButton * _Nonnull (^)(void))swpCircleAnimationButtonInit;

/**
 *  @author swp_song
 *
 *  @brief  swpCircleAnimationButtonConfig: ( 使用 frame 配置 Button，该方法不创建按钮，只关心 frame 是否真是有效的 )
 *
 *  @param frame    frame
 */
- (void)swpCircleAnimationButtonConfig:(CGRect)frame;

/**
 *  @author swp_song
 *
 *  @brief  swpCircleAnimationButtonConfig  ( 使用 frame 配置 Button，该方法不创建按钮，只关心 frame 是否真是有效的 )
 */
- (__kindof SwpCircleAnimationButton *(^)(CGRect))swpCircleAnimationButtonConfig;

/**
 *  @author swp_song
 *
 *  @brief  swpButtonCircleAnimationAutoLayoutConfig    ( 使用 AutoLayout 配置 Button )
 */
- (void)swpButtonCircleAnimationAutoLayoutConfig SWP_CIRCLE_ANIMATION_BUTTON_INFORMATION_DEPRECATED("该方法还在建设中，请勿使用");

/**
 *  @author swp_song
 *
 *  @brief  swpButtonCircleAnimationAutoLayoutConfigChain   ( 使用 AutoLayout 配置 Button )
 */
- (SwpCircleAnimationButton *(^)(void))swpButtonCircleAnimationAutoLayoutConfigChain SWP_CIRCLE_ANIMATION_BUTTON_INFORMATION_DEPRECATED("该方法还在建设中，请勿使用");

/**
 *  @author swp_song
 *
 *  @brief  delegate    ( 设置代理 )
 */
- (__kindof SwpCircleAnimationButton * _Nonnull (^)(id<SwpCircleAnimationButtonDelegate> _Nonnull))delegate;

/**
 *  @author swp_song
 *
 *  @brief  borderColor ( 设置按钮边框颜色 )
 */
- (__kindof SwpCircleAnimationButton * _Nonnull (^)(UIColor * _Nonnull))borderColor;

/**
 *  @author swp_song
 *
 *  @brief  lineBorderColor ( 设置旋转边框颜色 )
 */
- (__kindof SwpCircleAnimationButton * _Nonnull (^)(UIColor * _Nonnull))lineBorderColor;


/**
 *  @author swp_song
 *
 *  @brief  borderWidth ( 设置边框边距 )
 */
- (__kindof SwpCircleAnimationButton * _Nonnull (^)(CGFloat))borderWidth;
/**
 *  @author swp_song
 *
 *  @brief  lineBorderWidth ( 设置旋转边距，最大 4，最小 1 )
 */
- (__kindof SwpCircleAnimationButton * _Nonnull (^)(CGFloat))lineBorderWidth;

/**
 *  @author swp_song
 *
 *  @brief  swpCircleAnimationButtonStartAnimation  ( 开始动画 )
 */
- (void)swpCircleAnimationButtonStartAnimation;

/**
 *  @author swp_song
 *
 *  @brief  swpCircleButtonStartAnimation   ( 开始动画 )
 */
- (__kindof SwpCircleAnimationButton * _Nonnull (^)(void))swpCircleButtonStartAnimation;

/**
 *  @author swp_song
 *
 *  @brief  swpCircleAnimationButtonStopAnimation   ( 停止动画 )
 */
- (void)swpCircleAnimationButtonStopAnimation;

/**
 *  @author swp_song
 *
 *  @brief  swpCircleButtonStopAnimation    ( 停止动画 )
 */
- (__kindof SwpCircleAnimationButton * _Nonnull (^)(void))swpCircleButtonStopAnimation;


#pragma mark - Block Methods
/**
 *  @author swp_song
 *
 *  @brief  swpCircleAnimationButtonDidStartAnimation:  ( SwpCircleAnimationButton 回调方法，动画开始调用 )
 *
 *  @param  didStartAnimation   didStartAnimation
 */
- (void)swpCircleAnimationButtonDidStartAnimation:(SwpCircleAnimationButtonAnimationBlock _Nullable)didStartAnimation;

/**
 *  @author swp_song
 *
 *  @brief  swpCircleAnimationButtonDidStartAnimation   ( SwpCircleAnimationButton 回调方法，动画开始调用 )
 */
- (__kindof SwpCircleAnimationButton * _Nonnull (^)(SwpCircleAnimationButtonAnimationBlock _Nullable))swpCircleAnimationButtonDidStartAnimation;

/**
 *  @author swp_song
 *
 *  @brief  swpCircleAnimationButtonWillFinishAnimation:    ( SwpCircleAnimationButton 回调方法，动画将要接结束调用 )
 *
 *  @param  willFinishAnimation willFinishAnimation
 */
- (void)swpCircleAnimationButtonWillFinishAnimation:(SwpCircleAnimationButtonAnimationBlock _Nullable)willFinishAnimation;

/**
 *  @author swp_song
 *
 *  @brief  swpCircleAnimationButtonWillFinishAnimation ( SwpCircleAnimationButton 回调方法，动画将要接结束调用 )
 */
- (__kindof SwpCircleAnimationButton * _Nonnull (^)(SwpCircleAnimationButtonAnimationBlock _Nullable))swpCircleAnimationButtonWillFinishAnimation;

/**
 *  @author swp_song
 *
 *  @brief  swpCircleAnimationButtonDidFinishAnimation: ( SwpCircleAnimationButton 回调方法，动画结束调用 )
 *
 *  @param  didFinishAnimation  didFinishAnimation
 */
- (void)swpCircleAnimationButtonDidFinishAnimation:(SwpCircleAnimationButtonAnimationBlock)didFinishAnimation;

/**
 *  @author swp_song
 *
 *  @brief  swpCircleAnimationButtonDidFinishAnimation  ( SwpCircleAnimationButton 回调方法，动画结束调用 )
 */
- (__kindof SwpCircleAnimationButton * _Nonnull (^)(SwpCircleAnimationButtonAnimationBlock))swpCircleAnimationButtonDidFinishAnimation;

@end
NS_ASSUME_NONNULL_END
