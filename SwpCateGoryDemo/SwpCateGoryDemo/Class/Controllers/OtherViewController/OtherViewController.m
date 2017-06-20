
//
//  OtherViewController.m
//  SwpCateGoryDemo
//
//  Created by swp_song on 2017/6/20.
//  Copyright © 2017年 swp-song. All rights reserved.
//

#import "OtherViewController.h"


/*! ---------------------- Tool       ---------------------- !*/
#import "NSString+SwpDate.h"                    //  SwpDate
#import "NSUserDefaults+SwpUserDefaults.h"      //  NSUserDefaults
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
