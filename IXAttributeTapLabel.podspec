
Pod::Spec.new do |s|

  s.name         = "IXAttributeTapLabel"
  s.version      = "0.0.2"
  s.summary      = "可点击响应指定内容的UILabel子类"

  s.description  = <<-DESC 
			点击响应指定内容的UILabel子类
 			DESC

  s.homepage     = "https://github.com/NSSONGMENG/AttributeStringDemo.git"

  # s.license      = "MIT"
  s.license      = { :type => "MIT", :file => "License" }


  s.author             = { "seven" => "wightmeng@gmail.com" }

  s.platform     = :ios

  s.source       = { :git => "https://github.com/NSSONGMENG/AttributeStringDemo.git", :tag => "#{s.version}" }

  s.source_files  = "AttributeStringDemo", "IXAttributeTapLabel/*.{h,m}"

end
