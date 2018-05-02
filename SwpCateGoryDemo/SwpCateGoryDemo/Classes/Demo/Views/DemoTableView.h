//
//  DemoTableView.h
//  SwpCateGoryDemo
//
//  Created by swp_song on 2017/6/20.
//  Copyright © 2017年 swp-song. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DemoTableView, DemoModel;

NS_ASSUME_NONNULL_BEGIN

@protocol DemoTableViewDelegate  <NSObject>

@optional

/**!
 *  @author swp_song
 *
 *  @brief  demoTableView:clickCellEventAtIndexPath:model:  ( DemoTableView 代理方法, 点击 cell 调用 )
 *
 *  @param  demoTableView   demoTableView
 *
 *  @param  indexPath       indexPath
 *
 *  @param  model           model
 */
- (void)demoTableView:(DemoTableView *)demoTableView clickCellEventAtIndexPath:(NSIndexPath *)indexPath model:(DemoModel *)model;

@end

@interface DemoTableView : UITableView



/**!
 *  @author swp_song
 *
 *  @brief  datas   ( 设置数据 )
 */
- (DemoTableView * _Nonnull (^)(NSArray * _Nonnull))datas;
/**!
 *  @author swp_song
 *
 *  @brief  demoTableViewDelegate   ( 设置 Delegate )
 */
- (DemoTableView * _Nonnull (^)(id<DemoTableViewDelegate> _Nonnull))demoTableViewDelegate;

/**!
 *  @author swp_song
 *
 *  @brief  demoTableViewClickCellEvent ( DemoTableView 回调方法, 点击 cell 回调 )
 */
- (DemoTableView * _Nonnull (^)(void (^ _Nullable)(DemoTableView * _Nonnull, NSIndexPath * _Nonnull, DemoModel * _Nonnull)))demoTableViewClickCellEvent;

@end
NS_ASSUME_NONNULL_END
