
//
//  CityTableView.m
//  SwpCateGoryDemo
//
//  Created by swp_song on 2017/6/20.
//  Copyright © 2017年 swp-song. All rights reserved.
//

#import "CityTableView.h"

/*! ---------------------- Tools      ---------------------- !*/
#import "UIColor+SwpColor.h"
/*! ---------------------- Tools      ---------------------- !*/

/*! ---------------------- Model      ---------------------- !*/
#import "CityModel.h"
/*! ---------------------- Model      ---------------------- !*/

/*! ---------------------- View       ---------------------- !*/
#import "CityCell.h"
/*! ---------------------- View       ---------------------- !*/

static NSString * const kCityCellID = @" City Cell ID ";


@interface CityTableView () <UITableViewDataSource, UITableViewDelegate>

#pragma mark - UI   Propertys
/*! ---------------------- UI   Property  ---------------------- !*/
/*! 推荐商家头部 view !*/

/*! ---------------------- UI   Property  ---------------------- !*/

#pragma mark - Data Propertys
/*! ---------------------- Data Property  ---------------------- !*/
/*! 数据源      !*/
@property (nonatomic, strong) CityModel *city_;
/*! Delegate    !*/
@property (nonatomic, weak) id<CityTableViewDelegate>cityTableViewDelegate_;
/*! CityTableView 回调， 点击 cell 回调   !*/
@property (nonatomic, copy) void(^clickCellEvent)(CityTableView *, NSIndexPath *, CityModel *);
/*! ---------------------- Data Property  ---------------------- !*/

@end


@implementation CityTableView


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
        [self registerClass:CityCell.class forCellReuseIdentifier:kCityCellID];
        self.separatorStyle = UITableViewCellSelectionStyleNone;
        self.sectionIndexColor           = [UIColor swpColorWithHexadecimal:0x2B2B2B];
        self.sectionIndexBackgroundColor = [UIColor clearColor];
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
    return self.city_.datas.count;
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
    CityModel *models = self.city_.datas[section];
    return models.datas.count;
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
    CityModel *models = self.city_.datas[indexPath.section];

    return CityCell.cityCellInit(tableView, kCityCellID).indexPath(indexPath).city(models.datas[indexPath.row]);
}


#pragma mark - UITableView Delegate Methods
/**!
 *  @author swp_song
 *
 *  @brief  tableView:heightForHeaderInSection: ( tableView 代理方法设置 tableView 分组每组头部控件高度 )
 *
 *  @param  tableView   tableView
 *
 *  @param  section     section
 *
 *  @return CGFloat
 */
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 25;
}

/**!
 *  @author swp_song
 *
 *  @brief  tableView:heightForFooterInSection: ( tableView 代理方法设置 tableView 分组每组尾部控件高度 )
 *
 *  @param  tableView   tableView
 *
 *  @param  section     section
 *
 *  @return CGFloat
 */
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return 0.01;
}


/**!
 *  @author swp_song
 *
 *  @brief  tableView:willDisplayHeaderView:    ( tableView 代理方法设置 tableView 头部控件将显示 )
 *
 *  @param  tableView   tableView
 *
 *  @param  view        view
 *
 *  @param  section     section
 */
- (void)tableView:(UITableView *)tableView willDisplayHeaderView:(UIView *)view forSection:(NSInteger)section {
    if ([view isKindOfClass:[UITableViewHeaderFooterView class]]) {
        UITableViewHeaderFooterView *header = (UITableViewHeaderFooterView *)view;
        header.backgroundColor = [UIColor swpColorWithHexadecimal:0xCDCDCD];
        header.textLabel.font  = [UIFont systemFontOfSize:10];
        [header.textLabel setTextColor:[UIColor swpColorWithHexadecimal:0x2B2B2B]];
    }
}

/**!
 *  @author swp_song
 *
 *  @brief  tableView:titleForHeaderInSection:  ( tableView 代理方法设置 tableView 头部显示 title )
 *
 *  @param  tableView   tableView
 *
 *  @param  section     section
 *
 *  @return NSString    NSString
 */
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    CityModel *models = self.city_.datas[section];
    return models.title;
}

/**!
 *  @author swp_song
 *
 *  @brief  sectionIndexTitlesForTableView: ( tableView 代理方法设置 tableView 设置索引表 )
 *
 *  @param  tableView   tableView
 *
 *  @return NSArray
 */
- (NSArray *)sectionIndexTitlesForTableView:(UITableView *)tableView {
    return self.city_.titles;
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
    
    CityModel *models = self.city_.datas[indexPath.section];
    
    if (self.clickCellEvent) self.clickCellEvent(self, indexPath, models.datas[indexPath.row]);
    
    if ([self.cityTableViewDelegate_ respondsToSelector:@selector(cityTableView:clickCellEventAtIndexPath:model:)]) {
        [self.cityTableViewDelegate_ cityTableView:self clickCellEventAtIndexPath:indexPath model:models.datas[indexPath.row]];
    }
}


#pragma mark - Public Methods
/**!
 *  @author swp_song
 *
 *  @brief  city    ( 设置数据 )
 */
- (CityTableView * _Nonnull (^)(CityModel * _Nonnull))city {
    
    return ^(CityModel *city) {
        self.city_ = city;
        return self;
    };
}

/**!
 *  @author swp_song
 *
 *  @brief  cityTableViewDelegate   ( 设置 Delegate )
 */
- (CityTableView * _Nonnull (^)(id<CityTableViewDelegate> _Nonnull))cityTableViewDelegate {
    
    return ^(id<CityTableViewDelegate>cityTableViewDelegate) {
        self.cityTableViewDelegate_ = cityTableViewDelegate;
        return self;
    };
}

/**!
 *  @author swp_song
 *
 *  @brief  cityTableViewClickCellEvent ( CityTableView 回调方法, 点击 cell 回调 )
 */
- (CityTableView * _Nonnull (^)(void (^ _Nullable)(CityTableView * _Nonnull, NSIndexPath * _Nonnull, CityModel * _Nonnull)))cityTableViewClickCellEvent {
    return ^(void(^cityTableViewClickCellEvent)(CityTableView *, NSIndexPath *, CityModel *)) {
        self.clickCellEvent = cityTableViewClickCellEvent;
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
