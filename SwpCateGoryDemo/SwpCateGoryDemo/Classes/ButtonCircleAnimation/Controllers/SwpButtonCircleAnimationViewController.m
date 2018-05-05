
//
//  SwpButtonCircleAnimationViewController.m
//  SwpCateGoryDemo
//
//  Created by swp_song on 2018/5/1.
//  Copyright © 2018年 swp-song. All rights reserved.
//

#import "SwpButtonCircleAnimationViewController.h"

/* ---------------------- Tool       ---------------------- */
#import <SwpCateGory/UIColor+SwpColor.h>
#import <SwpCateGory/UIButton+SwpButtonUtils.h>
/* ---------------------- Tool       ---------------------- */

/* ---------------------- Model      ---------------------- */
/* ---------------------- Model      ---------------------- */

/* ---------------------- View       ---------------------- */
#import "SwpButtonCustomView.h"
#import <SwpCateGory/SwpCircleAnimationButton.h>
/* ---------------------- View       ---------------------- */

/* ---------------------- Controller ---------------------- */
/* ---------------------- Controller ---------------------- */


@interface SwpButtonCircleAnimationViewController () <SwpCircleAnimationButtonDelegate>

#pragma mark - UI   Propertys
/* ---------------------- UI   Property  ---------------------- */
@property (nonatomic, strong) SwpCircleAnimationButton *commitButton;
@property (nonatomic, strong) SwpButtonCustomView      *swpButtonCustomView;
/* ---------------------- UI   Property  ---------------------- */

#pragma mark - Data Propertys
/* ---------------------- Data Property  ---------------------- */
/* ---------------------- Data Property  ---------------------- */


@end

@implementation SwpButtonCircleAnimationViewController


#pragma mark - Lifecycle Methods
/**
 *  @author swp_song
 *
 *  @brief  viewDidLoad ( 视图载入完成, 调用 )
 */
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    self.view.backgroundColor = UIColor.swpColorWithHexadecimal(0x1E70D3);
    
    [self setUI];
    
    [self setData];
    
    [self.commitButton addTarget:self action:@selector(clickButtonEvent:) forControlEvents:(UIControlEventTouchUpInside)];
    
    [self commitButtonBlock:self.commitButton];
}

/**
 *  @author swp_song
 *
 *  @brief  viewWillAppear: ( 将要加载出视图调用 )
 *
 *  @param  animated    animated
 */
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}

/**
 *  @author swp_song
 *
 *  @brief  viewDidAppear:  ( 视图显示窗口时调用 )
 *
 *  @param  animated    animated
 */
- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}

/**
 *  @author swp_song
 *
 *  @brief  viewWillDisappear:  ( 视图即将消失, 被覆盖, 隐藏时调用 )
 *
 *  @param  animated    animated
 */
- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    // Do any additional setup after loading the view.
}

/**
 *  @author swp_song
 *
 *  @brief  viewDidDisappear:   ( 视图已经消失, 被覆盖, 隐藏时调用 )
 *
 *  @param  animated    animated
 */
- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
}

/**
 *  @author swp_song
 *
 *  @brief  didReceiveMemoryWarning ( 内存不足时调用 )
 */
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


/**
 *  @author swp_song
 *
 *  @brief  dealloc ( 当前控制器被销毁时调用 )
 */
- (void)dealloc {
    NSLog(@"%s", __FUNCTION__);
}

#pragma mark - Set Data Method
/**
 *  @author swp_song
 *
 *  @brief  setData ( 设置 初始化 数据 )
 */
- (void)setData {
    
}

#pragma mark - Set UI Methods
/**
 *  @author swp_song
 *
 *  @brief  setUI   ( 设置 UI 控件 )
 */
- (void)setUI {
    [self setNavigationBar];
    [self setUpUI];
    [self setUIAutoLayout];
}


/**
 *  @author swp_song
 *
 *  @brief  setNavigationBar    ( 设置导航栏 )
 */
- (void)setNavigationBar {

}

/**
 *  @author swp_song
 *
 *  @brief  setUpUI ( 添加控件 )
 */
- (void)setUpUI {
    
    [self.view addSubview:self.commitButton];
    [self.view addSubview:self.swpButtonCustomView];
}

/**
 *  @author swp_song
 *
 *  @brief  viewDidLayoutSubviews  ( Override viewDidLayoutSubviews )
 */
- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    
    NSArray  *scales = @[@(0.16), @(0.5), @(0.8)];
    NSArray  *colors = @[(id)UIColor.swpColorWithHexadecimal(0x466BAD), (id)UIColor.swpColorWithHexadecimal(0x4C94B6), (id)UIColor.swpColorWithHexadecimal(0x3F9AC8)];
    
    self.commitButton.swpButtonUtilsSetGradientColor(self.commitButton.frame.size, colors, scales, SwpButtonGradientDirectionLeftBottomToRightTop);
    [self.commitButton swpCircleAnimationButtonConfig:self.commitButton.frame];
}

