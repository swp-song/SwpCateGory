
Pod::Spec.new do |s|


  s.name    = 'SwpCateGory'
  s.version = '2.6.0'
  s.summary = " 常用工具分类 "

  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!

    s.description      = <<-DESC
  TODO: 常用工具分类
                         DESC

  s.homepage              = 'https://github.com/swp-song/SwpCateGory'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license               = { :type => 'MIT', :file => 'LICENSE' }
  s.author                = { 'swp-song' => '396587868@qq.com' }
  s.source                = { :git => 'https://github.com/swp-song/SwpCateGory.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  s.ios.deployment_target = '8.0'

  s.requires_arc          = true
  s.frameworks            = 'UIKit'
  s.resource              = "SwpCateGory/Resources/SwpCateGory.bundle"


  # s.default_subspec       = 'SwpCateGory'
  s.default_subspec       = 'SwpCateGory',
                            'SwpOrderByCharacter',
                            'SwpGenerateProperty',
                            'SwpMD5',
                            'SwpBase64',
                            'SwpDateString',
                            'SwpUserDefaults',
                            'SwpAttributed',
                            'SwpSetNavigationBarItem',
                            'SwpSetButton',
                            'SwpColor',
                            'SwpFont',
                            'SwpQrCodeImage',
                            'SwpBarCodeImage',
                            'SwpImageScreenshots',
                            'SwpCreateImage',
                            'SwpNavigationBar',
                            'SwpSetTextField',
                            'SwpExtension',
                            'SwpViewScreenshots'



  # SwpCateGory 全部
  # s.subspec 'SwpCateGory' do |swpCateGory|
  #   swpCateGory.source_files        = 'SwpCateGory/**/*.{h,m}'
  #   swpCateGory.public_header_files = 'SwpCateGory/**/*.h'
  # end

  # SwpCateGory 记录文件
  s.subspec 'SwpCateGory' do |swpCateGory|
    swpCateGory.public_header_files = 'SwpCateGory/Class/SwpCateGory/*.h'
    swpCateGory.source_files        = 'SwpCateGory/Class/SwpCateGory/*.{h,m}'
  end

  # NSArray 分类，按 A~Z 数组中数据排序。
  s.subspec 'SwpOrderByCharacter' do |swpOrderByCharacter|
    swpOrderByCharacter.dependency 'SwpCateGory/SwpCateGory'
    swpOrderByCharacter.public_header_files = 'SwpCateGory/Class/NSObject/NSArrayCateGory/SwpOrderByCharacter/*.h'
    swpOrderByCharacter.source_files        = 'SwpCateGory/Class/NSObject/NSArrayCateGory/SwpOrderByCharacter/*.{h,m}'
  end

  # NSDictionary 分类，获取字典中数据类型和属性名称，返回拼接字符串
  s.subspec 'SwpGenerateProperty' do |swpGenerateProperty|
    swpGenerateProperty.dependency 'SwpCateGory/SwpCateGory'
    swpGenerateProperty.public_header_files = 'SwpCateGory/Class/NSObject/NSDictionaryCateGory/SwpGenerateProperty/*.h'
    swpGenerateProperty.source_files        = 'SwpCateGory/Class/NSObject/NSDictionaryCateGory/SwpGenerateProperty/*.{h,m}'
  end

  # NSString 分类，字符串 MD4 加密
  s.subspec 'SwpMD5' do |swpMD5|
    swpMD5.dependency 'SwpCateGory/SwpCateGory'
    swpMD5.public_header_files = 'SwpCateGory/Class/NSObject/NSStringCateGory/SwpMD5/*.h'
    swpMD5.source_files        = 'SwpCateGory/Class/NSObject/NSStringCateGory/SwpMD5/*.{h,m}'
  end

  # NSString 分类，字符串 Base64 加密，解密
  s.subspec 'SwpBase64' do |swpBase64|
    swpBase64.dependency 'SwpCateGory/SwpCateGory'
    swpBase64.public_header_files = 'SwpCateGory/Class/NSObject/NSStringCateGory/SwpBase64/*.h'
    swpBase64.source_files        = 'SwpCateGory/Class/NSObject/NSStringCateGory/SwpBase64/*.{h,m}'

  end

  # NSString 分类，时间类型数据转换成字符串
  s.subspec 'SwpDateString' do |swpDateString|
    swpDateString.dependency 'SwpCateGory/SwpCateGory'
    swpDateString.public_header_files = 'SwpCateGory/Class/NSObject/NSStringCateGory/SwpDateString/*.h'
    swpDateString.source_files        = 'SwpCateGory/Class/NSObject/NSStringCateGory/SwpDateString/*.{h,m}'
  end


  # NSUserDefaults 分类，封装 NSUserDefaults 部分方法
  s.subspec 'SwpUserDefaults' do |swpUserDefaults|
    swpUserDefaults.dependency 'SwpCateGory/SwpCateGory'
    swpUserDefaults.public_header_files = 'SwpCateGory/Class/NSObject/NSUserDefaultsCateGory/SwpUserDefaults/*.h'
    swpUserDefaults.source_files        = 'SwpCateGory/Class/NSObject/NSUserDefaultsCateGory/SwpUserDefaults/*.{h,m}'

  end

  # NSMutableAttributedString 分类，分装设置富文本，字体，颜色。
  s.subspec 'SwpAttributed' do |swpAttributed|
    swpAttributed.dependency 'SwpCateGory/SwpCateGory'
    swpAttributed.public_header_files = 'SwpCateGory/Class/Other/SwpAttributeCateGory/*.h'
    swpAttributed.source_files        = 'SwpCateGory/Class/Other/SwpAttributeCateGory/*.{h,m}'

  end

  # UIBarButtonItem 分类，快速设置导航按钮样式
  s.subspec 'SwpSetNavigationBarItem' do |swpSetNavigationBarItem|
    swpSetNavigationBarItem.dependency 'SwpCateGory/SwpCateGory'
    swpSetNavigationBarItem.public_header_files = 'SwpCateGory/Class/UIKit/UIBarButtonItemCateGory/SwpSetNavigationBarItem/*.h'
    swpSetNavigationBarItem.source_files        = 'SwpCateGory/Class/UIKit/UIBarButtonItemCateGory/SwpSetNavigationBarItem/*.{h,m}'
  end

  # UIButton 分类，快速设置按钮样式
  s.subspec 'SwpSetButton' do |swpSetButton|
    swpSetButton.dependency 'SwpCateGory/SwpCateGory'
    swpSetButton.public_header_files = 'SwpCateGory/Class/UIKit/UIButtonCateGory/SwpSetButton/*.h'
    swpSetButton.source_files        = 'SwpCateGory/Class/UIKit/UIButtonCateGory/SwpSetButton/*.{h,m}'

  end

  # UIColor 分类，颜色分装可以设置 16 进制色值
  s.subspec 'SwpColor' do |swpColor|
    swpColor.dependency 'SwpCateGory/SwpCateGory'
    swpColor.public_header_files = 'SwpCateGory/Class/UIKit/UIColorCateGory/SwpColor/*.h'
    swpColor.source_files        = 'SwpCateGory/Class/UIKit/UIColorCateGory/SwpColor/*.{h,m}'
  end


  # UIColor 分类，颜色分装可以设置 16 进制色值
  s.subspec 'SwpFont' do |swpFont|
    swpFont.dependency 'SwpCateGory/SwpCateGory'
    swpFont.public_header_files = 'SwpCateGory/Class/UIKit/UIFontCateGory/SwpFont/*.h'
    swpFont.source_files        = 'SwpCateGory/Class/UIKit/UIFontCateGory/SwpFont/*.{h,m}'
  end


  # UIImage 分类，生成二维码
  s.subspec 'SwpQrCodeImage' do |swpQrCodeImage|
    swpQrCodeImage.dependency 'SwpCateGory/SwpCateGory'
    swpQrCodeImage.public_header_files = 'SwpCateGory/Class/UIKit/UIImageCateGory/SwpQrCodeImage/*.h'
    swpQrCodeImage.source_files        = 'SwpCateGory/Class/UIKit/UIImageCateGory/SwpQrCodeImage/*.{h,m}'
  end

  # UIImage 分类，生成条形码
  s.subspec 'SwpBarCodeImage' do |swpBarCodeImage|
    swpBarCodeImage.dependency 'SwpCateGory/SwpCateGory'
    swpBarCodeImage.public_header_files = 'SwpCateGory/Class/UIKit/UIImageCateGory/SwpBarCodeImage/*.h'
    swpBarCodeImage.source_files        = 'SwpCateGory/Class/UIKit/UIImageCateGory/SwpBarCodeImage/*.{h,m}'
  end

  # UIImage 分类，截取 view 生成图片图片
  s.subspec 'SwpImageScreenshots' do |swpImageScreenshots|
    swpImageScreenshots.dependency 'SwpCateGory/SwpCateGory'
    swpImageScreenshots.public_header_files = 'SwpCateGory/Class/UIKit/UIImageCateGory/SwpImageScreenshots/*.h'
    swpImageScreenshots.source_files        = 'SwpCateGory/Class/UIKit/UIImageCateGory/SwpImageScreenshots/*.{h,m}'
  end

  # UIImage 分类，创建 image
  s.subspec 'SwpCreateImage' do |swpCreateImage|
      swpCreateImage.dependency 'SwpCateGory/SwpCateGory'
      swpCreateImage.public_header_files = 'SwpCateGory/Class/UIKit/UIImageCateGory/SwpCreateImage/*.h'
      swpCreateImage.source_files        = 'SwpCateGory/Class/UIKit/UIImageCateGory/SwpCreateImage/*.{h,m}'
  end


  # UINavigationBar 分类，设置导航栏
  s.subspec 'SwpNavigationBar' do |swpNavigationBar|
    swpNavigationBar.dependency 'SwpCateGory/SwpCateGory'
    swpNavigationBar.public_header_files = 'SwpCateGory/Class/UIKit/UINavigationBarCateGory/SwpNavigationBar/*.h'
    swpNavigationBar.source_files        = 'SwpCateGory/Class/UIKit/UINavigationBarCateGory/SwpNavigationBar/*.{h,m}'
  end


  # UITextField 分类，快速设置 TextField
  s.subspec 'SwpSetTextField' do |swpSetTextField|
    swpSetTextField.dependency 'SwpCateGory/SwpCateGory'
    swpSetTextField.public_header_files = 'SwpCateGory/Class/UIKit/UITextFieldCateGory/SwpSetTextField/*.h'
    swpSetTextField.source_files        = 'SwpCateGory/Class/UIKit/UITextFieldCateGory/SwpSetTextField/*.{h,m}'
  end

  # UIView 分类，修改 View Size
  s.subspec 'SwpExtension' do |swpExtension|
    swpExtension.dependency 'SwpCateGory/SwpCateGory'
    swpExtension.public_header_files = 'SwpCateGory/Class/UIKit/UIViewCateGory/SwpExtension/*.h'
    swpExtension.source_files        = 'SwpCateGory/Class/UIKit/UIViewCateGory/SwpExtension/*.{h,m}'
  end

  # UIView 分类，截取 view 生成图片图片
  s.subspec 'SwpViewScreenshots' do |swpViewScreenshots|
    swpViewScreenshots.dependency 'SwpCateGory/SwpCateGory'
    swpViewScreenshots.public_header_files = 'SwpCateGory/Class/UIKit/UIViewCateGory/SwpViewScreenshots/*.h'
    swpViewScreenshots.source_files        = 'SwpCateGory/Class/UIKit/UIViewCateGory/SwpViewScreenshots/*.{h,m}'
  end

end
