
Pod::Spec.new do |s|
  s.name             = 'Const'
  s.version          = '1.0'
  s.swift_version    = '5.0'
  s.summary          = 'More simply create object'


  s.homepage         = 'https://github.com/DAEUN28/Const'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'DAEUN28' => 'acone1128@gmail.com' }
  s.source           = { :git => 'https://github.com/DAEUN28/Const.git', :tag => s.version.to_s }

  s.ios.deployment_target = '11.0'

  s.source_files = 'Source/*.swift'
  # s.frameworks = 'UIKit', 'MapKit'
end
