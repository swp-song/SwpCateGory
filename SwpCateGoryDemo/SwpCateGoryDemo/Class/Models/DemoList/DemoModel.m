
//
//  DemoModel.m
//  SwpCateGoryDemo
//
//  Created by swp_song on 2017/6/20.
//  Copyright © 2017年 swp-song. All rights reserved.
//

#import "DemoModel.h"

@implementation DemoModel

/**!
 *  @author swp_song
 *
 *  @brief  demoWithClass:sTitle:   ( 快速初始化 )
 *
 *  @param  sClass  sClass
 *
 *  @param  sTitle  sTitle
 *
 *  @return DemoModel
 */
+ (instancetype)demoWithClass:(Class)sClass sTitle:(NSString *)sTitle {
    
    DemoModel *demo = [DemoModel new];
    demo.sClass     = sClass;
    demo.sTitle     = sTitle;
    return demo;
}

@end

