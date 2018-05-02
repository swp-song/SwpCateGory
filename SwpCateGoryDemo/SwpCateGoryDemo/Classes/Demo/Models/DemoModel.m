
//
//  DemoModel.m
//  SwpCateGoryDemo
//
//  Created by swp_song on 2017/6/20.
//  Copyright © 2017年 swp-song. All rights reserved.
//

#import "DemoModel.h"

@implementation DemoModel




/**
 *  @author swp_song
 *
 *  @brief  initWithDictionary: ( 快速初始化 )
 *
 *  @param  dictionary  dictionary
 *
 *  @return NSObject
 */
- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
    
    if (self = [super init]) {
        _metaData   = dictionary;
        _title      = _metaData[@"title"];
        _aClass     = NSClassFromString(_metaData[@"class"]);
    }
    return self;
}

/**
 *  @author swp_song
 *
 *  @brief  demoWithDictionary: ( 快速初始化 )
 *
 *  @param  dictionary  dictionary
 *
 *  @return NSObject
 */
+ (instancetype)demoWithDictionary:(NSDictionary *)dictionary {
    return [[self alloc] initWithDictionary:dictionary];
}


/**
 *  @author swp_song
 *
 *  @brief  demoWithDictionarys:    ( 快速初始化 )
 *
 *  @param  dictionarys dictionarys
 *
 *  @return NSObject
 */
+ (NSArray<DemoModel *> *)demoWithDictionarys:(NSArray<NSDictionary *> *)dictionarys {
    
    NSMutableArray *models = @[].mutableCopy;
    [dictionarys enumerateObjectsUsingBlock:^(NSDictionary * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [models addObject:[self.class demoWithDictionary:obj]];
    }];
    return models.copy;
}


@end

