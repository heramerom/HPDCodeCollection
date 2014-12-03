#
#  Be sure to run `pod spec lint HPDCodeCollection.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
  s.name         = "HPDCodeCollection"
  s.version      = "0.0.1"
  s.summary      = "code collection"
  s.homepage     = "https://github.com/heramerom/HPDCodeCollection"
  s.license      = "BSD"
  s.author             = { "Heramerom" => "Heramerom@163.com" }
  s.source       = { :git => "https://github.com/heramerom/HPDCodeCollection.git", :tag => "0.0.1" }
  s.source_files  = "HPDCodeCollection/src/*.{h,m}", "HPDCodeCollection/src/**/*.{h,m}"
  s.platform = :ios
  s.ios.deployment_target = '7.0'
  s.frameworks = 'Foundation', 'CoreGraphics', 'UIKit'
  s.requires_arc = true
end
