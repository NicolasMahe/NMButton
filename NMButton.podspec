Pod::Spec.new do |s|
  s.name             = 'NMButton'
  s.version          = '0.0.1'
  s.summary          = 'Improved UIButton'
  s.description      = <<-DESC
An improved version of UIButton.
                       DESC

  s.homepage         = 'https://github.com/NicolasMahe/NMButton'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Nicolas Mahé' => 'nicolas@mahe.me' }
  s.source           = { :git => 'https://github.com/NicolasMahe/NMButton.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'

  s.source_files = 'NMButton/**/*.swift'

  s.frameworks = 'UIKit'
  s.dependency 'NMUIExtension'

end
