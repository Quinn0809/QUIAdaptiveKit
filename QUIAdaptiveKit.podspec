#eg:
#
#  Be sure to run `pod spec lint QPhotosKit.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

s.name         = "QUIAdaptiveKit"
s.version      = "0.1"
s.summary      = "you can adapt different device very easy by QUIAdaptiveKit "
s.description      = <<-DESC
you can adapt different device very easy by QUIAdaptiveKit; if you find error ,please send email.
DESC
s.homepage     = "https://github.com/Quinn0809/QUIAdaptiveKit"
s.license          = { :type => 'MIT', :file => 'LICENSE' }

s.author             = { "quinn0809" => "quinn_f@126.com" }
s.source       = { :git => "https://github.com/Quinn0809/QUIAdaptiveKit.git", :tag => s.version.to_s }

s.ios.deployment_target = '10.0'
s.requires_arc          = true
s.static_framework      = true
s.source_files          = ['QUIAdaptiveKit']
s.pod_target_xcconfig = {
'OTHER_SWIFT_FLAGS'           => '-DGLES',
}

end
