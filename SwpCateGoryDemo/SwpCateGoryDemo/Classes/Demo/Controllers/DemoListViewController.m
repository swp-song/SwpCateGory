
//
//  DemoListViewController.m
//  SwpCateGoryDemo
//
//  Created by swp_song on 2017/6/20.
//  Copyright © 2017年 swp-song. All rights reserved.
//

#import "DemoListViewController.h"



/* ---------------------- Tool       ---------------------- */
#import <Masonry/Masonry.h>
#import <SwpCateGory/SwpCateGory.h>
/* ---------------------- Tool       ---------------------- */

/* ---------------------- Model      ---------------------- */
#import "DemoModel.h"
#import "DemoModel.h"
/* ---------------------- Model      ---------------------- */

/* ---------------------- View       ---------------------- */
#import "DemoTableView.h"
/* ---------------------- View       ---------------------- */


/* ---------------------- Controller ---------------------- */
#import "ButtonDemoViewController.h"
#import "TextFieldDemoViewController.h"
#import "CityListViewController.h"
#import "OtherViewController.h"
#import "SwpButtonCircleAnimationViewController.h"
/* ---------------------- Controller ---------------------- */


@interface DemoListViewController ()

#pragma mark - UI   Propertys
/* ---------------------- UI   Property  ---------------------- */
/* tableView */
@property (nonatomic, copy) DemoTableView   *demoTableView;
/* ---------------------- UI   Property  ---------------------- */

#pragma mark - Data Propertys
/* ---------------------- Data Property  ---------------------- */
/* 数据源 */
@property (nonatomic, copy) NSArray *datas_;
/* ---------------------- Data Property  ---------------------- */

@end


@implementation DemoListViewController


#pragma mark - Lifecycle Methods


/**
 *  @author swp_song
 *
 *  @brief  viewDidLoad ( 视图载入完成调用 )
 */
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    NSLog(@"SwpCateGoryInfo     = %@", [SwpCateGory swpCateGoryInfo]);
    NSLog(@"SwpCateGoryVersion  = %@", [SwpCateGory swpCateGoryVersion]);
    
    [self setUI];
    
    [self setData];
    
    [self demoListViewControllerBlock];

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

    self.demoTableView.datas(self.datas_);
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
    
    [self.view addSubview:self.demoTableView];
}

/**
 *  @author swp_song
 *
 *  @brief  setUIAutoLayout ( 设置控件的自动布局 )
 */
- (void)setUIAutoLayout {

    [self.demoTableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
    }];
}

/**
 *  @author swp_song
 *
 *  @brief  demoListViewControllerBlock ( DemoListViewController Block )
 */
- (void)demoListViewControllerBlock {
    [self demoTableViewBlock];
}

/**
 *  @author swp_song
 *
 *  @brief  demoTableViewBlock ( DemoTableView Block )
 */
- (void)demoTableViewBlock {
    
    __weak typeof(self) weakSelf = self;
    
    self.demoTableView.demoTableViewClickCellEvent(^(DemoTableView *demoTableView, NSIndexPath *indexPath, DemoModel *demo){
        if (!demo.aClass) return;
        UIViewController *controller    = [demo.aClass new];
        controller.navigationItem.title = demo.title;
        [weakSelf.navigationController pushViewController:controller animated:YES];
    });
}

#pragma mark - Init UI Methods
- (DemoTableView *)demoTableView {

    return !_demoTableView ? _demoTableView = ({
        DemoTableView *demoTableView = [DemoTableView new];
        demoTableView;
    }) : _demoTableView;
}

- (NSArray *)datas_ {
    return !_datas_ ? _datas_ = ({
        [DemoModel demoWithDictionarys:[NSArray arrayWithContentsOfFile:[NSBundle.mainBundle pathForResource:@"DemoModel.plist" ofType:nil]]];
    }) : _datas_;
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
