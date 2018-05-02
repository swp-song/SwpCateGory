//
//  CityTableView.h
//  SwpCateGoryDemo
//
//  Created by swp_song on 2017/6/20.
//  Copyright © 2017年 swp-song. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CityTableView, CityModel;


NS_ASSUME_NONNULL_BEGIN

@protocol CityTableViewDelegate <NSObject>

/**!
 *  @author swp_song
 *
 *  @brief  cityTableView:clickCellEventAtIndexPath:model:  ( CityTableView 代理方法, 点击 cell 调用 )
 *
 *  @param  cityTableView   cityTableView
 *
 *  @param  indexPath       indexPath
 *
 *  @param  model           model
 */
- (void)cityTableView:(CityTableView *)cityTableView clickCellEventAtIndexPath:(NSIndexPath *)indexPath model:(CityModel *)model;

@end
@interface CityTableView : UITableView

/**!
 *  @author swp_song
 *
 *  @brief  city    ( 设置数据 )
 */
- (CityTableView * _Nonnull (^)(CityModel * _Nonnull))city;


/**!
 *  @author swp_song
 *
 *  @brief  cityTableViewDelegate   ( 设置 Delegate )
 */
- (CityTableView * _Nonnull (^)(id<CityTableViewDelegate> _Nonnull))cityTableViewDelegate;

/**!
 *  @author swp_song
 *
 *  @brief  cityTableViewClickCellEvent ( CityTableView 回调方法, 点击 cell 回调 )
 */
- (CityTableView * _Nonnull (^)(void (^ _Nullable)(CityTableView * _Nonnull, NSIndexPath * _Nonnull, CityModel * _Nonnull)))cityTableViewClickCellEvent;


@end
NS_ASSUME_NONNULL_END
