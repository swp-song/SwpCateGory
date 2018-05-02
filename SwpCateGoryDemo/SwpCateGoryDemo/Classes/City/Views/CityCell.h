//
//  CityCell.h
//  SwpCateGoryDemo
//
//  Created by swp_song on 2017/6/20.
//  Copyright © 2017年 swp-song. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CityModel;

NS_ASSUME_NONNULL_BEGIN
@interface CityCell : UITableViewCell

/**!
 *  @author swp_song
 *
 *  @brief  cityCellWihtTableView:forCellReuseIdentifier:   ( 快速初始化一个 Cell )
 *
 *  @param  tableView   tableView
 *
 *  @param  identifier  identifier
 *
 *  @return UITableViewCell
 */
+ (instancetype)cityCellWihtTableView:(UITableView *)tableView forCellReuseIdentifier:(NSString *)identifier;

/**!
 *  @author swp_song
 *
 *  @brief  cityCellInit    ( 快速初始化一个 Cell )
 */
+ (__kindof CityCell * _Nonnull (^)(UITableView * _Nonnull, NSString * _Nonnull))cityCellInit;

/**!
 *  @author swp_song
 *
 *  @brief  indexPath   ( cell indexPath )
 */
- (CityCell * _Nonnull (^)(NSIndexPath * _Nonnull))indexPath;

/**!
 *  @author swp_song
 *
 *  @brief  city    ( 设置数据 )
 */
- (CityCell * _Nonnull (^)(CityModel * _Nonnull))city;

@end
NS_ASSUME_NONNULL_END
