//
//  UIButton+SwpButtonPropertys.m
//  swp_song
//
//  Created by swp_song on 2018/6/3.
//  Copyright © 2018年 swp-song. All rights reserved.
//

#import "UIButton+SwpButtonPropertys.h"

@implementation UIButton (SwpButtonPropertys)

#pragma mark - System
/**
 *  @author swp_song
 *
 *  @brief  swpTitle    ( set button title )
 */
- (__kindof UIButton * _Nonnull (^)(NSString *, UIControlState))swpTitle {
    return ^(NSString *title, UIControlState state) {
        [self setTitle:title forState:state];
        return self;
    };
}

/**
 *  @author swp_song
 *
 *  @brief  swpTitleLabelFont   ( set title label font )
 */
- (__kindof UIButton * _Nonnull (^)(UIFont *))swpTitleLabelFont {
    return ^(UIFont *font) {
        self.titleLabel.font = font;
        return self;
    };
}

/**
 *  @author swp_song
 *
 *  @brief  swpTitleLabelSystemFontSize ( set title label system font size )
 */
- (__kindof UIButton * _Nonnull (^)(CGFloat))swpTitleLabelSystemFontSize {
    return ^(CGFloat size) {
        self.titleLabel.font = [UIFont systemFontOfSize:size];
        return self;
    };
}

/**
 *  @author swp_song
 *
 *  @brief  swpTitleColor   ( set title color )
 */
- (__kindof UIButton * _Nonnull (^)(UIColor *, UIControlState))swpTitleColor {
    return ^(UIColor *color, UIControlState state) {
        [self setTitleColor:color forState:state];
        return self;
    };
}


/**
 *  @author swp_song
 *
 *  @brief  swpImage    ( set button image )
 */
- (__kindof UIButton * _Nonnull (^)(UIImage *, UIControlState))swpImage {
    return ^(UIImage *image, UIControlState state) {
        [self setImage:image forState:state];
        return self;
    };
}

/**
 *  @author swp_song
 *
 *  @brief  swpBackgroundImage  ( set background image )
 */
- (__kindof UIButton * _Nonnull (^)(UIImage *, UIControlState))swpBackgroundImage {
    return ^(UIImage *image, UIControlState state) {
        [self setBackgroundImage:image forState:state];
        return self;
    };
}



/**
 *  @author swp_song
 *
 *  @brief  swpTag  ( set tag )
 */
- (__kindof UIButton * _Nonnull (^)(NSInteger ))swpTag {
    return ^(NSInteger tag) {
        self.tag = tag;
        return self;
    };
}

/**
 *  @author swp_song
 *
 *  @brief  swpTargetEvent  ( set target event )
 */
- (__kindof UIButton * _Nonnull (^)(id _Nullable, SEL _Nullable, UIControlEvents))swpTargetEvent {
    return ^(id target, SEL action, UIControlEvents events) {
        [self addTarget:target action:action forControlEvents:events];
        return self;
    };
}

/**
 *  @author swp_song
 *
 *  @brief  swpTitleEdgeInsets  ( set titleEdgeInsets )
 */
- (__kindof UIButton * _Nonnull (^)(UIEdgeInsets))swpTitleEdgeInsets {
    return ^(UIEdgeInsets titleEdgeInsets) {
        self.titleEdgeInsets = titleEdgeInsets;
        return self;
    };
}

/**
 *  @author swp_song
 *
 *  @brief  swpImageEdgeInsets  ( set imageEdgeInsets )
 */
- (__kindof UIButton * _Nonnull (^)(UIEdgeInsets))swpImageEdgeInsets {
    return ^(UIEdgeInsets imageEdgeInsets) {
        self.imageEdgeInsets = imageEdgeInsets;
        return self;
    };
}

#pragma mark - Custom

/**
 *  @author swp_song
 *
 *  @brief  swpImageEdge:offset: ( set image edge )
 *
 *  @param  edge    edge
 *
 *  @param  offset  offset
 */
- (void)swpImageEdge:(SwpButtonImageEdge)edge offset:(CGFloat)offset {
    ButtonImageEdge(self, edge, offset);
}

/**
 *  @author swp_song
 *
 *  @brief  swpImageEdge    ( set image edge )
 *
 *  @param  edge    edge
 */
- (void)swpImageEdge:(SwpButtonImageEdge)edge {
    [self swpImageEdge:edge offset:0];
}



/**
 *  @author swp_song
 *
 *  @brief  swpImageEdge    ( set image edge )
 */
- (__kindof UIButton *(^)(SwpButtonImageEdge edge))swpImageEdge {
    
    return ^(SwpButtonImageEdge edge) {
        return self.swpImageEdgeOffset(edge, 0);
    };
}

/**
 *  @author swp_song
 *
 *  @brief  swpImageEdgeOffset  ( set image edge )
 */
- (__kindof UIButton *(^)(SwpButtonImageEdge, CGFloat))swpImageEdgeOffset {
    return ^(SwpButtonImageEdge edge, CGFloat offset) {
        return ButtonImageEdge(self, edge, offset);
    };
}


#pragma mark - Private
/**
 *  @author swp_song
 *
 *  @brief  ButtonImagePosition ( set button image position )
 *
 *  @param  button  button
 *
 *  @param  edge    edge
 *
 *  @param  offset  offset
 *
 *  @return UIButton
 */
FOUNDATION_STATIC_INLINE UIButton * ButtonImageEdge(UIButton *button, SwpButtonImageEdge edge, CGFloat offset) {
    
    CGFloat imageWith   = button.currentImage.size.width;
    CGFloat imageHeight = button.currentImage.size.height;
    CGFloat labelWidth  = 0.0;
    CGFloat labelHeight = 0.0;
    if (UIDevice.currentDevice.systemVersion.floatValue >= 8.0) {
        labelWidth  = button.titleLabel.intrinsicContentSize.width;
        labelHeight = button.titleLabel.intrinsicContentSize.height;
    } else {
        labelWidth  = button.titleLabel.frame.size.width;
        labelHeight = button.titleLabel.frame.size.height;
    }
    
    UIEdgeInsets imageEdgeInsets = UIEdgeInsetsZero;
    UIEdgeInsets labelEdgeInsets = UIEdgeInsetsZero;
    
    //  计算 label 和 image 位置
    switch (edge) {
        case SwpButtonImageEdgeTop: {
            imageEdgeInsets = UIEdgeInsetsMake(-labelHeight - offset, 0, 0, -labelWidth);
            labelEdgeInsets = UIEdgeInsetsMake(0, -imageWith, -imageHeight - offset, 0);
        }
            break;
        case SwpButtonImageEdgeLeft: {
            imageEdgeInsets = UIEdgeInsetsMake(0, -offset, 0, offset);
            labelEdgeInsets = UIEdgeInsetsMake(0, offset, 0, -offset);
        }
            break;
        case SwpButtonImageEdgeBottom : {
            imageEdgeInsets = UIEdgeInsetsMake(0, 0, -labelHeight - offset, -labelWidth);
            labelEdgeInsets = UIEdgeInsetsMake(-imageHeight - offset, -imageWith, 0, 0);
        }
            break;
        case SwpButtonImageEdgeRight: {
            imageEdgeInsets = UIEdgeInsetsMake(0, labelWidth + offset, 0, -labelWidth - offset);
            labelEdgeInsets = UIEdgeInsetsMake(0, -imageWith - offset, 0, imageWith + offset);
        }
            break;
        default:
            break;
    }
    
    //  赋值
    button.titleEdgeInsets = labelEdgeInsets;
    button.imageEdgeInsets = imageEdgeInsets;
    
    return button;
}



@end
