//
//  DemoViewController.m
//  Demo
//
//  Created by swp_song on 16/6/2.
//  Copyright © 2016年 swp_song. All rights reserved.
//

#import "DemoViewController.h"

#import "NSString+SwpDate.h"
#import "NSUserDefaults+SwpUserDefaults.h"
#import "UIBarButtonItem+SwpSetNavigationBarItem.h"
#import "UIButton+SwpSetButton.h"
#import "UITextField+SwpSetTextField.h"
#import "UIColor+SwpColor.h"
#import "UINavigationBar+SwpSetBackgroundColor.h"
#import "UIFont+SwpFont.h"

@interface DemoViewController ()

@property (nonatomic, strong) UIButton    *submitButton;
@property (nonatomic, strong) UIButton    *checkBoxButton;

@property (nonatomic, strong) UITextField *textField1;
@property (nonatomic, strong) UITextField *textField2;


@end

@implementation DemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    
    // Date
    NSLog(@"%@", [NSString swpDateGetSystemDateWithDateFormat:@"Y - M - d  hh:mm:ss"]);
    NSLog(@"%@", [NSString swpDateFormatDate:[NSDate date] formatString:@"Y MM dd"]);
    
    // NSUserDefaults
    [NSUserDefaults swpUserDefaultSetObject:@"123" forKey:@"number"];
    NSLog(@"%@", [NSUserDefaults swpUserDefaultGetObject:@"number"]);
    [NSUserDefaults swpUserDefaultRemoveObjectForKey:@"number"];
    NSLog(@"%@", [NSUserDefaults swpUserDefaultGetObject:@"number"]);
    
    
    UIBarButtonItem *leftBarButtonItem     = [UIBarButtonItem swpSetNavigationBarItemImage:@"search_delete" setHighlightedImageName:@"search_delete" seTtag:0 setLeftBarButtonItem:YES setTarget:self setAction:@selector(clickButton:)];


    UIBarButtonItem *rightBarButtonItem    = [UIBarButtonItem swpSetNavigationBarItemTitle:@"取消" setFontColot:[UIColor blackColor] setFontSize:15.0 setTag:0 setLeftBarButtonItem:NO setAarget:self setAction:@selector(clickButton:)];


    UIButton        *leftBarButton         = [UIButton swpSetNavigationButtonWithImage:@"search_delete" setHighlightedImageName:@"search_delete" setTag:0 setLeftButton:NO setTarget:self setAction:@selector(clickButton:)];
    UIButton        *rightBarButton        = [UIButton swpSetNavigationButtonWithTitle:@"取消" setFontColot:[UIColor blackColor] setFontSize:15 setTag:1 setLeftButton:NO setTarget:self setAction:@selector(clickButton:)];
    
    UIBarButtonItem *buttonItem1           = [[UIBarButtonItem alloc] initWithCustomView:leftBarButton];
    UIBarButtonItem *buttonItem2           = [[UIBarButtonItem alloc] initWithCustomView:rightBarButton];


    self.navigationItem.leftBarButtonItem  = leftBarButtonItem;
    self.navigationItem.rightBarButtonItem = rightBarButtonItem;

//    self.navigationItem.leftBarButtonItem  = buttonItem1;
//    self.navigationItem.rightBarButtonItem = buttonItem1;
    
    [self.view addSubview:self.submitButton];
    [self.view addSubview:self.checkBoxButton];
    [self.view addSubview:self.textField1];
    [self.view addSubview:self.textField2];
    
    [self.navigationController.navigationBar swpSetBackgroundColor:[UIColor swpColorWithHexadecimal:0x4BC2FF]];
    
    
    NSLog(@"%@", [UIFont swpFontGetSystemFontNameList]);
    
    NSLog(@"%@", [UIFont swpFontGetSystemFontDictionaryList]);
}


- (void)clickButton:(UIButton *)button  {
    NSLog(@"%ld", button.tag);
    if (button.tag == 3) button.backgroundColor = [UIColor swpColorWithRandom];
    if (button.tag == 4) button.selected        = !button.selected;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (UIButton *)submitButton {
    
    if (!_submitButton) {
        _submitButton = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 200, 30)];
        
        [UIButton swpSetButtonSubmitStyle:_submitButton setBackgroundColor:[UIColor blueColor] setFontColor:[UIColor whiteColor] setTitle:@"点击生成随机色" setFontSize:15.0f setCornerRadius:3 setTag:3 setTarget:self setAction:@selector(clickButton:)];
    }
    return _submitButton;
}

- (UIButton *)checkBoxButton {
    
    if (!_checkBoxButton) {
        
        _checkBoxButton = [[UIButton alloc] initWithFrame:CGRectMake(100, 200, 80, 30)];
        [UIButton swpSetButtonCheckBoxStyle:_checkBoxButton setTitle:@"记住密码" setFontSize:12.0f setTitleColor:[UIColor blackColor] setNormalImageName:@"forgot_password_no" setSelectedImage:@"forgot_password_sel" setTag:4 setTarget:self setAction:@selector(clickButton:)];
    }
    return _checkBoxButton;
}

- (UITextField *)textField1 {
    
    if (!_textField1) {
        
        _textField1 = [[UITextField alloc] initWithFrame:CGRectMake(20, 240, 240, 35)];
        [UITextField swpSetTextFieldStyle:_textField1 setBorderColor:[UIColor orangeColor] setTextColor:[UIColor lightGrayColor] setBorderWidth:0.5 setCornerRadius:2 setPlaceholder:@"请输入....." setTextFontSize:12 setKeyboardType:UIKeyboardTypeDefault setTextEncrypt:NO];
    }
    return _textField1;
}

- (UITextField *)textField2 {
    
    if (!_textField2) {
        
        _textField2 = [[UITextField alloc] initWithFrame:CGRectMake(20, 300, 240, 35)];
        [UITextField swpSetTextFieldImage:_textField2 setImageName:@"login_password" setBorderColor:nil setTextColor:[UIColor swpColorWithHexadecimal:0x4BC2FF]  setBorderWidth:0.5 setCornerRadius:2 setPlaceholder:@"" setTextFontSize:12 setKeyboardType:UIKeyboardTypeDefault setTextEncrypt:YES];
    }
    return _textField2;
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
