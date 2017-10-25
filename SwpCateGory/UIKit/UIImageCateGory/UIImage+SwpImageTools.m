//
//  UIImage+SwpImageTools.m
//  swp_song
//
//  Created by swp_song on 2017/10/25.
//  Copyright © 2017年 swp-song. All rights reserved.
//

#import "UIImage+SwpImageTools.h"

@implementation UIImage (SwpImageTools)

/**
 *  @author swp_song
 *
 *  @brief  swpImageToolsSnapshotImageChain ( view 生成 image )
 */
+ (UIImage * _Nonnull (^)(UIView * _Nonnull))swpImageToolsSnapshotImageChain {
    return ^(UIView *view){
        return [self.class swpImageToolsSnapshotImage:view];
    };
}


/**
 *  @author swp_song
 *
 *  @brief  swpImageToolsSnapshotImage: ( view 生成 image )
 *
 *  @param  view    view
 *
 *  @return UIImage
 */
+ (UIImage *)swpImageToolsSnapshotImage:(UIView *)view {
    if (!view) return nil;
    UIGraphicsBeginImageContextWithOptions(view.frame.size, NO, 0.0);
    [view drawViewHierarchyInRect:view.bounds afterScreenUpdates:NO];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

@end
