
//
//  ButtonDemoViewController.m
//  SwpCateGoryDemo
//
//  Created by swp_song on 2017/6/20.
//  Copyright © 2017年 swp-song. All rights reserved.
//

#import "ButtonDemoViewController.h"


/* ---------------------- Tool       ---------------------- */
#import <Masonry/Masonry.h>                             //  Masonry
#import "UIButton+SwpSetButton.h"                       //  UIButton
#import <SwpCateGory/UIColor+SwpColor.h>                //  UIColor
#import <SwpCateGory/UIButton+SwpSetButton.h>           //  SwpSetButton
#import "UIBarButtonItem+SwpSetNavigationBarItem.h"     //  UIBarButtonItem
#import <SwpCateGory/UIButton+SwpButtonPropertys.h>
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
@property (nonatomic, strong) UIButton *submitButton2;

@property (nonatomic, strong) UIButton *checkBox1Button;
@property (nonatomic, strong) UIButton *checkBox2Button;
@property (nonatomic, strong) UIButton *checkBox3Button;
@property (nonatomic, strong) UIButton *checkBox4Button;
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
    
//    NSLog(@"%@", [UIColor toStrByUIColor:[UIColor redColor]]);
//    NSLog(@"%@", [UIColor toStrByUIColor1:0xFFFFFF]);
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
    [self.view addSubview:self.submitButton2];
    
    [self.view addSubview:self.checkBox1Button];
    [self.view addSubview:self.checkBox2Button];
    [self.view addSubview:self.checkBox3Button];
    [self.view addSubview:self.checkBox4Button];
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
    
    [self.submitButton2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.height.equalTo(self.submitButton1);
        make.top.equalTo(self.checkBox1Button.mas_bottom).offset(30);
    }];
    

    NSArray<UIButton *> *checkBoxs = @[self.checkBox1Button, self.checkBox2Button, self.checkBox3Button, self.checkBox4Button];
    [checkBoxs mas_distributeViewsAlongAxis:MASAxisTypeHorizontal withFixedSpacing:10 leadSpacing:10 tailSpacing:10];
    
    [checkBoxs mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.submitButton1.mas_bottom).offset(30);
        make.height.equalTo(@(40));
    }];
    
    self.checkBox2Button.swpImageEdgeOffset(SwpButtonImageEdgeRight, 0);
    self.checkBox3Button.swpImageEdgeOffset(SwpButtonImageEdgeLeft, 3);
    self.checkBox4Button.swpImageEdgeOffset(SwpButtonImageEdgeRight, 3);
    
    
    NSMutableArray<UIButton *> *views  = @[].mutableCopy;
    NSMutableArray<NSString *> *titles = @[@"Top (上)", @"Left (左)", @"Bottom (下)", @"Right (右)"].mutableCopy;
    for (int i=0; i<4; i++) {
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        
        button
        .swpTitleLabelSystemFontSize(12)
        .swpTitle(titles[i], UIControlStateNormal)
        .swpTitleColor(UIColor.swpColorWithRandomChain(), UIControlStateNormal)
        .swpImage([UIImage imageNamed:@"button_icon"], UIControlStateNormal)
        .swpBackgroundColor(UIColor.swpColorWithRandomChain());
        
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
            [button swpImageEdge:idx];
            
        } else {
            //  设置按钮边距
            button.swpImageEdgeOffset(idx, 2);
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
    if (button.tag == 3) button.backgroundColor = UIColor.swpColorWithRandomChain();
    if (button.tag == 4) button.selected        = !button.selected;
}


#pragma mark - Init UI Methods

- (UIButton *)submitButton1 {
    
    return !_submitButton1 ? _submitButton1 = ({
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        
        button
        .swpTag(3)
        .swpTitleLabelSystemFontSize(15)
        .swpTitle(@"点击生成随机色", UIControlStateNormal)
        .swpTitleColor([UIColor whiteColor], UIControlStateNormal)
        .swpTargetEvent(self, @selector(clickButtonEvent:), UIControlEventTouchUpInside)
        
        //  以下方法, UIView 分类方法，在 UIButtn 分类方法下调用，Button 继承 UIView, 相当于调用父类方法，返回值也是父类 Block
        .swpBorderWidth(0)
        .swpCornerRadiusMasks(5)
        .swpBackgroundColor(UIColor.swpColorWithRandomChain());
        
        
        
        button;
    }) : _submitButton1;
}

- (UIButton *)checkBox1Button {
    
    return !_checkBox1Button ? _checkBox1Button = ({
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        [UIButton swpSetButtonCheckBoxStyle:button setTitle:@"记住密码" setFontSize:12.0f setTitleColor:[UIColor blackColor] setNormalImageName:@"forgot_password_no" setSelectedImage:@"forgot_password_sel" setTag:4 setTarget:self setAction:@selector(clickButtonEvent:)];
        button;
    }) : _checkBox1Button;
}



- (UIButton *)checkBox2Button {
    
    return !_checkBox2Button ? _checkBox2Button = ({
        [UIButton buttonWithType:UIButtonTypeCustom]
        .swpTag(4)
        .swpTitleColor([UIColor blackColor], UIControlStateNormal)
        .swpImage([UIImage imageNamed:@"forgot_password_no"], UIControlStateNormal)
        .swpImage([UIImage imageNamed:@"forgot_password_sel"], UIControlStateSelected)
        .swpTitle(@"记住密码", UIControlStateNormal)
        .swpTargetEvent(self, @selector(clickButtonEvent:), UIControlEventTouchUpInside)
        .swpTitleLabelSystemFontSize(12);
    }) : _checkBox2Button;
}


- (UIButton *)checkBox3Button {
    
    return !_checkBox3Button ? _checkBox3Button = ({
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        button
        .swpTag(4)
        .swpImage([UIImage imageNamed:@"forgot_password_no"], UIControlStateNormal)
        .swpImage([UIImage imageNamed:@"forgot_password_sel"], UIControlStateSelected)
        .swpTitle(@"记住密码", UIControlStateNormal)
        .swpTitleColor([UIColor blackColor], UIControlStateNormal)
        .swpTargetEvent(self, @selector(clickButtonEvent:), UIControlEventTouchUpInside)
        .swpTitleLabelSystemFontSize(12);
        button;
    }) : _checkBox3Button;
}

- (UIButton *)checkBox4Button {
    
    return !_checkBox4Button ? _checkBox4Button = ({
        [UIButton buttonWithType:UIButtonTypeCustom]
        .swpTag(4)
        .swpTitleColor([UIColor blackColor], UIControlStateNormal)
        .swpImage([UIImage imageNamed:@"forgot_password_no"], UIControlStateNormal)
        .swpImage([UIImage imageNamed:@"forgot_password_sel"], UIControlStateSelected)
        .swpTitle(@"记住密码", UIControlStateNormal)
        .swpTargetEvent(self, @selector(clickButtonEvent:), UIControlEventTouchUpInside)
        .swpTitleLabelSystemFontSize(12);
    }) : _checkBox4Button;
}

- (UIButton *)submitButton2 {
    
    return !_submitButton2 ? _submitButton2 = ({
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        [UIButton swpSetButtonSubmitStyle:button setBackgroundColor:UIColor.swpColorWithRandomChain() setFontColor:[UIColor whiteColor] setTitle:@"点击生成随机色" setFontSize:15.0f setCornerRadius:0 setTag:3 setTarget:self setAction:@selector(clickButtonEvent:)];
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
