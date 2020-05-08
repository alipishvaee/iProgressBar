#
# Be sure to run `pod lib lint iProgressBar.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'iProgressBar'
  s.version          = '0.1.0'
  s.summary          = 'iProgressBar is a custom progress bar for swift developers.'
  s.description      = <<-DESC
'a custom progress bar for swift developers with better ui to develop'
                       DESC
  s.homepage         = 'https://github.com/alipishvaee/iProgressBar'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'alipishvaee2@Gmail.com' => 'alipishvaee2@Gmail.com' }
  s.source           = { :git => 'https://github.com/alipishvaee/iProgressBar.git', :tag => '0.1.0' }
  s.ios.deployment_target = '11.0'
  s.source_files = 'Source/**/*.swift', 'Helper/**/*.swift'
  s.swift_version = '4.0'

end
