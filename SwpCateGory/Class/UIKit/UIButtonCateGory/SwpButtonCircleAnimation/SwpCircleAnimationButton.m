//
//  SwpCircleAnimationButton.m
//  swp_song
//
//  Created by swp_song on 2018/5/2.
//  Copyright © 2018年 swp-song. All rights reserved.
//

#import "SwpCircleAnimationButton.h"

/* ---------------------- View       ---------------------- */
#import "SwpButtonCircleView.h"
/* ---------------------- View       ---------------------- */

static NSTimeInterval SwpCircleAnimationButtonStartDuration = 0.3;
static NSTimeInterval SwpCircleAnimationButtonStopDuration  = 0.5;


@interface SwpCircleAnimationButton ()
{
    /** origion Rect */
    CGRect  _origionRect;
    
    /** 边框颜色 */
    UIColor *_lineBorderColor;
    
    /** 线宽 */
    CGFloat _lineBorderWidth;
}

#pragma mark - UI   Propertys
/* ---------------------- UI   Property  ---------------------- */
@property (nonatomic, strong) SwpButtonCircleView *circleView;
/* ---------------------- UI   Property  ---------------------- */

#pragma mark - Data Propertys
/* ---------------------- Data Property  ---------------------- */

@property (nonatomic, weak) id<SwpCircleAnimationButtonDelegate>_delegate;
/** SwpCircleAnimationButton 回调方法，动画开始调用  */
@property (nonatomic, copy) SwpCircleAnimationButtonAnimationBlock didStartAnimation;
/** SwpCircleAnimationButton 回调方法，动画将要接结束调用 */
@property (nonatomic, copy) SwpCircleAnimationButtonAnimationBlock willFinishAnimation;
/** SwpCircleAnimationButton 回调方法，动画已经结束调用 */
@property (nonatomic, copy) SwpCircleAnimationButtonAnimationBlock didFinishAnimation;
/* ---------------------- Data Property  ---------------------- */

@end


@implementation SwpCircleAnimationButton


#pragma mark - Public Methods

/**
 *  @author swp_song
 *
 *  @brief  swpCircleAnimationButton    ( 快速初始化 )
 *
 *  @return swpCircleAnimationButton
 */
+ (instancetype)swpCircleAnimationButton {
    return [self.class buttonWithType:UIButtonTypeCustom];
}

/**
 *  @author swp_song
 *
 *  @brief  swpCircleAnimationButtonInit    ( 快速初始化 )
 */
+ (__kindof SwpCircleAnimationButton * _Nonnull (^)(void))swpCircleAnimationButtonInit {
    return ^(void) {
        return [self.class swpCircleAnimationButton];
    };
}


/**
 *  @author swp_song
 *
 *  @brief  swpCircleAnimationButtonConfig: ( 使用 frame 配置 Button，该方法不创建按钮，只关心 frame 是否真是有效的 )
 *
 *  @param frame    frame
 */
- (void)swpCircleAnimationButtonConfig:(CGRect)frame {
    [self circleAnimationButtonConfig:frame];
}


/**
 *  @author swp_song
 *
 *  @brief  swpCircleAnimationButtonConfig  ( 使用 frame 配置 Button，该方法不创建按钮，只关心 frame 是否真是有效的 )
 */
- (__kindof SwpCircleAnimationButton *(^)(CGRect))swpCircleAnimationButtonConfig {
    return ^(CGRect frame) {
        return [self circleAnimationButtonConfig:frame];
    };
}

/**
 *  @author swp_song
 *
 *  @brief  swpButtonCircleAnimationAutoLayoutConfig    ( 使用 AutoLayout 配置 Button )
 */
- (void)swpButtonCircleAnimationAutoLayoutConfig {
    [self circleAnimationAutoLayoutConfig];
}

/**
 *  @author swp_song
 *
 *  @brief  swpButtonCircleAnimationAutoLayoutConfigChain   ( 使用 AutoLayout 配置 Button )
 */
- (SwpCircleAnimationButton * _Nonnull (^)(void))swpButtonCircleAnimationAutoLayoutConfigChain {
    return ^(void) {
        return [self circleAnimationAutoLayoutConfig];
    };
}

/**
 *  @author swp_song
 *
 *  @brief  delegate    ( 设置代理 )
 */
- (__kindof SwpCircleAnimationButton * _Nonnull (^)(id<SwpCircleAnimationButtonDelegate> _Nonnull))delegate {
    return ^(id<SwpCircleAnimationButtonDelegate> delegate) {
        self._delegate = delegate;
        return self;
    };
}


/**
 *  @author swp_song
 *
 *  @brief  borderColor ( 设置按钮边框颜色 )
 */
- (__kindof SwpCircleAnimationButton * _Nonnull (^)(UIColor * _Nonnull))borderColor {
    return ^(UIColor *borderColor) {
        self.layer.borderColor = borderColor.CGColor;
        return self;
    };
}

/**
 *  @author swp_song
 *
 *  @brief  lineBorderColor ( 设置旋转边框颜色 )
 */
