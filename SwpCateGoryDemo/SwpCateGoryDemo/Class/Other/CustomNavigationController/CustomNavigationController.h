//
//  CustomNavigationController.h
//  SwpCateGoryDemo
//
//  Created by swp_song on 2017/6/20.
//  Copyright © 2017年 swp-song. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@interface CustomNavigationController : UINavigationController
/**!
 *  @author swp_song
 *
 *  @brief  customNavigationControllerWithRootViewController:  ( 快速初始化 )
 *
 *  @param  rootViewController  rootViewController
 *
 *  @return CustomNavigationController
 */
+ (instancetype)customNavigationControllerWithRootViewController:(UIViewController *)rootViewController;

@end
NS_ASSUME_NONNULL_END
