
Pod::Spec.new do |s|
  s.name             = 'CocoaChainKit'
  s.version          = '0.6.0'
  s.summary          = '一款链式调用框架.'
  s.homepage         = 'https://github.com/Pircate/CocoaChainKit'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Pircate' => 'gao497868860@163.com' }
  s.source           = { :git => 'https://github.com/Pircate/CocoaChainKit.git', :tag => s.version.to_s }
  s.ios.deployment_target = '8.0'
  s.source_files = 'CocoaChainKit/Classes/**/*'
  s.frameworks = 'UIKit'
  s.swift_version = '4.0'
end
