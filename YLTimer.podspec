 Pod::Spec.new do |s|
   s.name             = 'YLTimer'
   s.version          = '1.0.0'
   s.summary          = 'A timer written in GCD.'

 # This description is used to generate tags and improve search results.
 #   * Think: What does it do? Why did you write it? What is the focus?
 #   * Try to keep it short, snappy and to the point.
 #   * Write the description between the DESC delimiters below.
 #   * Finally, don't worry about the indent, CocoaPods strips it!

   s.description      = <<-DESC
 TODO: Add long description of the pod here.
                        DESC

   s.homepage         = 'https://github.com/YuLeiFuYun/YLTimer'
   # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
   s.license          = { :type => 'MIT', :file => 'LICENSE' }
   s.author           = { 'YuLeiFuYun' => 'yuleifuyunn@gmail.com' }
   s.source           = { :git => 'https://github.com/YuLeiFuYun/YLTimer.git', :tag => s.version.to_s }
   # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

   s.swift_version = '5.0'

   s.ios.deployment_target = '10.0'

   s.source_files = 'Sources/YLTimer/*'
   
   # s.resource_bundles = {
   #   'YLTimer' => ['YLTimer/Assets/*.png']
   # }

   # s.public_header_files = 'Pod/Classes/**/*.h'
   # s.frameworks = 'UIKit', 'MapKit'
   # s.dependency 'AFNetworking', '~> 2.3'
 end
