
Pod::Spec.new do |s|


  s.name    = 'SwpCateGory'
  s.version = '2.2.2'
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

  s.source_files          = "SwpCateGory/**/*.{h,m}"
  s.requires_arc          = true
  s.frameworks            = 'UIKit'

end
