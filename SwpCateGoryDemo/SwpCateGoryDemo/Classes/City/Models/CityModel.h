//
//  CityModel.h
//  SwpCateGoryDemo
//
//  Created by swp_song on 2017/6/20.
//  Copyright © 2017年 swp-song. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@interface CityModel : NSObject

@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSArray  *datas;
@property (nonatomic, copy) NSArray  *titles;
@property (nonatomic, assign, getter = isMark) BOOL mark;


+ (instancetype)cityTitles:(NSArray<CityModel *> *)datas;

+ (instancetype)cityWithDictionary:(NSDictionary *)dictionary;

- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

+ (NSArray<CityModel *> *)cityWithDictionarys:(NSArray<NSDictionary *> *)dictionarys;

@end
NS_ASSUME_NONNULL_END
