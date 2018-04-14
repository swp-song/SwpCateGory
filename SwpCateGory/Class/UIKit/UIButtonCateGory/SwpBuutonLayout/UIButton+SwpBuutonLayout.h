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
@property (nonatomic, assign) CGRect swpTitleFrame;

/** image Rect */
@property (nonatomic, assign) CGRect swpImageFrame;

/**
 *  @author swp_song
 *
 *  @brief  swpTitleRect   ( swpTitleRect = swpTitleFrame )
 */
- (UIButton * _Nonnull (^)(CGRect))swpTitleRect;

/**
 *  @author swp_song
 *
 *  @brief  swpImageRect   ( swpImageRect = swpImageFrame )
 */
- (UIButton * _Nonnull (^)(CGRect))swpImageRect;

@end
NS_ASSUME_NONNULL_END;
