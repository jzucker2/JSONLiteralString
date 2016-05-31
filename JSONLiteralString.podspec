#
# Be sure to run `pod lib lint JSONLiteralString.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'JSONLiteralString'
  s.version          = '0.1.0'
  s.summary          = 'Converts JSON compatible Foundation objects into valid NSString literals.'

  s.description      = <<-DESC
This is an obscure but distinct framework for converting JSON compatible objects into a valid NSString, represented as literals, that can be compiled into valid Foundation objects.
                       DESC

  s.homepage         = 'https://github.com/jzucker2/JSONLiteralString'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Jordan Zucker' => 'jordan.zucker@gmail.com' }
  s.source           = { :git => 'https://github.com/jzucker2/JSONLiteralString.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/jzucker'

  s.ios.deployment_target = '8.0'
  s.tvos.deployment_target = '9.0'
  s.osx.deployment_target = '10.8'

  s.source_files = 'JSONLiteralString/Classes/**/*'

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
