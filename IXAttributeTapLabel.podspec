
Pod::Spec.new do |s|

  s.name         = "IXAttributeTapLabel"
  s.version      = "0.0.4"
  s.summary      = "点击响应指定内容的UILabel子类"

  s.description  = "点击响应指定内容的UILabel子类"

  s.homepage     = "https://github.com/NSSONGMENG/AttributeStringDemo.git"

  # s.license      = "MIT"
  s.license      = { :type => "MIT", :file => "License" }


  s.author             = { "seven" => "740621245@qq.com" }

  s.platform     = :ios

  s.source       = { :git => "https://github.com/NSSONGMENG/AttributeStringDemo.git", :tag => "#{s.version}" }

  s.source_files  = "AttributeStringDemo", "IXAttributeTapLabel/*.{h,m}"

end
