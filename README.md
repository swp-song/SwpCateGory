# SwpCateGory

##### 封装 分类 常用一些工具
---
##### 导入：
```
手动导入：

SwpCateGory 文件夹 导入 项目 中

引入需要用的分类 : 

#import "UIColor+SwpColor.h"
```
---

```ruby

CocoaPods 导入:

pod search SwpCateGory

pod 'SwpCateGory'

#import <SwpCateGory/UIColor+SwpColor.h>

```

##### 介绍:

```Objective-C

// 颜色 一些操作
#import <SwpCateGory/UIColor+SwpColor.h>   

// View fram 属性一些操作
#import <SwpCateGory/UIView+SwpExtension.h>  

// 快速设置 TextField 一些常用的属性
#import <SwpCateGory/UITextField+SwpSetTextField.h>  

// 快速设置 button 一些常用的样式
#import <SwpCateGory/UIButton+SwpSetButton.h>     

// 快速设置 barButtonItem 一些常用的样式
#import <SwpCateGory/UIBarButtonItem+SwpSetNavigationBarItem.h>

// 简单对 userDefaults 操作
#import <SwpCateGory/NSUserDefaults+SwpUserDefaults.h>

```

##### 更新:
```Objective-C

// 字符串 16 进制 颜色 设置 颜色  ( 0XF4B711 or 0xF4B711 or #F4B711 )
+ (UIColor *)swpColorWithHexadecimalString:(NSString *)hexadecimalStringValue;

// 字符串 16 进制 颜色 设置 颜色 alpha ( 0XF4B711 or 0xF4B711 or #F4B711 )
+ (UIColor *)swpColorWithHexadecimalString:(NSString *)hexadecimalStringValue alpha:(CGFloat)alpha

```





