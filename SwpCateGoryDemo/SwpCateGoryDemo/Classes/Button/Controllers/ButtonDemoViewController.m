
//
//  ButtonDemoViewController.m
//  SwpCateGoryDemo
//
//  Created by swp_song on 2017/6/20.
//  Copyright © 2017年 swp-song. All rights reserved.
//

#import "ButtonDemoViewController.h"


/* ---------------------- Tool       ---------------------- */
#import <Masonry/Masonry.h>                         //  Masonry
#import "UIButton+SwpSetButton.h"                   //  UIButton
#import <SwpCateGory/UIColor+SwpColor.h>
#import "UINavigationBar+SwpNavigationBar.h"
#import "UIBarButtonItem+SwpSetNavigationBarItem.h" //  UIBarButtonItem
#import <SwpCateGory/UIButton+SwpButtonLayout.h>


/* ---------------------- Tool       ---------------------- */

/* ---------------------- Model      ---------------------- */
/* ---------------------- Model      ---------------------- */

/* ---------------------- View       ---------------------- */

/* ---------------------- View       ---------------------- */

/* ---------------------- Controller ---------------------- */
/* ---------------------- Controller ---------------------- */

@interface ButtonDemoViewController ()


#pragma mark - UI   Propertys
/* ---------------------- UI   Property  ---------------------- */
@property (nonatomic, strong) UIButton *submitButton1;
@property (nonatomic, strong) UIButton *checkBoxButton;
@property (nonatomic, strong) UIButton *submitButton2;
/* ---------------------- UI   Property  ---------------------- */

#pragma mark - Data Propertys
/* ---------------------- Data Property  ---------------------- */
/* ---------------------- Data Property  ---------------------- */

@end

@implementation ButtonDemoViewController

#pragma mark - Lifecycle Methods
/**!
 *  @author swp_song
 *
 *  @brief  viewDidLoad ( 视图载入完成调用 )
 */
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self setUI];
    
    NSLog(@"%@", [UIColor toStrByUIColor:[UIColor redColor]]);
    NSLog(@"%@", [UIColor toStrByUIColor1:0xFFFFFF]);
}


/**!
 *  @author swp_song
 *
 *  @brief  didReceiveMemoryWarning ( 内存不足时调用 )
 */
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/**!
 *  @author swp_song
 *
 *  @brief  dealloc ( 当前 控制器 被销毁时 调用 )
 */
- (void)dealloc {
    NSLog(@"%s", __FUNCTION__);
}


#pragma mark - Set UI Methods
/**!
 *  @author swp_song
 *
 *  @brief  setUI   ( 设置 UI 控件 )
 */
- (void)setUI {
    [self setNavigationBar];
    [self setUpUI];
    [self setUIAutoLayout];
}


/**!
 *  @author swp_song
 *
 *  @brief  setNavigationBar    ( 设置导航栏 )
 */
- (void)setNavigationBar {
    
    self.navigationItem.rightBarButtonItem = [UIBarButtonItem swpSetNavigationBarItemTitle:@"关闭" setFontColot:[UIColor blackColor] setFontSize:15.0 setTag:0 setLeftBarButtonItem:NO setAarget:self.navigationController setAction:@selector(popViewControllerAnimated:)];
}


/**!
 *  @author swp_song
 *
 *  @brief  setUpUI ( 添加控件 )
 */
- (void)setUpUI {
    
    [self.view addSubview:self.submitButton1];
    [self.view addSubview:self.checkBoxButton];
    [self.view addSubview:self.submitButton2];
}

/**!
 *  @author swp_song
 *
 *  @brief  setUIAutoLayout ( 设置控件的自动布局 )
 */
