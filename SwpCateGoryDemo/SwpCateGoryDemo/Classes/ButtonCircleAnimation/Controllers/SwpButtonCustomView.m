
//
//  SwpButtonCustomView.m
//  SwpCateGoryDemo
//
//  Created by swp_song on 2018/5/1.
//  Copyright © 2018年 swp-song. All rights reserved.
//

#import "SwpButtonCustomView.h"

/* ---------------------- Tool       ---------------------- */
#import <Masonry/Masonry.h>                         //  Masonry
#import <SwpCateGory/UIColor+SwpColor.h>
#import <SwpCateGory/SwpCircleAnimationButton.h>
/* ---------------------- Tool       ---------------------- */

/* ---------------------- Model      ---------------------- */
/* ---------------------- Model      ---------------------- */

/* ---------------------- View       ---------------------- */
#import "SwpButtonCustomInputView.h"
/* ---------------------- View       ---------------------- */



@interface SwpButtonCustomView () <SwpCircleAnimationButtonDelegate>
#pragma mark - UI   Propertys
/* ---------------------- UI   Property  ---------------------- */
/** title view */
@property (nonatomic, strong) UILabel   *titleView;
/** login button */
@property (nonatomic, strong) SwpCircleAnimationButton  *loginButton;
/** commit button */
@property (nonatomic, strong) SwpCircleAnimationButton  *commitButton;
/** custom input view */
@property (nonatomic, strong) SwpButtonCustomInputView *swpButtonCustomInputView;
/* ---------------------- UI   Property  ---------------------- */

#pragma mark - Data Propertys
/* ---------------------- Data Property  ---------------------- */
/* ---------------------- Data Property  ---------------------- */

@end

@implementation SwpButtonCustomView

/**
 *  @author swp_song
 *
 *  @brief  initWithFrame:  ( Override Init )
 *
 *  @param  frame   frame
 *
 *  @return UIView
 */
- (instancetype)initWithFrame:(CGRect)frame {
    
    if (self = [super initWithFrame:frame]) {
    
        self.layer.borderWidth = 1;
        [self setUpUI];
        
        [self setUIAutoLayout];
        
        
        [self.loginButton addTarget:self action:@selector(clickLoginButtonEvent:) forControlEvents:(UIControlEventTouchUpInside)];
        [self.commitButton addTarget:self action:@selector(clickCommitButtonEvent:) forControlEvents:(UIControlEventTouchUpInside)];
        
        [self loginButtonBlock:self.loginButton];
        [self commitButtonBlock:self.commitButton];
    }
    return self;
}

/**
 *  @author swp_song
 *
 *  @brief  layoutSubviews  ( Override layoutSubviews )
 */
- (void)layoutSubviews {
    [super layoutSubviews];
    [self.loginButton swpCircleAnimationButtonConfig:self.loginButton.frame];
    [self.commitButton swpCircleAnimationButtonConfig:self.commitButton.frame];
}

/**
 *  @author swp_song
 *
 *  @brief  setUpUI ( 添加控件 )
 */
- (void)setUpUI {

    [self addSubview:self.titleView];
    [self addSubview:self.swpButtonCustomInputView];
    [self addSubview:self.commitButton];
    [self addSubview:self.loginButton];
}

/**
 *  @author swp_song
 *
 *  @brief  setUIAutoLayout ( 设置控件的自动布局 )
 */
- (void)setUIAutoLayout {

    [self.titleView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.left.right.equalTo(self).mas_offset(UIEdgeInsetsMake(10, 10, 0, 10));
        make.width.equalTo(self.titleView.mas_height).multipliedBy(3.5);
    }];
    
    [self.swpButtonCustomInputView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.equalTo(self.titleView);
        make.top.equalTo(self.titleView.mas_bottom).offset(15);
        make.width.equalTo(self.swpButtonCustomInputView.mas_height).multipliedBy(6);
    }];
    
    
    [self.loginButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.bottom.right.equalTo(self).mas_offset(UIEdgeInsetsMake(0, 40, 15, 40));
        make.width.equalTo(self.loginButton.mas_height).multipliedBy(6);
    }];
    
    [self.commitButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.height.equalTo(self.loginButton);
        make.bottom.equalTo(self.loginButton.mas_top).offset(-20);
    }];
}

/**
 *  @author swp_song
 *
 *  @brief  clickLoginButtonEvent: ( 按钮绑定方法 )
 *
 *  @param  button  button
 */
