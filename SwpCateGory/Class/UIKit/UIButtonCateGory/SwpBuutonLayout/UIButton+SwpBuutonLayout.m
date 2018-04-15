//
//  UIButton+SwpBuutonLayout.m
//  swp_song
//
//  Created by swp_song on 2018/4/14.
//  Copyright © 2018年 swp-song. All rights reserved.
//

#import "UIButton+SwpBuutonLayout.h"

/* ---------------------- Tool       ---------------------- */
#import <objc/runtime.h>
/* ---------------------- Tool       ---------------------- */

@implementation UIButton (SwpBuutonLayout)

/**
 *  @author swp_song
 *
 *  @brief  load    ( Override load )
 */
+ (void)load {
    
    //  可以不适用 GCD lod 本身也就调用一次
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
        //  替换 title
        swp_MethodSwizzle(self, @selector(titleRectForContentRect:), @selector(swp_titleRectForContentRect:));
        
        //  替换 image
        swp_MethodSwizzle(self, @selector(imageRectForContentRect:), @selector(swp_imageRectForContentRect:));
    });
}


/**
 *  @author swp_song
 *
 *  @brief  swpTitleRect   ( swpTitleRect = swpTitleFrame )
 */
- (UIButton * _Nonnull (^)(CGRect))swpTitleRect {
    return ^(CGRect rect) {
        self.swpTitleFrame = rect;
        return self;
    };
}

/**
 *  @author swp_song
 *
 *  @brief  swpImageRect   ( swpImageRect = swpImageFrame )
 */
- (UIButton * _Nonnull (^)(CGRect))swpImageRect {
    return ^(CGRect rect) {
        self.swpImageFrame = rect;
        return self;
    };
}


/// titleFrame 关联 key
static const char kSwpBuutonLayoutTitleFrameKey;

/**
 *  @author swp_song
 *
 *  @brief  setSwpTitleFrame:   ( SwpTitleFrame Set )
 *
 *  @param  swpTitleFrame   swpTitleFrame
 */
- (void)setSwpTitleFrame:(CGRect)swpTitleFrame {
    objc_setAssociatedObject(self, &kSwpBuutonLayoutTitleFrameKey, [NSValue valueWithCGRect:swpTitleFrame], OBJC_ASSOCIATION_COPY);
}

/**
 *  @author swp_song
 *
 *  @brief  swpTitleFrame   ( SwpTitleFrame Get )
 *
 *  @return CGRect
 */
- (CGRect)swpTitleFrame {
    return [objc_getAssociatedObject(self, &kSwpBuutonLayoutTitleFrameKey) CGRectValue];
}


/// imageFrame 关联 key
static const char kSwpBuutonLayoutImageFrameKey;

/**
 *  @author swp_song
 *
 *  @brief  setSwpImageFrame:   ( SwpImageFrame Set )
 *
 *  @param  swpImageFrame   swpImageFrame
 */
- (void)setSwpImageFrame:(CGRect)swpImageFrame {
    objc_setAssociatedObject(self, &kSwpBuutonLayoutImageFrameKey, [NSValue valueWithCGRect:swpImageFrame], OBJC_ASSOCIATION_COPY);
}

/**
 *  @author swp_song
 *
 *  @brief  swpImageFrame   ( imageFrame Get )
 *
 *  @return CGRect
 */
- (CGRect)swpImageFrame {
    return [objc_getAssociatedObject(self, &kSwpBuutonLayoutImageFrameKey) CGRectValue];
}


/**
 *  @author swp_song
 *
 *  @brief  swp_MethodSwizzle   ( 方法替换 )
 *
 *  @param  aClass      aClass
 *
 *  @param  originaSEL  originaSEL
 *
 *  @param  replaceSEL  replaceSEL
 */
FOUNDATION_STATIC_INLINE void swp_MethodSwizzle(Class aClass,SEL originaSEL, SEL replaceSEL) {
    
    
    Method originaMethod = class_getInstanceMethod(aClass, originaSEL);
    Method replaceMethod = class_getInstanceMethod(aClass, replaceSEL);
    
    //  class_addMethod 验证方法是否存在，不存在返回 NO，这里用来验证
    if(class_addMethod(aClass, originaSEL, method_getImplementation(replaceMethod), method_getTypeEncoding(replaceMethod))) {
        
        //  方法不存在，也就是说方法没实现,我们需要先把这个方法实现, 然后在去替换, 这里使用到的是class_replaceMethod这个方法. class_replaceMethod 本身会尝试调用 class_addMethod 和method_setImplementation，所以直接调用 class_replaceMethod
        class_replaceMethod(aClass, originaSEL, method_getImplementation(originaMethod), method_getTypeEncoding(originaMethod));
    } else {
        //  方法交换
        method_exchangeImplementations(originaMethod, replaceMethod);
    }
}


/**
 *  @author swp_song
 *
 *  @brief  swp_titleRectForContentRect:    ( 替换 title 方法 )
 *
 *  @param  contentRect contentRect
 *
 *  @return CGRect      CGRect
 */
- (CGRect)swp_titleRectForContentRect:(CGRect)contentRect {
    
    if (!CGRectIsEmpty(self.swpTitleFrame) && !CGRectEqualToRect(self.swpTitleFrame, CGRectZero)) {
        return self.swpTitleFrame;
    }
    //  注意:此处并没有递归操作，调回原方法。
    return [self swp_titleRectForContentRect:contentRect];
    
}

/**
 *  @author swp_song
 *
 *  @brief  swp_imageRectForContentRect:    ( 替换 image 方法 )
 *
 *  @param  contentRect contentRect
 *
 *  @return CGRect      CGRect
 */
- (CGRect)swp_imageRectForContentRect:(CGRect)contentRect {
    
    if (!CGRectIsEmpty(self.swpImageFrame) && !CGRectEqualToRect(self.swpImageFrame, CGRectZero)) {
        return self.swpImageFrame;
    }
    
    //  注意:此处并没有递归操作，调回原方法。
    return [self swp_imageRectForContentRect:contentRect];
}


@end
