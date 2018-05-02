
//
//  AppDelegate+SVProgressHUD.m
//  SwpCateGoryDemo
//
//  Created by swp_song on 2017/6/20.
//  Copyright © 2017年 swp-song. All rights reserved.
//

#import "AppDelegate+SVProgressHUD.h"

/*! ---------------------- Tool       ---------------------- !*/
#import <SVProgressHUD/SVProgressHUD.h>     // 提示信息
/*! ---------------------- Tool       ---------------------- !*/

/*! ---------------------- Controller ---------------------- !*/
/*! ---------------------- Controller ---------------------- !*/

/*! ---------------------- View       ---------------------- !*/
/*! ---------------------- View       ---------------------- !*/

/*! ---------------------- Model      ---------------------- !*/
/*! ---------------------- Model      ---------------------- !*/


@implementation AppDelegate (SVProgressHUD)

/**
 *  @author swp_song
 *
 *  @brief  setSVProgressHUD  ( 设置 SVProgressHUD 样式 )
 */
+ (AppDelegate * _Nonnull (^)(void))setSVProgressHUD {
    
    return ^() {
        [SVProgressHUD setDefaultStyle:SVProgressHUDStyleDark];
        [SVProgressHUD setDefaultAnimationType:SVProgressHUDAnimationTypeNative];
        [SVProgressHUD setDefaultMaskType:SVProgressHUDMaskTypeNone];
        [SVProgressHUD setMinimumDismissTimeInterval:1];
        [SVProgressHUD setFadeOutAnimationDuration:1];
        return (AppDelegate *)UIApplication.sharedApplication.delegate;
    };
}

@end
