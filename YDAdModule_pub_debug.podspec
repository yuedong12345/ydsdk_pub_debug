Pod::Spec.new do |spec|
  spec.name         = 'YDAdModule_pub_debug'
  spec.version      = '3.0.1.3'
  spec.license      = { :type => 'MIT' }
  spec.homepage     = 'https://github.com/yuedong12345/ydsdk_pub_debug.git'
  spec.authors      = { 'yuedong12345' => 'yuedong12345@126.com' }
  spec.summary      = 'ydAd'
  spec.source       = { :git => 'https://github.com/yuedong12345/ydsdk_pub_debug.git', :tag =>spec.version.to_s  }
  spec.platform     = :ios, '12.0'
  
  # Updated to use xcframeworks
  # 包含 Core 和所有 Adapter 模块
  spec.vendored_frameworks = 'YDAdModule.xcframework', 'YDAdModule_CSJ.xcframework', 'YDAdModule_GDT.xcframework', 'YDAdModule_KS.xcframework', 'YDAdModule_BD.xcframework'
  spec.resources = 'YDAdModule.bundle'
  
  spec.dependency 'Ads-Fusion-CN-Beta/CSJMediation', '6.4.1.0'
  spec.dependency 'CSJMGdtAdapter', '4.14.45.0'
  spec.dependency 'CSJMBaiduAdapter', '5.325.1'
  spec.dependency 'CSJMKsAdapter', '3.3.55.0.0'
  spec.dependency 'KSAdSDK', '3.3.69.3'
  spec.dependency 'BaiduMobAdSDK', '5.14'
  spec.dependency 'GDTMobSDK', '4.15.10'
  
  spec.user_target_xcconfig = {
     'GENERATE_INFOPLIST_FILE' => 'YES',
     'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64',
     'OTHER_LDFLAGS' => '-undefined dynamic_lookup'
  }

  spec.pod_target_xcconfig = {
      'GENERATE_INFOPLIST_FILE' => 'YES',
      'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64',
      'OTHER_LDFLAGS' => '-undefined dynamic_lookup'
  }

end
