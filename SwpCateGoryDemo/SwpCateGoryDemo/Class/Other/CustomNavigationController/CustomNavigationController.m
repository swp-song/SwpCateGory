//
//  CustomNavigationController.m
//  SwpCateGoryDemo
//
//  Created by swp_song on 2017/6/20.
//  Copyright © 2017年 swp-song. All rights reserved.
//

#import "CustomNavigationController.h"


/* ---------------------- Tool       ---------------------- */
#import "UIColor+SwpColor.h"                        //  Color  分类
#import "UINavigationBar+SwpNavigationBar.h"        //  UINavigationBar 分类
/* ---------------------- Tool       ---------------------- */

/* ---------------------- Model      ---------------------- */
/* ---------------------- Model      ---------------------- */

/* ---------------------- View       ---------------------- */
/* ---------------------- View       ---------------------- */

/* ---------------------- Controller ---------------------- */
/* ---------------------- Controller ---------------------- */


@interface CustomNavigationController ()


#pragma mark - UI   Propertys
/* ---------------------- UI   Property  ---------------------- */
/* ---------------------- UI   Property  ---------------------- */

#pragma mark - Data Propertys
/* ---------------------- Data Property  ---------------------- */
@property (nonatomic, strong) UIImageView *navigationBarlineImageView;
/* ---------------------- Data Property  ---------------------- */

@end

@implementation CustomNavigationController

#pragma mark - Lifecycle Methods
/**
 *  @author swp_song
 *
 *  @brief  viewDidLoad ( 视图载入完成 调用 )
 */
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // 返回按钮
    [[UINavigationBar appearance] setTintColor:[UIColor blackColor]];
    
    // 导航 控制器 颜色
    self.navigationBar.swpNavigationBarSetBackgroundColorChain([UIColor whiteColor]);
    
    self.navigationBar.swpNavigationBarSetBottomLineViewHiddenChain(YES);
}

/**
 *  @author swp_song
 *
 *  @brief  viewWillAppear: ( 将要加载出视图 调用)
 *
 *  @ param  animated
 */
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}

/**
 *  @author swp_song
 *
 *  @brief  viewDidAppear: ( 视图 显示 窗口时 调用 )
 *
 *  @ param  animated
 */
- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}

/**
 *  @author swp_song
 *
 *  @brief  viewWillDisappear: ( 视图  即将消失、被覆盖或是隐藏时调用 )
 *
 *  @ param  animated
 */
- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    // Do any additional setup after loading the view.
}

/**
 *  @author swp_song
 *
 *  @brief  viewDidDisappear: ( 视图已经消失、被覆盖或是隐藏时调用 )
 *
 *  @ param  animated
 */
- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
}

/**
 *  @author swp_song
 *
 *  @brief  didReceiveMemoryWarning ( 内存不足时 调用 )
 */
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


/**
 *  @author swp_song
 *
 *  @brief  dealloc ( 当前 控制器 被销毁时 调用 )
 */
- (void)dealloc {
    NSLog(@"%s", __FUNCTION__);
}

- (UIViewController *)childViewControllerForStatusBarStyle {
    return self.topViewController;
}

/**
 *  @author swp_song
 *
 *  @brief  preferredStatusBarStyle:    ( 设置 状态栏 字体样式 )
 *
 *  @return UIStatusBarStyle
 */
- (UIStatusBarStyle)preferredStatusBarStyle {
    return UIStatusBarStyleDefault;
}

/**
 *  @author swp_song
 *
 *  @brief  findLineImageViewUnder: ( 设置 状态栏 字体样式 )
 *
 *  @param  view            view
 *
 *  @return UIImageView
 */
- (UIImageView *)findLineImageViewUnder:(UIView *)view {
    if ([view isKindOfClass:UIImageView.class] && view.bounds.size.height <= 1.0) {
        return (UIImageView *)view;
    }
    for (UIView *subview in view.subviews) {
        UIImageView *imageView = [self findLineImageViewUnder:subview];
        if (imageView) {
            return imageView;
        }
    }
    return nil;
}

#pragma mark -
/**
 *  @author swp_song
 *
 *  @brief  customNavigationControllerWithRootViewController:  ( 快速初始化 )
 *
 *  @param  rootViewController  rootViewController
 *
 *  @return CustomNavigationController
 */
+ (instancetype)customNavigationControllerWithRootViewController:(UIViewController *)rootViewController {
    CustomNavigationController *customNavigationController = [[CustomNavigationController alloc] initWithRootViewController:rootViewController];
    return customNavigationController;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
