//
//  DemoModel.h
//  SwpCateGoryDemo
//
//  Created by swp_song on 2017/6/20.
//  Copyright © 2017年 swp-song. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DemoModel : NSObject

/*! title !*/
@property (nonatomic, copy) NSString *sTitle;
/*! jump Controller !*/
@property (nonatomic, assign, nullable) Class sClass;

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
+ (instancetype)demoWithClass:(nullable Class)sClass sTitle:(NSString *)sTitle;

@end
NS_ASSUME_NONNULL_END
