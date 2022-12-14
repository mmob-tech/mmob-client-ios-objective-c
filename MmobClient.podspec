#
# Be sure to run `pod lib lint MmobClient.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MmobClient'
  s.version          = '0.1.0'
  s.summary          = 'A short description of MmobClient.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
# MMOB, Embedded Finance made easy

Integrate complementary products and services that drive conversion and unlock new revenue streams - seamlessly within your own digital channels.


The MMOB client on iOs will help creating and managing your own integration views

                       DESC

  s.homepage         = 'https://github.com/mmob-tech/mmob-client-ios-objective-c'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'blaiprat' => 'blai@mmob.com' }
  s.source           = { :git => 'https://github.com/mmob-tech/mmob-client-ios-objective-c.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '12.0'

  s.source_files = 'MmobClient/Classes/**/*'
  
  # s.resource_bundles = {
  #   'MmobClient' => ['MmobClient/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
