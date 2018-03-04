
//
//  OtherViewController.m
//  SwpCateGoryDemo
//
//  Created by swp_song on 2017/6/20.
//  Copyright © 2017年 swp-song. All rights reserved.
//

#import "OtherViewController.h"


/*! ---------------------- Tool       ---------------------- !*/
#import <SwpCateGory/UIBarButtonItem+SwpSetNavigationBarItem.h>
#import <SwpCateGory/NSString+SwpDate.h>                    //  SwpDate
#import <SwpCateGory/NSString+SwpBase64.h>                  //  SwpBase64
#import <SwpCateGory/NSString+SwpMD5Encryption.h>           //  SwpMD5Encryption
#import <SwpCateGory/NSUserDefaults+SwpUserDefaults.h>      //  NSUserDefaults
#import <SwpCateGory/UIView+SwpViewScreenshots.h>
#import <SwpCateGory/UIImage+SwpImageScreenshots.h>
#import <SwpCateGory/UIImage+SwpCreateImage.h>
/*! ---------------------- Tool       ---------------------- !*/

/*! ---------------------- Model      ---------------------- !*/
/*! ---------------------- Model      ---------------------- !*/

/*! ---------------------- View       ---------------------- !*/
/*! ---------------------- View       ---------------------- !*/

/*! ---------------------- Controller ---------------------- !*/
/*! ---------------------- Controller ---------------------- !*/


@interface OtherViewController ()


#pragma mark - UI   Propertys
/*! ---------------------- UI   Property  ---------------------- !*/
/*! ---------------------- UI   Property  ---------------------- !*/

#pragma mark - Data Propertys
/*! ---------------------- Data Property  ---------------------- !*/
/*! ---------------------- Data Property  ---------------------- !*/
@end

@implementation OtherViewController


#pragma mark - Lifecycle Methods
/**!
 *  @author swp_song
 *
 *  @brief  viewDidLoad ( 视图载入完成调用 )
 */
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
    
    // MD5
    NSLog(@"swpMD5Encryption = %@", [NSString swpMD5Encryption:@"123"]);
    NSLog(@"swpMD5EncryptionChain = %@", NSString.swpMD5EncryptionChain(@"123"));
    
    NSLog(@"swpMD5Encryption32Bit = %@", [NSString swpMD5Encryption32Bit:@"123"]);
    NSLog(@"swpMD5Encryption32BitChain = %@", NSString.swpMD5Encryption32BitChain(@"123"));
    
    NSLog(@"swpMD5Encryption32BitForLowerCase = %@", [NSString swpMD5Encryption32BitForLowerCase:@"123"]);
    NSLog(@"swpMD5Encryption32BitForLowerCaseChain = %@", NSString.swpMD5Encryption32BitForLowerCaseChain(@"123"));
    
    NSLog(@"swpMD5Encryption32BitForUpperCase = %@", [NSString swpMD5Encryption32BitForUpperCase:@"123"]);
    NSLog(@"swpMD5Encryption32BitForUpperCaseChain = %@", NSString.swpMD5Encryption32BitForUpperCaseChain(@"123"));
    
    NSLog(@"swpMD5Encryption16Bit = %@", [NSString swpMD5Encryption16Bit:@"123"]);
    NSLog(@"swpMD5Encryption16BitChain = %@", NSString.swpMD5Encryption16BitChain(@"123"));
    
    NSLog(@"swpMD5Encryption16BitForLowerCase = %@", [NSString swpMD5Encryption16BitForLowerCase:@"123"]);
    NSLog(@"swpMD5Encryption16BitForLowerCaseChain = %@", NSString.swpMD5Encryption16BitForLowerCaseChain(@"123"));
    
    NSLog(@"swpMD5Encryption16BitForUpperCase = %@", [NSString swpMD5Encryption16BitForUpperCase:@"123"]);
    NSLog(@"swpMD5Encryption16BitForUpperCaseChain = %@", NSString.swpMD5Encryption16BitForUpperCaseChain(@"123"));
    
    //  Base64
    NSString *base64EncodedString = [NSString swpBase64EncodedString:@"a"];
    NSString *base64DecodedString = [NSString swpBase64DecodedString:base64EncodedString];
    NSLog(@"base64EncodedString = %@", base64EncodedString);
    NSLog(@"base64DecodedString = %@", base64DecodedString);
    
    NSString *base64EncodedStringC = NSString.swpBase64EncodedStringChain(@"A");
    NSString *base64DecodedStringC = NSString.swpBase64DecodedStringChain(base64EncodedStringC);
    
    NSLog(@"base64EncodedStringC = %@", base64EncodedStringC);
    NSLog(@"base64DecodedStringC = %@", base64DecodedStringC);
    
    self.navigationItem.rightBarButtonItem = [UIBarButtonItem swpSetNavigationBarItemTitle:@"截屏" setFontColot:[UIColor blackColor] setFontSize:15.0 setTag:0 setLeftBarButtonItem:NO setAarget:self setAction:@selector(clickButtonEvent:)];
    
    
    UIImage *image1 = [UIImage swpCreateImageWithColor:[UIColor orangeColor]];
    UIImage *image2 = [UIImage swpCreateImageWithColor:[UIColor blueColor] frame:CGRectMake(100, 0, 300, 300)];
    UIImage *image3 = [UIImage swpCreateImageWithColor:nil frame:CGRectZero];
    UIImage *image4 = UIImage.swpCreateImageWithColor([UIColor greenColor]);
    UIImage *image5 = UIImage.swpCreateImageWithColorAndFrame([UIColor darkGrayColor], CGRectMake(0, 0, 200, 200));
    UIImage *image6 = UIImage.swpCreateImageWithColorAndFrame(nil, CGRectZero);
    NSLog(@"%@", image1);
    NSLog(@"%@", image2);
    NSLog(@"%@", image3);
    NSLog(@"%@", image4);
    NSLog(@"%@", image5);
    NSLog(@"%@", image6);
}

- (void)clickButtonEvent:(UIBarButtonItem *)button {
    
    UIImage *image1 = [self.view swpViewScreenshots];
    UIImage *image2 = self.view.swpViewScreenshotsChain();
    UIImage *image3 = [UIImage swpImageScreenshots:self.view];
    UIImage *image4 = UIImage.swpImageScreenshotsChain(self.view);
    UIImage *image5 = [UIImage swpImageScreenshotsFullScreen];
    UIImage *image6 = UIImage.swpImageScreenshotsFullScreenChain();
    
    NSLog(@"%@", image1);
    NSLog(@"%@", image2);
    NSLog(@"%@", image3);
    NSLog(@"%@", image4);
    NSLog(@"%@", image5);
    NSLog(@"%@", image6);
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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
