
Pod::Spec.new do |s|


  s.name    = 'SwpCateGory'
  s.version = '2.3.0'
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

  s.default_subspec      = 'SwpCateGory'

  # SwpCateGory 全部
  s.subspec 'SwpCateGory' do |swpCateGory|
    swpCateGory.source_files        = 'SwpCateGory/**/*.{h,m}'
    swpCateGory.public_header_files = 'SwpCateGory/**/*.h'
  end


  # NSArray 分类，按 A~Z 数组中数据排序。
  s.subspec 'SwpOrderByCharacter' do |swpOrderByCharacter|
    swpOrderByCharacter.source_files        = 'SwpCateGory/NSObject/NSArrayCateGory/SwpOrderByCharacter/*.{h,m}'
    swpOrderByCharacter.public_header_files = 'SwpCateGory/NSObject/NSArrayCateGory/SwpOrderByCharacter/*.h'
  end

  # NSDictionary 分类，获取字典中数据类型和属性名称，返回拼接字符串
  s.subspec 'SwpGenerateProperty' do |swpGenerateProperty|
    swpGenerateProperty.source_files        = 'SwpCateGory/NSObject/NSDictionaryCateGory/SwpGenerateProperty/*.{h,m}'
    swpGenerateProperty.public_header_files = 'SwpCateGory/NSObject/NSDictionaryCateGory/SwpGenerateProperty/*.h'

  end

  # NSString 分类，字符串 MD4 加密
  s.subspec 'SwpMD5' do |swpMD5|
    swpMD5.source_files        = 'SwpCateGory/NSObject/NSStringCateGory/swpMD5/*.{h,m}'
    swpMD5.public_header_files = 'SwpCateGory/NSObject/NSStringCateGory/swpMD5/*.h'
  end


  # NSString 分类，字符串 Base64 加密，解密
  s.subspec 'SwpBase64' do |swpBase64|
    swpBase64.source_files        = 'SwpCateGory/NSObject/NSStringCateGory/SwpBase64/*.{h,m}'
    swpBase64.public_header_files = 'SwpCateGory/NSObject/NSStringCateGory/SwpBase64/*.h'
  end

  # NSString 分类，时间类型数据转换成字符串
  s.subspec 'SwpDateString' do |swpDateString|
    swpDateString.source_files        = 'SwpCateGory/NSObject/NSStringCateGory/SwpDateString/*.{h,m}'
    swpDateString.public_header_files = 'SwpCateGory/NSObject/NSStringCateGory/SwpDateString/*.h'
  end


  # NSUserDefaults 分类，封装 NSUserDefaults 部分方法
  s.subspec 'SwpUserDefaults' do |swpUserDefaults|
    swpUserDefaults.source_files        = 'SwpCateGory/NSObject/NSUserDefaultsCateGory/SwpUserDefaults/*.{h,m}'
    swpUserDefaults.public_header_files = 'SwpCateGory/NSObject/NSUserDefaultsCateGory/SwpUserDefaults/*.h'
  end

  # NSMutableAttributedString 分类，分装设置富文本，字体，颜色。
  s.subspec 'SwpAttributed' do |swpUserDefaults|
    swpUserDefaults.source_files        = 'SwpCateGory/Other/SwpAttributeCateGory/*.{h,m}'
    swpUserDefaults.public_header_files = 'SwpCateGory/Other/SwpAttributeCateGory/*.h'
  end

  # UIBarButtonItem 分类，快速设置导航按钮样式
  s.subspec 'SwpSetNavigationBarItem' do |swpSetNavigationBarItem|
    swpSetNavigationBarItem.source_files        = 'SwpCateGory/UIKit/UIBarButtonItemCateGory/SwpSetNavigationBarItem/*.{h,m}'
    swpSetNavigationBarItem.public_header_files = 'SwpCateGory/UIKit/UIBarButtonItemCateGory/SwpSetNavigationBarItem/*.h'
  end

  # UIButton 分类，快速设置按钮样式
  s.subspec 'SwpSetButton' do |swpSetButton|
    swpSetButton.source_files        = 'SwpCateGory/UIKit/UIButtonCateGory/SwpSetButton/*.{h,m}'
    swpSetButton.public_header_files = 'SwpCateGory/UIKit/UIButtonCateGory/SwpSetButton/*.h'
  end

  # UIColor 分类，颜色分装可以设置 16 进制色值
  s.subspec 'SwpColor' do |swpColor|
    swpColor.source_files        = 'SwpCateGory/UIKit/UIColorCateGory/SwpColor/*.{h,m}'
    swpColor.public_header_files = 'SwpCateGory/UIKit/UIColorCateGory/SwpColor/*.h'
  end


  # UIColor 分类，颜色分装可以设置 16 进制色值
  s.subspec 'SwpFont' do |swpFont|
    swpFont.source_files        = 'SwpCateGory/UIKit/UIFontCateGory/SwpFont/*.{h,m}'
    swpFont.public_header_files = 'SwpCateGory/UIKit/UIFontCateGory/SwpFont/*.h'
  end


  # UIImage 分类，生成二维码
  s.subspec 'SwpQrCodeImage' do |swpQrCodeImage|
    swpQrCodeImage.source_files        = 'SwpCateGory/UIKit/UIImageCateGory/SwpQrCodeImage/*.{h,m}'
    swpQrCodeImage.public_header_files = 'SwpCateGory/UIKit/UIImageCateGory/SwpQrCodeImage/*.h'
  end

  # UIImage 分类，生成条形码
  s.subspec 'SwpBarCodeImage' do |swpBarCodeImage|
    swpBarCodeImage.source_files        = 'SwpCateGory/UIKit/UIImageCateGory/SwpBarCodeImage/*.{h,m}'
    swpBarCodeImage.public_header_files = 'SwpCateGory/UIKit/UIImageCateGory/SwpBarCodeImage/*.h'

  end

  # UIImage 分类，截取 view 生成图片图片
  s.subspec 'SwpImageScreenshots' do |swpImageScreenshots|
    swpImageScreenshots.source_files        = 'SwpCateGory/UIKit/UIImageCateGory/SwpImageScreenshots/*.{h,m}'
    swpImageScreenshots.public_header_files = 'SwpCateGory/UIKit/UIImageCateGory/SwpImageScreenshots/*.h'

  end



  # UINavigationBar 分类，设置导航栏
  s.subspec 'SwpNavigationBar' do |swpNavigationBar|
    swpNavigationBar.source_files        = 'SwpCateGory/UIKit/UINavigationBarCateGory/SwpNavigationBar/*.{h,m}'
    swpNavigationBar.public_header_files = 'SwpCateGory/UIKit/UINavigationBarCateGory/SwpNavigationBar/*.h'

  end


  # UITextField 分类，快速设置 TextField
  s.subspec 'SwpSetTextField' do |swpSetTextField|
    swpSetTextField.source_files        = 'SwpCateGory/UIKit/UITextFieldCateGory/SwpSetTextField/*.{h,m}'
    swpSetTextField.public_header_files = 'SwpCateGory/UIKit/UITextFieldCateGory/SwpSetTextField/*.h'

  end

  # UIView 分类，修改 View Size
  s.subspec 'SwpExtension' do |swpExtension|
    swpExtension.source_files        = 'SwpCateGory/UIKit/UIViewCateGory/SwpExtension/*.{h,m}'
    swpExtension.public_header_files = 'SwpCateGory/UIKit/UIViewCateGory/SwpExtension/*.h'

  end

  # UIView 分类，截取 view 生成图片图片
  s.subspec 'SwpViewScreenshots' do |swpViewScreenshots|
    swpViewScreenshots.source_files        = 'SwpCateGory/UIKit/UIViewCateGory/SwpViewScreenshots/*.{h,m}'
    swpViewScreenshots.public_header_files = 'SwpCateGory/UIKit/UIViewCateGory/SwpViewScreenshots/*.h'

  end

end
