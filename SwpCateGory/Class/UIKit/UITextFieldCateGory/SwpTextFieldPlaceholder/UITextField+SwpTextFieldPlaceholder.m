//
//  UITextField+SwpTextFieldPlaceholder.m
//  swp_song
//
//  Created by swp_song on 2018/6/1.
//  Copyright © 2018年 swp-song. All rights reserved.
//

#import "UITextField+SwpTextFieldPlaceholder.h"

@implementation UITextField (SwpTextFieldPlaceholder)


/**
 *  @author swp_song
 *
 *  @brief  swpPlaceholderColor:    ( set placeholder color )
 *
 *  @param  color   color
 */
- (void)swpPlaceholderColor:(UIColor *)color {
    self.attributedPlaceholder = [[NSAttributedString alloc] initWithString:self.placeholder attributes:@{NSForegroundColorAttributeName: color}];
}

/**
 *  @author swp_song
 *
 *  @brief  swpPlaceholderColor ( set placeholder color )
 */
- (__kindof UITextField * _Nonnull (^)(UIColor *))swpPlaceholderColor {
    return ^(UIColor *color) {
        [self swpPlaceholderColor:color];
        return self;
    };
}


/**
 *  @author swp_song
 *
 *  @brief  swpPlaceholderFont: ( set placeholder font )
 *
 *  @param  font    font
 */
- (void)swpPlaceholderFont:(UIFont *)font {
    self.attributedPlaceholder = [[NSAttributedString alloc] initWithString:self.placeholder attributes:@{NSFontAttributeName: font}];
}

/**
 *  @author swp_song
 *
 *  @brief  swpPlaceholderFont  ( set placeholder font )
 */
- (__kindof UITextField * _Nonnull (^)(UIFont *))swpPlaceholderFont {
    return ^(UIFont *font) {
        [self swpPlaceholderFont:font];
        return self;
    };
}

/**
 *  @author swp_song
 *
 *  @brief  swpPlaceholderSystemFontOfSize: ( set placeholder system font size )
 *
 *  @param  size    size
 */
- (void)swpPlaceholderSystemFontOfSize:(CGFloat)size {
    self.swpPlaceholderFont([UIFont systemFontOfSize:size]);
}

/**
 *  @author swp_song
 *
 *  @brief  swpPlaceholderSystemFontOfSize  ( set placeholder system font size )
 */
- (__kindof UITextField * _Nonnull (^)(CGFloat))swpPlaceholderSystemFontOfSize {
    return ^(CGFloat size) {
        [self swpPlaceholderSystemFontOfSize:size];
        return self;
    };
}



@end