- (__kindof SwpCircleAnimationButton * _Nonnull (^)(UIColor * _Nonnull))lineBorderColor {
    return ^(UIColor *borderColor) {
        self->_lineBorderColor  = borderColor;
        return self;
    };
}

/**
 *  @author swp_song
 *
 *  @brief  borderWidth ( 设置边框边距 )
 */
- (__kindof SwpCircleAnimationButton * _Nonnull (^)(CGFloat))borderWidth {
    return ^(CGFloat borderWidth) {
        self.layer.borderWidth = borderWidth;
        return self;
    };
}

/**
 *  @author swp_song
 *
 *  @brief  lineBorderWidth ( 设置旋转边距，最大 4，最小 1 )
 */
- (__kindof SwpCircleAnimationButton * _Nonnull (^)(CGFloat))lineBorderWidth {
    return ^(CGFloat lineBorderWidth) {
        self->_lineBorderWidth = lineBorderWidth;
        return self;
    };
}

/**
 *  @author swp_song
 *
 *  @brief  swpCircleAnimationButtonStartAnimation  ( 开始动画 )
 */
- (void)swpCircleAnimationButtonStartAnimation {
    [self startAnimation];
}

/**
 *  @author swp_song
 *
 *  @brief  swpCircleButtonStartAnimation   ( 开始动画 )
 */
- (__kindof SwpCircleAnimationButton * _Nonnull (^)(void))swpCircleButtonStartAnimation {
    return ^(void) {
        return [self startAnimation];
    };
}


/**
 *  @author swp_song
 *
 *  @brief  swpCircleAnimationButtonStopAnimation   ( 停止动画 )
 */
- (void)swpCircleAnimationButtonStopAnimation {
    [self stopAnimation];
}


/**
 *  @author swp_song
 *
 *  @brief  swpCircleButtonStopAnimation    ( 停止动画 )
 */
- (__kindof SwpCircleAnimationButton * _Nonnull (^)(void))swpCircleButtonStopAnimation {
    return ^(void) {
        return [self stopAnimation];
    };
}

#pragma mark - Block Methods
/**
 *  @author swp_song
 *
 *  @brief  swpCircleAnimationButtonDidStartAnimation:  ( SwpCircleAnimationButton 回调方法，动画开始调用 )
 *
 *  @param  didStartAnimation   didStartAnimation
 */
- (void)swpCircleAnimationButtonDidStartAnimation:(SwpCircleAnimationButtonAnimationBlock)didStartAnimation {
    _didStartAnimation = didStartAnimation;
}

/**
 *  @author swp_song
 *
 *  @brief  swpCircleAnimationButtonDidStartAnimation   ( SwpCircleAnimationButton 回调方法，动画开始调用 )
 */
- (__kindof SwpCircleAnimationButton * _Nonnull (^)(SwpCircleAnimationButtonAnimationBlock))swpCircleAnimationButtonDidStartAnimation {
    return ^(SwpCircleAnimationButtonAnimationBlock didStartAnimation) {
        [self swpCircleAnimationButtonDidStartAnimation:didStartAnimation];
        return self;
    };
}


/**
 *  @author swp_song
 *
 *  @brief  swpCircleAnimationButtonWillFinishAnimation:    ( SwpCircleAnimationButton 回调方法，动画将要接结束调用 )
 *
 *  @param  willFinishAnimation willFinishAnimation
 */
- (void)swpCircleAnimationButtonWillFinishAnimation:(SwpCircleAnimationButtonAnimationBlock)willFinishAnimation {
    _willFinishAnimation = willFinishAnimation;
}

/**
 *  @author swp_song
 *
 *  @brief  swpCircleAnimationButtonWillFinishAnimation ( SwpCircleAnimationButton 回调方法，动画将要接结束调用 )
 */
- (__kindof SwpCircleAnimationButton * _Nonnull (^)(SwpCircleAnimationButtonAnimationBlock))swpCircleAnimationButtonWillFinishAnimation {
    return ^(SwpCircleAnimationButtonAnimationBlock willFinishAnimation) {
        [self swpCircleAnimationButtonWillFinishAnimation:willFinishAnimation];
        return self;
    };
}


/**
 *  @author swp_song
 *
 *  @brief  swpCircleAnimationButtonDidFinishAnimation: ( SwpCircleAnimationButton 回调方法，动画结束调用 )
 *
 *  @param  didFinishAnimation  didFinishAnimation
 */
- (void)swpCircleAnimationButtonDidFinishAnimation:(SwpCircleAnimationButtonAnimationBlock)didFinishAnimation {
    _didFinishAnimation = didFinishAnimation;
}

/**
 *  @author swp_song
 *
 *  @brief  swpCircleAnimationButtonDidFinishAnimation  ( SwpCircleAnimationButton 回调方法，动画结束调用 )
 */
