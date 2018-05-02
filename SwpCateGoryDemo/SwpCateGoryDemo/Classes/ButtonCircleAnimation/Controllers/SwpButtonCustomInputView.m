
//
//  SwpButtonCustomInputView.m
//  SwpCateGoryDemo
//
//  Created by swp_song on 2018/5/2.
//  Copyright © 2018年 swp-song. All rights reserved.
//

#import "SwpButtonCustomInputView.h"



/* ---------------------- Tool       ---------------------- */
#import <Masonry/Masonry.h>                         //  Masonry
#import <SwpCateGory/UIColor+SwpColor.h>
#import <SwpCateGory/SwpCircleAnimationButton.h>
/* ---------------------- Tool       ---------------------- */

/* ---------------------- Model      ---------------------- */
/* ---------------------- Model      ---------------------- */

/* ---------------------- View       ---------------------- */
/* ---------------------- View       ---------------------- */


@interface SwpButtonCustomInputView ()

#pragma mark - UI   Propertys
/* ---------------------- UI   Property  ---------------------- */
/** title view */
@property (nonatomic, strong) UILabel   *titleView;
/** code Button */
@property (nonatomic, strong) SwpCircleAnimationButton *codeButton;
/* ---------------------- UI   Property  ---------------------- */

#pragma mark - Data Propertys
/* ---------------------- Data Property  ---------------------- */
/* ---------------------- Data Property  ---------------------- */

@end

@implementation SwpButtonCustomInputView

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
        
        [self.codeButton addTarget:self action:@selector(clickButton1Event:) forControlEvents:(UIControlEventTouchUpInside)];
        
        [self codeButtonBlock:self.codeButton];
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
    self.codeButton.swpCircleAnimationButtonConfig(self.codeButton.frame);
}


/**
 *  @author swp_song
 *
 *  @brief  setUpUI ( 添加控件 )
 */
- (void)setUpUI {
    
    [self addSubview:self.titleView];
    [self addSubview:self.codeButton];
}

/**
 *  @author swp_song
 *
 *  @brief  setUIAutoLayout ( 设置控件的自动布局 )
 */
- (void)setUIAutoLayout {
    
    
//    [self.titleView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.top.left.right.equalTo(self).mas_offset(UIEdgeInsetsMake(0, 0, 0, 0));
//        make.width.equalTo(self.titleView.mas_height).multipliedBy(2.0);
//    }];
//
//
    [self.codeButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.right.equalTo(self).mas_offset(UIEdgeInsetsMake(12, 0, 12, 20));
        make.width.equalTo(self.codeButton.mas_height).multipliedBy(2.5);
    }];
}

/**
 *  @author swp_song
 *
 *  @brief  clickCommitButtonEvent: ( 按钮绑定方法 )
 *
 *  @param  button  button
 */
- (void)clickButton1Event:(SwpCircleAnimationButton *)button {
    button.swpCircleButtonStartAnimation();
}

/**
 *  @author swp_song
 *
 *  @brief  codeButtonBlock ( 按钮动画回调 )
 *
 *  @param  codeButton  codeButton
 */
- (void)codeButtonBlock:(SwpCircleAnimationButton *)codeButton {
    
    codeButton
    .swpCircleAnimationButtonDidStartAnimation(^(SwpCircleAnimationButton *button){
        //  注意 blcok  循环引用
        __weak typeof(button) weakButton = button;
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.8 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
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

#pragma mark - Init UI Methods
- (UILabel *)titleView {
    return !_titleView ? _titleView = ({
        UILabel *label = UILabel.new;
        label.numberOfLines = 0;
        label;
    }) : _titleView;
}


- (SwpCircleAnimationButton *)codeButton {
    return !_codeButton ? _codeButton = ({
        SwpCircleAnimationButton *button = [SwpCircleAnimationButton buttonWithType:UIButtonTypeCustom];
        [button setTitle:@"获取验证码" forState:(UIControlStateNormal)];
        [button setTitle:@"获取验证码" forState:(UIControlStateHighlighted)];
        button.titleLabel.font = [UIFont systemFontOfSize:12];
        button.backgroundColor = UIColor.swpColorWithHexadecimal(0x2D8799);
        button.borderColor(UIColor.swpColorWithHexadecimal(0xA2CFEF));
        button;
    }) : _codeButton;
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
