
//
//  UIView+SwpViewPropertys.m
//  SwpCateGoryDemo
//
//  Created by swp_song on 2018/6/3.
//  Copyright © 2018年 swp-song. All rights reserved.
//

#import "UIView+SwpViewPropertys.h"

@implementation UIView (SwpViewPropertys)

/**
 *  @author swp_song
 *
 *  @brief  swpBackgroundColor  ( set backgroundColor )
 */
- (__kindof UIView * _Nonnull (^)(UIColor *))swpBackgroundColor {
    return ^(UIColor *color) {
        
        self.backgroundColor = color;
        return self;
    };
}

/**
 *  @author swp_song
 *
 *  @brief  swpBorderWidth  ( set layer borderWidth )
 */
- (__kindof UIView * _Nonnull (^)(CGFloat))swpBorderWidth {
    return ^(CGFloat borderWidth) {
        self.layer.borderWidth = borderWidth;
        return self;
    };
}

/**
 *  @author swp_song
 *
 *  @brief  swpBorderWidth  ( set layer cornerRadius )
 */
- (__kindof UIView * _Nonnull (^)(CGFloat))swpCornerRadius {
    return ^(CGFloat cornerRadius) {
        self.layer.cornerRadius = cornerRadius;
        return self;
    };
}

/**
 *  @author swp_song
 *
 *  @brief  swpMasksToBounds    ( set layer masksToBounds )
 */
- (__kindof UIView * _Nonnull (^)(BOOL))swpMasksToBounds {
    return ^(BOOL masksToBounds) {
        self.layer.masksToBounds = masksToBounds;
        return self;
    };
}


/**
 *  @author swp_song
 *
 *  @brief  swpCornerRadiusMasks    ( set layer cornerRadius, masksToBounds )
 */
- (__kindof UIView * _Nonnull (^)(CGFloat))swpCornerRadiusMasks {
    return ^(CGFloat cornerRadius) {
        self.swpCornerRadius(cornerRadius).swpMasksToBounds(YES);
        return self;
    };
}



/**
 *  @author swp_song
 *
 *  @brief  swpBorderColor  ( set layer borderColor )
 */
- (__kindof UIView * _Nonnull (^)(UIColor *))swpBorderColor {
    return ^(UIColor *color) {
        self.layer.borderColor = color.CGColor;
        return self;
    };
}







@end
