//
//  UIButton+SwpBuutonLayout.h
//  swp_song
//
//  Created by swp_song on 2018/4/14.
//  Copyright © 2018年 swp-song. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@interface UIButton (SwpBuutonLayout)


/** title Rect */
@property (nonatomic, assign) CGRect titleFrame;

/** image Rect */
@property (nonatomic, assign) CGRect imageFrame;

/**
 *  @author swp_song
 *
 *  @brief  titleRect   ( titleRect = titleFrame )
 */
- (UIButton * _Nonnull (^)(CGRect))titleRect;

/**
 *  @author swp_song
 *
 *  @brief  imageRect   ( imageRect = imageFrame )
 */
- (UIButton * _Nonnull (^)(CGRect))imageRect;


@end
NS_ASSUME_NONNULL_END;
