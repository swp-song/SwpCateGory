
//
//  DemoTableView.m
//  SwpCateGoryDemo
//
//  Created by swp_song on 2017/6/20.
//  Copyright © 2017年 swp-song. All rights reserved.
//

#import "DemoTableView.h"


/*! ---------------------- Tools      ---------------------- !*/
/*! ---------------------- Tools      ---------------------- !*/

/*! ---------------------- Model      ---------------------- !*/
#import "DemoModel.h"
/*! ---------------------- Model      ---------------------- !*/

/*! ---------------------- View       ---------------------- !*/
#import "DemoCell.h"
/*! ---------------------- View       ---------------------- !*/


static NSString * const kDemoCellID = @" Demo Cell ID ";

@interface DemoTableView () <UITableViewDataSource, UITableViewDelegate>

#pragma mark - UI   Propertys
/*! ---------------------- UI   Property  ---------------------- !*/
/*! 推荐商家头部 view !*/

/*! ---------------------- UI   Property  ---------------------- !*/

#pragma mark - Data Propertys
/*! ---------------------- Data Property  ---------------------- !*/
/*! 数据源      !*/
@property (nonatomic, copy) NSArray *datas_;
/*! Delegate    !*/
@property (nonatomic, weak) id<DemoTableViewDelegate>demoTableViewDelegate_;
/*! DemoTableView 回调， 点击 cell 回调   !*/
@property (nonatomic, copy) void(^clickCellEvent)(DemoTableView *, NSIndexPath *, DemoModel *);
/*! ---------------------- Data Property  ---------------------- !*/

@end

@implementation DemoTableView

/**!
 *  @author swp_song
 *
 *  @brief  initWithFrame:style:    ( Override Init )
 *
 *  @param  frame       frame
 *
 *  @param  style       UITableViewStyle
 *
 *  @return UITableView
 */
- (instancetype)initWithFrame:(CGRect)frame style:(UITableViewStyle)style {
    
    if (self = [super initWithFrame:frame style:style]) {
        [self registerClass:DemoCell.class forCellReuseIdentifier:kDemoCellID];
        self.separatorStyle = UITableViewCellSelectionStyleNone;
        self.dataSource     = self;
        self.delegate       = self;
    }
    return self;
}


#pragma mark - UITableView DataSoure Methods
/**!
 *  @author swp_song
 *
 *  @brief  numberOfSectionsInTableView:    ( tableView 数据源方法 设置 tableView 分组个数 )
 *
 *  @param  tableView  tableView
 *
 *  @return NSInteger
 */
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

/**!
 *  @author swp_song
 *
 *  @brief  tableView:numberOfRowsInSection:    ( tableView 数据源方法 设置 tableView 分组中cell显示的个数 )
 *
 *  @param  tableView   tableView
 *
 *  @param  section     section
 *
 *  @return NSInteger
 */
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.datas_.count;
}

/**!
 *  @author swp_song
 *
 *  @brief  tableView:cellForRowAtIndexPath:    ( tableView 数据源方法设置 tableView 分组中cell显示的数据 | 样式)
 *
 *  @param  tableView   tableView
 *
 *  @param  indexPath   indexPath
 *
 *  @return UITableViewCell
 */
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    return DemoCell.demoCellInit(tableView, kDemoCellID).demo(self.datas_[indexPath.row]);
}


/**!
 *  @author swp_song
 *
 *  @brief  tableView:didSelectRowAtIndexPath:  ( tableView 代理方法 点击每个cell调用 )
 *
 *  @param  tableView   tableView
 *
 *  @param  indexPath   indexPath
 */
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (self.clickCellEvent) self.clickCellEvent(self, indexPath, self.datas_[indexPath.row]);
    
    if ([self.demoTableViewDelegate_ respondsToSelector:@selector(demoTableView:clickCellEventAtIndexPath:model:)]) {
        [self.demoTableViewDelegate_ demoTableView:self clickCellEventAtIndexPath:indexPath model:self.datas_[indexPath.row]];
    }
}



#pragma mark - Public Methods
/**!
 *  @author swp_song
 *
 *  @brief  datas   ( 设置数据 )
 */
- (DemoTableView * _Nonnull (^)(NSArray * _Nonnull))datas {
    return ^(NSArray *datas) {
        self.datas_ = datas;
        return self;
    };
}

/**!
 *  @author swp_song
 *
 *  @brief  demoTableViewDelegate   ( 设置 Delegate )
 */
- (DemoTableView * _Nonnull (^)(id<DemoTableViewDelegate> _Nonnull))demoTableViewDelegate {
    
    return ^(id<DemoTableViewDelegate>demoTableViewDelegate) {
        self.demoTableViewDelegate_ = demoTableViewDelegate;
        return self;
    };
}


/**!
 *  @author swp_song
 *
 *  @brief  demoTableViewClickCellEvent ( DemoTableView 回调方法, 点击 cell 回调 )
 */
- (DemoTableView * _Nonnull (^)(void (^ _Nullable)(DemoTableView * _Nonnull, NSIndexPath * _Nonnull, DemoModel * _Nonnull)))demoTableViewClickCellEvent {
    return ^(void(^demoTableViewClickCellEvent)(DemoTableView *, NSIndexPath *, DemoModel *)) {
        _clickCellEvent = demoTableViewClickCellEvent;
        return self;
    };
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
