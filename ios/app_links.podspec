Pod::Spec.new do |s|
  s.name             = 'app_links'
  s.version          = '6.4.1'
  s.summary          = 'iOS Universal Links and Custom URL schemes.'
  s.description      = <<-DESC
  iOS Universal Links and Custom URL schemes.
                       DESC
  s.homepage         = 'https://github.com/llfbandit/app_links'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files     = 'app_links/Sources/app_links/**/*.swift'
  s.dependency 'Flutter'
  s.platform         = :ios, '15.5'

  s.pod_target_xcconfig = { 
    'DEFINES_MODULE' => 'YES',
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' 
  }
  s.swift_version = '5.0'

  s.resource_bundles = {
    'app_links_ios_privacy' => [
      'app_links/Sources/app_links/PrivacyInfo.xcprivacy'
    ]
  }
end