- (void)clickLoginButtonEvent:(SwpCircleAnimationButton *)button {
    [button swpCircleAnimationButtonStartAnimation];
}


/**
 *  @author swp_song
 *
 *  @brief  clickCommitButtonEvent: ( 按钮绑定方法 )
 *
 *  @param  button  button
 */
- (void)clickCommitButtonEvent:(SwpCircleAnimationButton *)button {
    [button swpCircleAnimationButtonStartAnimation];
}


/**
 *  @author swp_song
 *
 *  @brief  commitButtonBlock   ( 按钮动画回调 )
 *
 *  @param  loginButton loginButton
 */
- (void)loginButtonBlock:(SwpCircleAnimationButton *)loginButton {
    
    loginButton
    .delegate(self)
    .swpCircleAnimationButtonDidStartAnimation(^(SwpCircleAnimationButton *button){
        //  注意 blcok  循环引用
        __weak typeof(button) weakButton = button;
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            __strong __typeof(weakButton)strongButton = weakButton;
            [strongButton swpCircleAnimationButtonStopAnimation];
        });
        
    })
    .swpCircleAnimationButtonWillFinishAnimation(^(SwpCircleAnimationButton *button){
        //  注意 blcok  循环引用
    })
    .swpCircleAnimationButtonDidFinishAnimation(^(SwpCircleAnimationButton *button){
        //  注意 blcok  循环引用
    });
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
        __weak typeof(button) weakButton = button;
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            __strong __typeof(weakButton)strongButton = weakButton;
            [strongButton swpCircleAnimationButtonStopAnimation];
        });
    })
    .swpCircleAnimationButtonWillFinishAnimation(^(SwpCircleAnimationButton *button){
        //  注意 blcok  循环引用
    })
    .swpCircleAnimationButtonDidFinishAnimation(^(SwpCircleAnimationButton *button){
        //  注意 blcok  循环引用
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

}

/**
 *  @author swp_song
 *
 *  @brief  swpCircleAnimationButtonWillFinishAnimation:    ( SwpCircleAnimationButton 代理方法，动画将要接结束调用 )
 *
 *  @param  button  button
 */
- (void)swpCircleAnimationButtonWillFinishAnimation:(SwpCircleAnimationButton *)button {

}

/**
 *  @author swp_song
 *
 *  @brief  swpCircleAnimationButtonDidFinishAnimation: ( SwpCircleAnimationButton 代理方法，动画已经结束调用 )
 *
 *  @param  button  button
 */
- (void)swpCircleAnimationButtonDidFinishAnimation:(SwpCircleAnimationButton *)button {

}

#pragma mark - Init UI Methods
- (UILabel *)titleView {
    return !_titleView ? _titleView = ({
        UILabel *label = UILabel.new;
        label.numberOfLines = 0;
        label.layer.borderWidth = 1;
        label;
    }) : _titleView;
}


- (SwpCircleAnimationButton *)loginButton {
    return !_loginButton ? _loginButton = ({
        SwpCircleAnimationButton *button = SwpCircleAnimationButton
        .swpCircleAnimationButtonInit()
        .lineBorderColor(UIColor.swpColorWithHexadecimal(0x4EFBF1))
        .lineBorderWidth(3)
        .borderWidth(1)
        .borderColor([UIColor whiteColor]);
        [button setTitle:@"登录" forState:(UIControlStateNormal)];
        button.tag = 0;
        button;
    }) : _loginButton;
}

- (SwpCircleAnimationButton *)commitButton {
    return !_commitButton ? _commitButton = ({
        SwpCircleAnimationButton *button = SwpCircleAnimationButton
        .swpCircleAnimationButtonInit()
        .borderWidth(1)
        .borderColor([UIColor orangeColor]);
        [button setTitle:@"提交" forState:(UIControlStateNormal)];
        [button setTitleColor:[UIColor orangeColor] forState:(UIControlStateNormal)];
        button.tag = 1;
        button;
    }) : _commitButton;
}



- (SwpButtonCustomInputView *)swpButtonCustomInputView {
    return !_swpButtonCustomInputView ? _swpButtonCustomInputView = ({
        SwpButtonCustomInputView *swpButtonCustomInputView = SwpButtonCustomInputView.new;
        swpButtonCustomInputView.layer.borderWidth = 1;
        swpButtonCustomInputView;
    }) : _swpButtonCustomInputView;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
