
//
//  TextFieldDemoViewController.m
//  SwpCateGoryDemo
//
//  Created by swp_song on 2017/6/20.
//  Copyright © 2017年 swp-song. All rights reserved.
//

#import "TextFieldDemoViewController.h"


/* ---------------------- Tool       ---------------------- */
#import <Masonry/Masonry.h>                         //  Masonry
#import "UIColor+SwpColor.h"                        //  UIColor
#import "UIButton+SwpSetButton.h"                   //  UIButton
#import "UITextField+SwpSetTextField.h"             //  UITextField
#import "UIBarButtonItem+SwpSetNavigationBarItem.h" //  UIBarButtonItem
#import <SwpCateGory/UITextField+SwpTextFieldPlaceholder.h>
/* ---------------------- Tool       ---------------------- */

/* ---------------------- Model      ---------------------- */
/* ---------------------- Model      ---------------------- */

/* ---------------------- View       ---------------------- */
/* ---------------------- View       ---------------------- */


/* ---------------------- Controller ---------------------- */
/* ---------------------- Controller ---------------------- */


@interface TextFieldDemoViewController ()

#pragma mark - UI   Propertys
/* ---------------------- UI   Property  ---------------------- */
/* 背景 */
@property (nonatomic, strong) UIView      *backgroundView;
/* 输入文本 */
@property (nonatomic, strong) UITextField *textField1;
/* 账号 */
@property (nonatomic, strong) UITextField *accountView;
/* 密码 */
@property (nonatomic, strong) UITextField *passwordView;
/* 验证码 */
@property (nonatomic, strong) UITextField *codeView;
/* ---------------------- UI   Property  ---------------------- */

#pragma mark - Data Propertys
/* ---------------------- Data Property  ---------------------- */
@property (nonatomic, copy) NSArray<UIView *> *views_;
/* ---------------------- Data Property  ---------------------- */

@end

@implementation TextFieldDemoViewController

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
     
    self.navigationItem.rightBarButtonItem  = [UIBarButtonItem swpSetNavigationBarItemImage:@"close" setHighlightedImageName:@"close" seTtag:0 setLeftBarButtonItem:NO setTarget:self.navigationController setAction:@selector(popViewControllerAnimated:)];
}


/**
 *  @author swp_song
 *
 *  @brief  setUpUI ( 添加控件 )
 */
- (void)setUpUI {
    
    [self.view addSubview:self.backgroundView];
    
    [self.views_ enumerateObjectsUsingBlock:^(UIView * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [self.backgroundView addSubview:obj];
    }];
    
}

/**
 *  @author swp_song
 *
 *  @brief  setUIAutoLayout ( 设置控件的自动布局 )
 */
- (void)setUIAutoLayout {
    
    
    [self.backgroundView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.left.right.equalTo(self.view).mas_offset(UIEdgeInsetsMake(0, 0, 0, 0));
        make.width.equalTo(self.backgroundView.mas_height).multipliedBy(2.0 / 1.0);
    }];
    
    self.views_ = @[self.textField1, self.accountView, self.passwordView, self.codeView];
    
    [self.views_ mas_distributeViewsAlongAxis:MASAxisTypeVertical withFixedSpacing:12 leadSpacing:10 tailSpacing:10];
    
    [self.views_ mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.equalTo(self.view).mas_offset(UIEdgeInsetsMake(0, 15, 0, 15));
    }];
}


#pragma mark - Init UI Methods
- (UIView *)backgroundView {
    
    return !_backgroundView ? _backgroundView = ({
        UIView *view = [UIView new];
        view;
    }) : _backgroundView;
}
                        
- (UITextField *)textField1 {
    
    return !_textField1 ? _textField1 = ({
        UITextField *textField = [UITextField new];
        [UITextField swpSetTextFieldStyle:textField setBorderColor:[UIColor orangeColor] setTextColor:[UIColor lightGrayColor] setBorderWidth:0.5 setCornerRadius:2 setPlaceholder:@"输入信息" setTextFontSize:12 setKeyboardType:UIKeyboardTypeDefault setTextEncrypt:NO];
        textField;
    }) : _textField1;
}

- (UITextField *)accountView {
    
    return !_accountView ? _accountView = ({
        UITextField *textField = [UITextField new];
        [UITextField swpSetTextFieldImage:textField setImageName:@"account" setBorderColor:nil setTextColor:[UIColor swpColorWithHexadecimal:0x2B2B2B] setBorderWidth:0.5 setCornerRadius:2 setPlaceholder:@"account" setTextFontSize:12 setKeyboardType:UIKeyboardTypeDefault setTextEncrypt:NO];
        
        textField.swpPlaceholderSystemFontOfSize(15);
        textField;
    }) : _accountView;
}

- (UITextField *)passwordView {
    
    return !_passwordView ? _passwordView = ({
        UITextField *textField = [UITextField new];
        [UITextField swpSetTextFieldImage:textField setImageName:@"password" setBorderColor:[UIColor swpColorWithHexadecimal:0x4BC2FF] setTextColor:[UIColor swpColorWithHexadecimal:0x4BC2FF]  setBorderWidth:0.5 setCornerRadius:2 setPlaceholder:@"password" setTextFontSize:12 setKeyboardType:UIKeyboardTypeDefault setTextEncrypt:YES];
        textField.swpPlaceholderFont([UIFont boldSystemFontOfSize:15]);
        textField;
    }) : _passwordView;
}


- (UITextField *)codeView {
    
    return !_codeView ? _codeView = ({
        UITextField *textField = [UITextField new];
        [UITextField swpSetTextFieldImage:textField setImageName:@"code" setBorderColor:nil setTextColor:[UIColor swpColorWithHexadecimal:0x2B2B2B]  setBorderWidth:0.5 setCornerRadius:2 setPlaceholder:@"code" setTextFontSize:12 setKeyboardType:UIKeyboardTypeDefault setTextEncrypt:NO];
        textField.swpPlaceholderColor([UIColor redColor]);
        textField;
    }) : _codeView;
}

- (NSArray<UIView *> *)views_ {
    
    return !_views_ ? _views_ = ({
        @[self.textField1, self.accountView, self.passwordView, self.codeView];
    }) : _views_;
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
