
//
//  CityModel.m
//  SwpCateGoryDemo
//
//  Created by swp_song on 2017/6/20.
//  Copyright © 2017年 swp-song. All rights reserved.
//

#import "CityModel.h"

@implementation CityModel

+ (instancetype)cityTitles:(NSArray<CityModel *> *)datas {
    CityModel *city = [CityModel new];
    city.datas = datas;
    
    NSMutableArray *titles = @[].mutableCopy;
    [datas enumerateObjectsUsingBlock:^(CityModel * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [titles addObject:obj.title];
    }];
    city.titles = titles.copy;
    
    return city;
    
}
+ (instancetype)cityWithDictionary:(NSDictionary *)dictionary {
    return [[self alloc] initWithDictionary:dictionary];
}

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {

    if (self = [super init]) {
        _title = dictionary[@"first_letter"];
        _name  = dictionary[@"name"];
        NSArray *datas = dictionary[@"list_datas"];
        if (!datas.count) return self;
        _datas = [self.class cityWithDictionarys:datas];
    }
    return self;
}

+ (NSArray<CityModel *> *)cityWithDictionarys:(NSArray<NSDictionary *> *)dictionarys {
    
    NSMutableArray *models = @[].mutableCopy;
    [dictionarys enumerateObjectsUsingBlock:^(NSDictionary * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        CityModel *city = [self.class cityWithDictionary:obj];
        
        if (dictionarys.count == 1 || idx == dictionarys.count - 1) {
            city.mark = NO;
        } else {
            city.mark = YES;
        }
        [models addObject:city];
    }];
    return models.copy;
}


@end
