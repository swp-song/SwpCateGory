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


/** 元数据 */
@property (nonatomic, copy, readonly) NSDictionary  *metaData;
/** title */
@property (nonatomic, copy, readonly) NSString *title;
/** class */
@property (nonatomic, assign, readonly) Class aClass;

/**
 *  @author swp_song
 *
 *  @brief  initWithDictionary: ( 快速初始化 )
 *
 *  @param  dictionary  dictionary
 *
 *  @return NSObject
 */
- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

/**
 *  @author swp_song
 *
 *  @brief  demoWithDictionary: ( 快速初始化 )
 *
 *  @param  dictionary  dictionary
 *
 *  @return NSObject
 */
+ (instancetype)demoWithDictionary:(NSDictionary *)dictionary;

/**
 *  @author swp_song
 *
 *  @brief  demoWithDictionarys:    ( 快速初始化 )
 *
 *  @param  dictionarys dictionarys
 *
 *  @return NSObject
 */
+ (NSArray<DemoModel *> *)demoWithDictionarys:(NSArray<NSDictionary *> *)dictionarys;

@end
NS_ASSUME_NONNULL_END
