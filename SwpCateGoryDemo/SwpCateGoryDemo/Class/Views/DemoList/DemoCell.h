//
//  DemoCell.h
//  SwpCateGoryDemo
//
//  Created by swp_song on 2017/6/20.
//  Copyright © 2017年 swp-song. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DemoModel;

NS_ASSUME_NONNULL_BEGIN
@interface DemoCell : UITableViewCell

/**!
 *  @author swp_song
 *
 *  @brief  demoCellWihtTableView:forCellReuseIdentifier:   ( 快速初始化一个 Cell )
 *
 *  @param  tableView   tableView
 *
 *  @param  identifier  identifier
 *
 *  @return UITableViewCell
 */
+ (instancetype)demoCellWihtTableView:(UITableView *)tableView forCellReuseIdentifier:(NSString *)identifier;


/**!
 *  @author swp_song
 *
 *  @brief  demoCellInit    ( 快速初始化一个 Cell )
 */
+ (__kindof DemoCell * _Nonnull (^)(UITableView * _Nonnull, NSString * _Nonnull))demoCellInit;

/**!
 *  @author swp_song
 *
 *  @brief  demo    ( 设置数据 )
 */
- (DemoCell * _Nonnull (^)(DemoModel * _Nonnull))demo;


@end
NS_ASSUME_NONNULL_END
