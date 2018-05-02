//
//  SwpCateGoryNavigationController.h
//  SwpCateGoryDemo
//
//  Created by swp_song on 2017/6/20.
//  Copyright © 2017年 swp-song. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@interface SwpCateGoryNavigationController : UINavigationController
/**
 *  @author swp_song
 *
 *  @brief  navigationControllerWithRootViewController: ( 快速初始化 )
 *
 *  @param  rootViewController  rootViewController
 *
 *  @return SwpCateGoryNavigationController
 */
+ (instancetype)navigationControllerWithRootViewController:(UIViewController *)rootViewController;

@end
NS_ASSUME_NONNULL_END
