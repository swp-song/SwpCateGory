Pod::Spec.new do |s|

  s.name                  = "SwpCateGory"
  s.version               = "1.0.0"
  s.ios.deployment_target = '7.0'
  s.summary               = " 封装图片轮播控件 "
  s.homepage              = "https://github.com/swp-song/SwpCateGory.git"
  s.license               = { :type => "MIT", :file => "LICENSE" }
  s.author                = { "swp-song" => "396587868@qq.com" }
  s.source                = { :git => "https://github.com/swp-song/SwpCateGory.git", :tag => s.version }
  s.source_files          = "SwpCateGory/**/*.{h,m}"
  s.requires_arc          = true
  s.framework             = "UIKit"

end