- (__kindof SwpCircleAnimationButton * _Nonnull (^)(SwpCircleAnimationButtonAnimationBlock))swpCircleAnimationButtonDidFinishAnimation {
    return ^(SwpCircleAnimationButtonAnimationBlock didFinishAnimation) {
        [self swpCircleAnimationButtonDidFinishAnimation:didFinishAnimation];
        return self;
    };
}

#pragma mark - Private Methods
/**
 *  @author swp_song
 *
 *  @brief  circleAnimationButtonConfig:    ( 使用 frame 配置 Button )
 *
 *  @param frame    frame
 */
- (instancetype)circleAnimationButtonConfig:(CGRect)frame {
    
    if (!self) NSAssert(NO, @"当前对象未初始化");
    if (CGRectIsEmpty(frame) && CGRectEqualToRect(frame, CGRectZero)) {
        NSAssert(NO, @"当前对象 frame 不正确");
        return self;
    }
    
    self.frame               = frame;
    self.layer.cornerRadius  = self.frame.size.height / 2;
    self.layer.masksToBounds = YES;
    self.clipsToBounds       = NO;
    _origionRect             = self.frame;
    return self;
}

/**
 *  @author swp_song
 *
 *  @brief  circleAnimationAutoLayoutConfig ( 使用 AutoLayout 配置 Button )
 */
- (instancetype)circleAnimationAutoLayoutConfig {
    [self layoutIfNeeded];
    [self circleAnimationButtonConfig:self.frame];
    return self;
}

/**
 *  @author swp_song
 *
 *  @brief  startAnimation   ( 开始动画 )
 *
 *  @return SwpCircleAnimationButton
 */
- (instancetype)startAnimation {
    
    if (!self) NSAssert(NO, @"当前对象未初始化");
    
    if (CGRectIsEmpty(_origionRect) && CGRectEqualToRect(_origionRect, CGRectZero)) {
        NSAssert(NO, @"当前对象 frame 不正确");
        return self;
    }
    
    CGPoint center      = self.center;
    CGFloat width       = self.layer.cornerRadius * 2;
    CGFloat height      = self.frame.size.height;
    CGRect  desFrame    = CGRectMake(center.x - width / 2, center.y - height / 2, width, height);

    
    self.userInteractionEnabled = NO;
    
    //  block
    if (self.didStartAnimation) self.didStartAnimation(self);
    
    //  delegate
    if ([self._delegate respondsToSelector:@selector(swpCircleAnimationButtonDidStartAnimation:)]) {
        [self._delegate swpCircleAnimationButtonDidStartAnimation:self];
    }
    
    dispatch_async(dispatch_get_main_queue(), ^{
        
        [UIView animateWithDuration:SwpCircleAnimationButtonStartDuration animations:^{
            self.titleLabel.alpha = .0f;
            self.frame            = desFrame;
        } completion:^(BOOL finished) {
            [self.circleView swpButtonCircleViewStartAnimation];
        }];
    });
    return self;
}


/**
 *  @author swp_song
 *
 *  @brief  stopAnimation   ( 停止动画 )
 *
 *  @return SwpCircleAnimationButton
 */
- (instancetype)stopAnimation {
    
    if (!self) NSAssert(NO, @"当前对象未初始化");
    if (CGRectIsEmpty(_origionRect) && CGRectEqualToRect(_origionRect, CGRectZero)) {
        NSAssert(NO, @"当前对象 frame 不正确");
        return self;
    }
    self.userInteractionEnabled = YES;
    
    //  block
    if (self.willFinishAnimation) self.willFinishAnimation(self);
    
    //  delegate
    if ([self._delegate respondsToSelector:@selector(swpCircleAnimationButtonWillFinishAnimation:)]) {
        [self._delegate swpCircleAnimationButtonWillFinishAnimation:self];
    }
    
    [self.circleView swpButtonCircleViewStopAnimation];
    self.circleView = nil;
    
    dispatch_async(dispatch_get_main_queue(), ^{
        
        [UIView animateWithDuration:SwpCircleAnimationButtonStopDuration animations:^{
            
            self.frame = self->_origionRect;
            self.titleLabel.alpha = 1.0f;
            
        } completion:^(BOOL finished) {
            
            //  block
            if (self.didFinishAnimation) self.didFinishAnimation(self);
            //  delegate
            if ([self._delegate respondsToSelector:@selector(swpCircleAnimationButtonDidFinishAnimation:)]) {
                [self._delegate swpCircleAnimationButtonDidFinishAnimation:self];
            }
        }];
        
    });
    
    return self;

}

/**
 *  @author swp_song
 *
 *  @brief  dealloc ( 当前控制器被销毁时调用 )
 */
- (void)dealloc {
    NSLog(@"%s", __FUNCTION__);
}


#pragma mark - Init UI Methods
- (SwpButtonCircleView *)circleView {
    return  !_circleView ? _circleView = ({
        SwpButtonCircleView *button =
        [SwpButtonCircleView swpButtonCircleViewWithButton:self]
        .borderColor(_lineBorderColor)
        .lineWidth(_lineBorderWidth);
        [self addSubview:button];
        button;
    }) : _circleView;
}





/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
