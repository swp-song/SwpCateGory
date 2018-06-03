//
//  UIButton+SwpButtonPropertys.h
//  swp_song
//
//  Created by swp_song on 2018/6/3.
//  Copyright © 2018年 swp-song. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <SwpCateGory/UIView+SwpViewPropertys.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger, SwpButtonImageEdge) {
    SwpButtonImageEdgeTop = 0,
    SwpButtonImageEdgeLeft,
    SwpButtonImageEdgeBottom,
    SwpButtonImageEdgeRight,
};

@interface UIButton (SwpButtonPropertys)

/**
 *  @author swp_song
 *
 *  @brief  swpTitle    ( set button title )
 */
- (__kindof UIButton * _Nonnull (^)(NSString * _Nullable, UIControlState))swpTitle;

/**
 *  @author swp_song
 *
 *  @brief  swpTitle    ( set button title )
 */
- (__kindof UIButton * _Nonnull (^)(UIFont * _Nullable))swpTitleLabelFont;

/**
 *  @author swp_song
 *
 *  @brief  swpTitleLabelSystemFontSize ( set title label system font size )
 */
- (__kindof UIButton * _Nonnull (^)(CGFloat))swpTitleLabelSystemFontSize;

/**
 *  @author swp_song
 *
 *  @brief  swpTitleColor   ( set title color )
 */
- (__kindof UIButton * _Nonnull (^)(UIColor * _Nullable, UIControlState))swpTitleColor;

/**
 *  @author swp_song
 *
 *  @brief  swpImage    ( set button image )
 */
- (__kindof UIButton * _Nonnull (^)(UIImage * _Nullable, UIControlState))swpImage;

/**
 *  @author swp_song
 *
 *  @brief  swpBackgroundImage  ( set background image )
 */
- (__kindof UIButton * _Nonnull (^)(UIImage * _Nullable, UIControlState))swpBackgroundImage;

/**
 *  @author swp_song
 *
 *  @brief  swpTag  ( set tag )
 */
- (__kindof UIButton * _Nonnull (^)(NSInteger ))swpTag;

/**
 *  @author swp_song
 *
 *  @brief  swpTargetEvent  ( set target event )
 */
- (__kindof UIButton * _Nonnull (^)(id, SEL, UIControlEvents))swpTargetEvent;

/**
 *  @author swp_song
 *
 *  @brief  swpTitleEdgeInsets  ( set titleEdgeInsets )
 */
- (__kindof UIButton * _Nonnull (^)(UIEdgeInsets))swpTitleEdgeInsets;

/**
 *  @author swp_song
 *
 *  @brief  swpImageEdgeInsets  ( set imageEdgeInsets )
 */
- (__kindof UIButton * _Nonnull (^)(UIEdgeInsets))swpImageEdgeInsets;

#pragma mark - Custom
/**
 *  @author swp_song
 *
 *  @brief  swpImageEdge:offset: ( set image edge )
 *
 *  @param  edge    edge
 *
 *  @param  offset  offset
 */
- (void)swpImageEdge:(SwpButtonImageEdge)edge offset:(CGFloat)offset;

/**
 *  @author swp_song
 *
 *  @brief  swpImageEdge    ( set image edge )
 *
 *  @param  edge    edge
 */
- (void)swpImageEdge:(SwpButtonImageEdge)edge;

/**
 *  @author swp_song
 *
 *  @brief  swpImageEdge    ( set image edge )
 */
- (__kindof UIButton *(^)(SwpButtonImageEdge edge))swpImageEdge;

/**
 *  @author swp_song
 *
 *  @brief  swpImageEdgeOffset  ( set image edge )
 */
- (__kindof UIButton *(^)(SwpButtonImageEdge, CGFloat))swpImageEdgeOffset;

@end
NS_ASSUME_NONNULL_END