/**
 *  @author swp_song
 *
 *  @brief  setUIAutoLayout ( 设置控件的自动布局 )
 */
- (void)setUIAutoLayout {
    
    [self.commitButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.left.equalTo(self.view).mas_offset(UIEdgeInsetsMake(50, 100, 0, 100));
        make.width.equalTo(@(200));
        make.width.equalTo(self.commitButton.mas_height).multipliedBy(5);
    }];
    
    [self.swpButtonCustomView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view.mas_centerX);
        make.centerY.equalTo(self.view.mas_centerY);
        make.left.right.equalTo(self.view).mas_offset(UIEdgeInsetsMake(0, 34, 0, 34));
        make.width.equalTo(self.swpButtonCustomView.mas_height).multipliedBy(0.9);
    }];
}


/**
 *  @author swp_song
 *
 *  @brief  clickButtonEvent:   ( 按钮绑定方法 )
 *
 *  @param  button  button
 */
- (void)clickButtonEvent:(SwpCircleAnimationButton *)button {
    [button swpCircleAnimationButtonStartAnimation];
}


/**
 *  @author swp_song
 *
 *  @brief  commitButtonBlock   ( 按钮动画回调 )
 *
 *  @param  commitButton    commitButton
 */
- (void)commitButtonBlock:(SwpCircleAnimationButton *)commitButton {
    
    commitButton
    .delegate(self)
    .swpCircleAnimationButtonDidStartAnimation(^(SwpCircleAnimationButton *button){
        
        //  注意 blcok  循环引用
        NSLog(@" commitButton = block : 动画开始");
        __weak typeof(button) weakButton = button;
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.8 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            __strong __typeof(weakButton)strongButton = weakButton;
            [strongButton swpCircleAnimationButtonStopAnimation];
        });
    })
    .swpCircleAnimationButtonWillFinishAnimation(^(SwpCircleAnimationButton *button){
        NSLog(@" commitButton = block : 动画即将结束");
    })
    .swpCircleAnimationButtonDidFinishAnimation(^(SwpCircleAnimationButton *button){
        NSLog(@" commitButton = block : 动画结束");
    });
}

#pragma mark - SwpCircleAnimationButton Delegate
/**
 *  @author swp_song
 *
 *  @brief  swpCircleAnimationButtonDidStartAnimation:  ( SwpCircleAnimationButton 代理方法，动画开始调用 )
 *
 *  @param  button  button
 */
- (void)swpCircleAnimationButtonDidStartAnimation:(SwpCircleAnimationButton *)button {
    NSLog(@"%ld delete : 动画开始", (long)button.tag);
}

/**
 *  @author swp_song
 *
 *  @brief  swpCircleAnimationButtonWillFinishAnimation:    ( SwpCircleAnimationButton 代理方法，动画将要接结束调用 )
 *
 *  @param  button  button
 */
- (void)swpCircleAnimationButtonWillFinishAnimation:(SwpCircleAnimationButton *)button {
    NSLog(@"%ld delete : 动画即将结束", (long)button.tag);
}

/**
 *  @author swp_song
 *
 *  @brief  swpCircleAnimationButtonDidFinishAnimation: ( SwpCircleAnimationButton 代理方法，动画已经结束调用 )
 *
 *  @param  button  button
 */
- (void)swpCircleAnimationButtonDidFinishAnimation:(SwpCircleAnimationButton *)button {
    NSLog(@"%ld delete : 动画结束", (long)button.tag);
}


#pragma mark - Init UI Methods
- (SwpCircleAnimationButton *)commitButton {
    return !_commitButton ? _commitButton = ({
        SwpCircleAnimationButton *button = SwpCircleAnimationButton.swpCircleAnimationButtonInit();
        button.layer.borderWidth    = 1;
        button.layer.borderColor    = [UIColor whiteColor].CGColor;
        [button setTitle:@"点击" forState:(UIControlStateNormal)];
        [button setTitle:@"点击" forState:(UIControlStateNormal)];
        [button setTitleColor:[UIColor whiteColor] forState:(UIControlStateNormal)];
        button;
    }) : _commitButton;
}


- (SwpButtonCustomView *)swpButtonCustomView {
    return !_swpButtonCustomView ? _swpButtonCustomView = ({
        SwpButtonCustomView *button = SwpButtonCustomView.new;
        button;
    }) : _swpButtonCustomView;
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
