

//
//  CityListViewController.m
//  SwpCateGoryDemo
//
//  Created by swp_song on 2017/6/20.
//  Copyright © 2017年 swp-song. All rights reserved.
//

#import "CityListViewController.h"


/* ---------------------- Tool       ---------------------- */
#import <Masonry/Masonry.h>             //  Masonry
#import "NSArray+SwpOrderByCharacter.h"
#import <SVProgressHUD/SVProgressHUD.h>
/* ---------------------- Tool       ---------------------- */

/* ---------------------- Model      ---------------------- */
#import "CityModel.h"
/* ---------------------- Model      ---------------------- */

/* ---------------------- View       ---------------------- */
#import "CityTableView.h"
/* ---------------------- View       ---------------------- */

/* ---------------------- Controller ---------------------- */
/* ---------------------- Controller ---------------------- */

@interface CityListViewController ()

#pragma mark - UI   Propertys
/* ---------------------- UI   Property  ---------------------- */
/* tableView */
@property (nonatomic, copy) CityTableView *cityTableView;
/* ---------------------- UI   Property  ---------------------- */

#pragma mark - Data Propertys
/* ---------------------- Data Property  ---------------------- */
/* ---------------------- Data Property  ---------------------- */


@end

@implementation CityListViewController

#pragma mark - Lifecycle Methods
/**
 *  @author swp_song
 *
 *  @brief  viewDidLoad ( 视图载入完成调用 )
 */
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self setUI];
    
    [self setData];
    
    [self cityListViewControllerBlock];
}


/**
 *  @author swp_song
 *
 *  @brief  didReceiveMemoryWarning ( 内存不足时调用 )
 */
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/**
 *  @author swp_song
 *
 *  @brief  dealloc ( 当前 控制器 被销毁时 调用 )
 */
- (void)dealloc {
    NSLog(@"%s", __FUNCTION__);
}

#pragma mark - Set Data Method
/**
 *  @author swp_song
 *
 *  @brief  setData ( 设置 初始化 数据 )
 */
- (void)setData {
    
    NSString *plistPath = [[NSBundle mainBundle]pathForResource:@"CityModel" ofType:@"plist"];
    NSArray  *datas     = NSArray.swpOrderByCharacter([NSArray arrayWithContentsOfFile:plistPath], @"name");
    self.cityTableView.city([CityModel cityTitles:[CityModel cityWithDictionarys:datas]]);
}


#pragma mark - Set UI Methods
/**
 *  @author swp_song
 *
 *  @brief  setUI   ( 设置 UI 控件 )
 */
- (void)setUI {
    [self setNavigationBar];
    [self setUpUI];
    [self setUIAutoLayout];
}


/**
 *  @author swp_song
 *
 *  @brief  setNavigationBar    ( 设置导航栏 )
 */
- (void)setNavigationBar {
    
}


/**
 *  @author swp_song
 *
 *  @brief  setUpUI ( 添加控件 )
 */
- (void)setUpUI {
    
    [self.view addSubview:self.cityTableView];
}

/**
 *  @author swp_song
 *
 *  @brief  setUIAutoLayout ( 设置控件的自动布局 )
 */
- (void)setUIAutoLayout {
    
    [self.cityTableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
    }];
}



/**
 *  @author swp_song
 *
 *  @brief  cityListViewControllerBlock ( CityListViewController Block )
 */
- (void)cityListViewControllerBlock {

    [self cityTableViewBlock];
}

/**
 *  @author swp_song
 *
 *  @brief  cityTableViewBlock ( CityTableView Block )
 */
- (void)cityTableViewBlock {
    
    self.cityTableView.cityTableViewClickCellEvent(^(CityTableView *cityTableView, NSIndexPath *indexPath, CityModel *city){
        [SVProgressHUD dismiss];
        [SVProgressHUD showInfoWithStatus:city.name];
    });
}


#pragma mark - Init UI Methods
- (CityTableView *)cityTableView {
    
    return !_cityTableView ? _cityTableView = ({
        CityTableView *cityTableView = [CityTableView new];
        cityTableView;
    }) : _cityTableView;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
