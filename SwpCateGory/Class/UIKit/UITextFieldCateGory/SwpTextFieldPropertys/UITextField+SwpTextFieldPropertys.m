//
//  UITextField+SwpTextFieldPropertys.m
//  swp_song
//
//  Created by swp_song on 2018/6/2.
//  Copyright © 2018年 swp-song. All rights reserved.
//

#import "UITextField+SwpTextFieldPropertys.h"


@implementation UITextField (SwpTextFieldPropertys)


#pragma mark - UITextField Propertys
/**
 *  @author swp_song
 *
 *  @brief  swpText ( 设置 text )
 */
- (__kindof UITextField * _Nonnull (^)(NSString *))swpText {
    return ^(NSString *text) {
        self.text = text;
        return self;
    };
}


/**
 *  @author swp_song
 *
 *  @brief  swpTextColor    ( 设置 textColor )
 */
- (__kindof UITextField * _Nonnull (^)(UIColor *))swpTextColor {
    return ^(UIColor *textColor) {
        self.textColor = textColor;
        return self;
    };
}

/**
 *  @author swp_song
 *
 *  @brief  swpPlaceholder  ( 设置 swpPlaceholder )
 */
- (__kindof UITextField * _Nonnull (^)(NSString *))swpPlaceholder {
    return ^(NSString *placeholder) {
        self.placeholder = placeholder;
        return self;
    };
}

/**
 *  @author swp_song
 *
 *  @brief  swpFont ( 设置 text )
 */
- (__kindof UITextField * _Nonnull (^)(UIFont *))swpFont {
    return ^(UIFont *font) {
        self.font = font;
        return self;
    };
}

/**
 *  @author swp_song
 *
 *  @brief  swpSystemFontSize   ( 设置 System Font Size )
 */
- (__kindof UITextField * _Nonnull (^)(CGFloat))swpSystemFontSize {
    return ^(CGFloat size) {
        self.font = [UIFont systemFontOfSize:size];
        return self;
    };
}

/**
 *  @author swp_song
 *
 *  @brief  swpKeyboardType ( 设置 keyboardType )
 */
- (__kindof UITextField * _Nonnull (^)(UIKeyboardType))swpKeyboardType {
    return ^(UIKeyboardType keyboardType) {
        self.keyboardType = keyboardType;
        return self;
    };
}

/**
 *  @author swp_song
 *
 *  @brief  swpSecureTextEntry  ( 设置 swpSecureTextEntry )
 */
- (__kindof UITextField * _Nonnull (^)(BOOL))swpSecureTextEntry {
    return ^(BOOL secureTextEntry) {
        self.secureTextEntry = secureTextEntry;
        return self;
    };
}

/**
 *  @author swp_song
 *
 *  @brief  swpClearButtonMode  ( 设置 clearButtonMode )
 */
- (__kindof UITextField * _Nonnull (^)(UITextFieldViewMode))swpClearButtonMode {
    return ^(UITextFieldViewMode clearButtonMode) {
        self.clearButtonMode = clearButtonMode;
        return self;
    };
}

/**
 *  @author swp_song
 *
 *  @brief  swpLeftView ( 设置左侧 view )
 */
- (__kindof UITextField * _Nonnull (^)(UIView *, UITextFieldViewMode))swpLeftView {
    return ^(UIView *view, UITextFieldViewMode viewMode) {
        self.leftViewMode  = viewMode;
        self.leftView    = view;
        return self;
    };
}

/**
 *  @author swp_song
 *
 *  @brief  swpRightView    ( 设置右侧 view )
 */
- (__kindof UITextField * _Nonnull (^)(UIView *, UITextFieldViewMode))swpRightView {
    return ^(UIView *view, UITextFieldViewMode viewMode) {
        self.rightViewMode  = viewMode;
        self.rightView      = view;
        return self;
    };
}

/**
 *  @author swp_song
 *
 *  @brief  swpTextLeftMargins  ( The left margin of the text )
 */
- (__kindof UITextField * _Nonnull (^)(CGFloat))swpTextLeftMargins {
    return ^(CGFloat margins) {
        self.swpLeftView([[UIView alloc] initWithFrame:CGRectMake(0, 0, margins, 0)], UITextFieldViewModeAlways);
        return self;
    };
}


/**
 *  @author swp_song
 *
 *  @brief  swpTextLeftDefaultMargins   ( The left default margin of the text  )
 */
- (__kindof UITextField * _Nonnull (^)(void))swpTextLeftDefaultMargins {
    return ^(void) {
        self.swpTextLeftMargins(10);
        return self;
    };
}


/**
 *  @author swp_song
 *
 *  @brief  swpLeftImage    ( The left imageView  )
 */
- (__kindof UITextField * _Nonnull (^)(UIImage *image))swpLeftImage {
    return ^(UIImage *image) {
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 30, 30)];
        imageView.image        = image;
        imageView.contentMode  = UIViewContentModeCenter;
        self.swpLeftView(imageView, UITextFieldViewModeAlways);
        return self;
    };
}



#pragma mark - UITextField Placeholder Propertys

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
