//
//  SwpButtonCircleView.h
//  swp_song
//
//  Created by swp_song on 2018/5/1.
//  Copyright © 2018年 swp-song. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@interface SwpButtonCircleView : UIView

/**
 *  @author swp_song
 *
 *  @brief  initWithButton: ( 快速初始化 )
 *
 *  @param  button  button
 *
 *  @return SwpButtonCircleView
 */
- (instancetype)initWithButton:(UIButton *)button;

/**
 *  @author swp_song
 *
 *  @brief  swpButtonCircleViewWithButton: ( 快速初始化 )
 *
 *  @param  button  button
 *
 *  @return SwpButtonCircleView
 */
+ (instancetype)swpButtonCircleViewWithButton:(UIButton *)button;

/**
 *  @author swp_song
 *
 *  @brief  swpButtonCircleViewStartAnimation   ( 开始动画 )
 */
- (void)swpButtonCircleViewStartAnimation;


/**
 *  @author swp_song
 *
 *  @brief  swpButtonCircleViewStopAnimation    ( 停止动画 )
 */
- (void)swpButtonCircleViewStopAnimation;

/**
 *  @author swp_song
 *
 *  @brief  borderColor ( 设置旋转边框颜色 )
 */
- (SwpButtonCircleView * _Nonnull (^)(UIColor * _Nullable))borderColor;

/**
 *  @author swp_song
 *
 *  @brief  lineWidth   ( 设置旋转边距，最大 4，最小 1 )
 */
- (SwpButtonCircleView * _Nonnull (^)(CGFloat))lineWidth;


@end
NS_ASSUME_NONNULL_END
