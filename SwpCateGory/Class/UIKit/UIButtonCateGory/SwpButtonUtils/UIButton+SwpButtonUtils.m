//
//  UIButton+SwpButtonUtils.m
//  swp_song
//
//  Created by swp_song on 2018/5/6.
//  Copyright © 2018年 swp-song. All rights reserved.
//

#import "UIButton+SwpButtonUtils.h"

@implementation UIButton (SwpButtonUtils)

/**
 *  @author swp_song
 *
 *  @brief  swpButtonUtilsSetGradientColor:colors:scales:direction:colorNumber: ( 设置按钮，渐变颜色，最多三种颜色)
 *
 *  @param  size        size
 *
 *  @param  colors      颜色数组
 *
 *  @param  scales      颜色比例数组
 *
 *  @param  direction   渐变方向
 *
 *  @return UIButton
 */
- (UIButton *)swpButtonUtilsSetGradientColor:(CGSize)size colors:(NSArray<UIColor *> *)colors scales:(NSArray<NSNumber *> *)scales direction:(SwpButtonGradientDirection)direction  {
    
    NSAssert(!(colors.count != scales.count || scales.count > 3 || colors.count > 3 || !colors.count || !scales.count) , @"参数异常！");
    return [self swpButtonUtilsSetGradientColor:size colors:colors scales:scales direction:direction colorNumber:3];
}


/**
 *  @author swp_song
 *
 *  @brief  swpButtonUtilsSetGradientColor  ( 设置按钮，渐变颜色，最多三种颜色 )
 */
- (__kindof UIButton * _Nonnull (^)(CGSize, NSArray<UIColor *> *, NSArray<NSNumber *> *, SwpButtonGradientDirection))swpButtonUtilsSetGradientColor {
    return ^(CGSize size,  NSArray<UIColor *> * colors, NSArray<NSNumber *> * scales, SwpButtonGradientDirection direction) {
        return [self swpButtonUtilsSetGradientColor:size colors:colors scales:scales direction:direction];
    };
}

/**
 *  @author swp_song
 *
 *  @brief  swpButtonUtilsSetGradientColor:colors:scales:direction:colorNumber: ( 设置按钮，渐变颜色 )
 *
 *  @param  size        size
 *
 *  @param  colors      颜色数组
 *
 *  @param  scales      颜色比例数组
 *
 *  @param  direction   渐变方向
 *
 *  @param  colorNumber 几个渐变颜色
 *
 *  @return UIButton
 */
- (UIButton *)swpButtonUtilsSetGradientColor:(CGSize)size colors:(NSArray<UIColor *> *)colors scales:(NSArray<NSNumber *> *)scales direction:(SwpButtonGradientDirection)direction colorNumber:(NSInteger)colorNumber {
    
    NSAssert(!(scales.count > colorNumber), @"参数异常！");
    UIImage *image = CreateGradientImage(size, colors, scales, direction, colorNumber);
    [self setBackgroundImage:image forState:(UIControlStateNormal)];
    return self;
}



/**
 *  @author swp_song
 *
 *  @brief  CreateGradientImage  ( 创建渐变色，图片 )
 *
 *  @param  imageSize   imageSize
 *
 *  @param  colors      颜色数组
 *
 *  @param  scales      颜色比例数组
 *
 *  @param  direction   渐变方向
 *
 *  @param  colorNumber 几个渐变颜色
 *
 *  @return UIImage
 */
FOUNDATION_STATIC_INLINE UIImage * CreateGradientImage(CGSize imageSize, NSArray<UIColor *> *colors, NSArray<NSNumber *> *scales, SwpButtonGradientDirection direction, NSInteger colorNumber) {
    
    NSMutableArray *cgColors = NSMutableArray.new;
    [colors enumerateObjectsUsingBlock:^(UIColor * _Nonnull color, NSUInteger idx, BOOL * _Nonnull stop) {
        [cgColors addObject:(id)color.CGColor];
    }];
    
    CGFloat locations[colorNumber];
    for (int i = 0; i < scales.count; i++) {
        locations[i] = [scales[i] floatValue];
    }
    
    UIGraphicsBeginImageContextWithOptions(imageSize, YES, 1);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSaveGState(context);
    
    CGColorSpaceRef colorSpace = CGColorGetColorSpace([colors.lastObject CGColor]);
    CGGradientRef   gradient   = CGGradientCreateWithColors(colorSpace, (CFArrayRef)cgColors, locations);
    CGPoint         startPoint = CGPointZero;
    CGPoint         endPoint   = CGPointZero;
    switch (direction) {
        case SwpButtonGradientDirectionTopToBottom: {
            startPoint   = CGPointMake(imageSize.width / 2, 0.0);
            endPoint     = CGPointMake(imageSize.width / 2, imageSize.height);
        }
            break;
        case SwpButtonGradientDirectionLeftToRight: {
            startPoint  = CGPointMake(0.0, imageSize.height / 2);
            endPoint    = CGPointMake(imageSize.width, imageSize.height / 2);
        }
            
            break;
        case SwpButtonGradientDirectionLeftTopToRightBottom: {
            startPoint  = CGPointMake(0.0, 0.0);
            endPoint    = CGPointMake(imageSize.width, imageSize.height);
        }
            break;
        case SwpButtonGradientDirectionLeftBottomToRightTop: {
            startPoint  = CGPointMake(0.0, imageSize.height);
            endPoint    = CGPointMake(imageSize.width, 0.0);
        }
            
            break;
        default:
            break;
    }
    CGContextDrawLinearGradient(context, gradient, startPoint, endPoint, kCGGradientDrawsBeforeStartLocation | kCGGradientDrawsAfterEndLocation);
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    CGGradientRelease(gradient);
    CGContextRestoreGState(context);
    CGColorSpaceRelease(colorSpace);
    UIGraphicsEndImageContext();
    return image;
}

@end
