Pod::Spec.new do |s|
  s.name             = 'IOSDGPSDKUI'
  s.version          = '1.27.5.115'
  s.summary          = 'IOS SDK DIGIPRO Formatos Electrónicos (User Interface Object)'
  s.description      = <<-DESC
El User Interface object framework es utilizado para la generación de formatos electrónicos.
                       DESC

  s.homepage         = 'https://github.com/jviloriam/IOSDGPSDKUI'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'jviloriam' => 'jonathanv@digipro.com.mx' }
  s.source           = { :git => 'https://github.com/jviloriam/IOSDGPSDKUI.git', :tag => s.version.to_s }
  s.ios.deployment_target = '11.0'
  s.swift_version = '5.0'
  s.platform = :ios
  s.vendored_frameworks = "DIGIPROSDKUI.xcframework"
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
end

# cd /Users/jonathanviloriam/Documents/Swift/Github/IOSDGPSDKUI
# pod trunk push IOSDGPSDKUI.podspec --allow-warnings
# pod trunk push IOSDGPSDKUI.podspec
# pod update IOSDGPSDKUI