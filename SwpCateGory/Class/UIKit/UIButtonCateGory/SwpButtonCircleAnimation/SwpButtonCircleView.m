//
//  SwpButtonCircleView.m
//  swp_song
//
//  Created by swp_song on 2018/5/1.
//  Copyright © 2018年 swp-song. All rights reserved.
//

#import "SwpButtonCircleView.h"

/* ---------------------- Tool       ---------------------- */
/* ---------------------- Tool       ---------------------- */

@interface SwpButtonCircleView ()
{
    
    /** 圆圈转速 */
    CGFloat _speed;
    
    /** 定时器 */
    NSTimer *_timer;
    
    /** 边框颜色 */
    UIColor *_borderColor;
    /** 线宽 */
    CGFloat _lineWidth;
}

@end

@implementation SwpButtonCircleView

/**
 *  @author swp_song
 *
 *  @brief  removeFromSuperview ( Override RemoveFromSuperview )
 */
- (void)removeFromSuperview {
    [_timer invalidate];
    [super removeFromSuperview];
}

/**
 *  @author swp_song
 *
 *  @brief  drawRect:   ( drawRect 绘制方法 )
 *
 *  @param  rect    rect
 */
- (void)drawRect:(CGRect)rect{
    
    [super drawRect:rect];
    
    UIBezierPath *path = [UIBezierPath bezierPath];
    
    //  圆心
    CGPoint center  = CGPointMake(rect.size.width / 2, rect.size.height / 2);
    
    //  半径
    CGFloat radius  = rect.size.width / 2 - 2;
    
    //  起始的弧度
    CGFloat start   = -M_PI_2 + _speed * 2 * M_PI;
    
    //  圆弧结束的弧度
    CGFloat end     = -M_PI_2 + 0.45 * 2 * M_PI + _speed * 2 * M_PI;
    
    // clockwise，YES 为顺时针，NO 为逆时针
    [path addArcWithCenter:center radius:radius startAngle:start endAngle:end clockwise:YES];
    
    //  设置描边色
    [_borderColor setStroke];

    //  设置描边宽度
    path.lineWidth = _lineWidth;
    
    //  描边
    [path stroke];
}
/**
 *  @author swp_song
 *
 *  @brief  continueAnimation   ( 支持动画方法 )
 */
- (void)continueAnimation {
    
    _speed += 0.02;
    // 因为 drawRect 方法只调用 1 次，所以如果需要刷新图形，需要用 setNeedsDisplay 强制调用刷新
    [self setNeedsDisplay];
}


/**
 *  @author swp_song
 *
 *  @brief  initWithButton: ( 快速初始化 )
 *
 *  @param  button  button
 *
 *  @return SwpButtonCircleView
 */
- (instancetype)initWithButton:(UIButton *)button {
    if (self = [super initWithFrame:CGRectMake(-8, -8, button.frame.size.width + 16, button.frame.size.height + 16)]) {
        self.backgroundColor = [UIColor clearColor];
        _borderColor = button.titleLabel.textColor;
        _speed       = 0;
        _lineWidth   = 1.5;
    }
    return self;
}

/**
 *  @author swp_song
 *
 *  @brief  swpButtonCircleViewWithButton: ( 快速初始化 )
 *
 *  @param  button  button
 *
 *  @return SwpButtonCircleView
 */
+ (instancetype)swpButtonCircleViewWithButton:(UIButton *)button {
    return [[self.class alloc] initWithButton:button];
}

/**
 *  @author swp_song
 *
 *  @brief  swpButtonCircleViewStartAnimation   ( 开始动画 )
 */
- (void)swpButtonCircleViewStartAnimation {
    _timer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(continueAnimation) userInfo:nil repeats:YES];
    [_timer fire];
}

/**
 *  @author swp_song
 *
 *  @brief  swpButtonCircleViewStopAnimation    ( 停止动画 )
 */
- (void)swpButtonCircleViewStopAnimation {
    [self removeFromSuperview];
}

/**
 *  @author swp_song
 *
 *  @brief  borderColor ( 设置旋转边框颜色 )
 */
- (SwpButtonCircleView * _Nonnull (^)(UIColor * _Nonnull))borderColor {
    return ^(UIColor *borderColor) {
        borderColor          =  borderColor ? borderColor : self->_borderColor;
        self->_borderColor   = borderColor;
        return self;
    };
}

/**
 *  @author swp_song
 *
 *  @brief  lineWidth   ( 设置旋转边距，最大 4，最小 1 )
 */
- (SwpButtonCircleView * _Nonnull (^)(CGFloat))lineWidth {
    return ^(CGFloat lineWidth) {
        if (lineWidth == 0)     lineWidth = 1;
        if (lineWidth > 4.0f)   lineWidth = 4.0f;
        self->_lineWidth = lineWidth;
        return self;
    };
}



/**
 *  @author swp_song
 *
 *  @brief  dealloc ( 当前控制器被销毁时调用 )
 */
- (void)dealloc {
    NSLog(@"%s", __FUNCTION__);
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