- (void)setUIAutoLayout {
    
    [self.submitButton1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.left.right.equalTo(self.view).mas_offset(UIEdgeInsetsMake(40, 20, 0, 20));
        make.width.equalTo(self.submitButton1.mas_height).multipliedBy(10.0 / 1.0);
    }];
    
    [self.checkBoxButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.view).mas_offset(UIEdgeInsetsMake(20, 20, 0, 20));
        make.top.equalTo(self.submitButton1.mas_bottom).offset(30);
        make.size.mas_offset(CGSizeMake(80, 30));
    }];
    
    [self.submitButton2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.height.equalTo(self.submitButton1);
        make.top.equalTo(self.checkBoxButton.mas_bottom).offset(30);
    }];
    
    
    
    NSMutableArray<UIButton *> *views  = @[].mutableCopy;
    NSMutableArray<NSString *> *titles = @[@"Top (上)", @"Left (左)", @"Bottom (下)", @"Right (右)"].mutableCopy;
    for (int i=0; i<4; i++) {
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        button.backgroundColor = UIColor.swpColorWithRandom();
        [button setTitle:titles[i] forState:(UIControlStateNormal)];
        [button setTitleColor:UIColor.swpColorWithRandom() forState:(UIControlStateNormal)];
        button.titleLabel.font = [UIFont systemFontOfSize:12];
        [button setImage:[UIImage imageNamed:@"button_icon"] forState:(UIControlStateNormal)];
        [views addObject:button];
        [self.view addSubview:button];
    }
  
    [views mas_distributeViewsAlongAxis:MASAxisTypeHorizontal withFixedSpacing:10 leadSpacing:10 tailSpacing:10];
    
    [views mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.submitButton2.mas_bottom).offset(50);
        make.height.equalTo(@(40));
    }];
    
    
    
    [views enumerateObjectsUsingBlock:^(UIButton * _Nonnull button, NSUInteger idx, BOOL * _Nonnull stop) {
        if ((idx % 2) == 0) {
            [button mas_updateConstraints:^(MASConstraintMaker *make) {
                make.height.equalTo(@(60));
            }];
            
            //  设置按钮边距
            [button swpButtonLayout:idx];
            
        } else {
            //  设置按钮边距
            button.swpButtonLayoutOffset(idx, 2);
        }
        
    }];
    
}


/**!
 *  @author swp_song
 *
 *  @brief  clickButtonEvent:   ( 按钮绑定方法 )
 *
 *  @param  button  button
 */
- (void)clickButtonEvent:(UIButton *)button  {
    if (button.tag == 3) button.backgroundColor = UIColor.swpColorWithRandom();
    if (button.tag == 4) button.selected        = !button.selected;
}


#pragma mark - Init UI Methods

- (UIButton *)submitButton1 {
    
    return !_submitButton1 ? _submitButton1 = ({
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        [UIButton swpSetButtonSubmitStyle:button setBackgroundColor:UIColor.swpColorWithRandom() setFontColor:[UIColor whiteColor] setTitle:@"点击生成随机色" setFontSize:15.0f setCornerRadius:5 setTag:3 setTarget:self setAction:@selector(clickButtonEvent:)];
        button;
    }) : _submitButton1;
}

- (UIButton *)checkBoxButton {
    
    return !_checkBoxButton ? _checkBoxButton = ({
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        [UIButton swpSetButtonCheckBoxStyle:button setTitle:@"记住密码" setFontSize:12.0f setTitleColor:[UIColor blackColor] setNormalImageName:@"forgot_password_no" setSelectedImage:@"forgot_password_sel" setTag:4 setTarget:self setAction:@selector(clickButtonEvent:)];
        button;
    }) : _checkBoxButton;
}

- (UIButton *)submitButton2 {
    
    return !_submitButton2 ? _submitButton2 = ({
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        [UIButton swpSetButtonSubmitStyle:button setBackgroundColor:UIColor.swpColorWithRandom() setFontColor:[UIColor whiteColor] setTitle:@"点击生成随机色" setFontSize:15.0f setCornerRadius:0 setTag:3 setTarget:self setAction:@selector(clickButtonEvent:)];
        button;
    }) : _submitButton2;
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