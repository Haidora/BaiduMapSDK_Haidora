Pod::Spec.new do |s|
  s.name             = "BaiduMapSDK_Haidora"
  s.version          = "2.9.1"
  s.summary          = "Baidu Map SDK For iOS."
  s.description      = <<-DESC
                          Baidu Map SDK For iOSK\n\n* Markdown format.\n * Don't worry about the indent, we strip it!\n2.9.0以后支持分包
                       DESC

  s.homepage         = "http://developer.baidu.com/map/sdk-ios.htm"
  s.author           = { "mrdaios" => "mrdaios@gmail.com" }
  s.source           = { :git => "https://github.com/Haidora/BaiduMapSDK_Haidora.git", :tag => s.version.to_s }

  s.platform     = :ios, '5.0'
  s.requires_arc = true
  s.pod_target_xcconfig = { 'OTHER_LINKER_FLAGS' => '-ObjC','FRAMEWORK_SEARCH_PATHS' => '$(PODS_ROOT)/BaiduMapSDK_Haidora/Source' }

  s.subspec 'Base' do |base|
      base.source_files = 'Pod/Classes/Core/**/*.{h,m}','Pod/Classes/*.{h,m}'
      base.source_files = 'Source/BaiduMapAPI_Base.framework/Headers/*.h'
      base.frameworks = "CoreLocation","QuartzCore","OpenGLES","SystemConfiguration","CoreGraphics","Security","BaiduMapAPI_Base"
      base.preserve_paths = "Source/BaiduMapAPI_Base.framework"
  end
  s.subspec 'Cloud' do |cloud|
      cloud.source_files = 'Source/BaiduMapAPI_Cloud.framework/Headers/*.h'
      cloud.frameworks = 'BaiduMapAPI_Cloud'
      cloud.preserve_paths = 'Source/BaiduMapAPI_Cloud.framework'
      cloud.dependency 'BaiduMapSDK_Haidora/Base'
  end
  s.subspec 'Location' do |location|
      location.source_files = 'Source/BaiduMapAPI_Location.framework/Headers/*.h'
      location.frameworks = 'BaiduMapAPI_Location'
      location.preserve_paths = 'Source/BaiduMapAPI_Location.framework'
      location.dependency 'BaiduMapSDK_Haidora/Base'
  end
  s.subspec 'Map' do |map|
      map.source_files = 'Source/BaiduMapAPI_Map.framework/Headers/*.h'
      map.resources = 'Source/BaiduMapAPI_Map.framework/Resource/mapapi.bundle'
      map.frameworks = 'BaiduMapAPI_Map'
      map.preserve_paths = 'Source/BaiduMapAPI_Map.framework'
      map.dependency 'BaiduMapSDK_Haidora/Base'
  end
  s.subspec 'Radar' do |radar|
      radar.source_files = 'Source/BaiduMapAPI_Radar.framework/Headers/*.h'
      radar.frameworks = 'BaiduMapAPI_Radar'
      radar.preserve_paths = 'Source/BaiduMapAPI_Radar.framework'
      radar.dependency 'BaiduMapSDK_Haidora/Base'
  end
  s.subspec 'Search' do |search|
      search.source_files = 'Source/BaiduMapAPI_Search.framework/Headers/*.h'
      search.frameworks = 'BaiduMapAPI_Search'
      search.preserve_paths = 'Source/BaiduMapAPI_Search.framework'
      search.dependency 'BaiduMapSDK_Haidora/Base'
  end
  s.subspec 'Utils' do |utils|
      utils.source_files = 'Source/BaiduMapAPI_Utils.framework/Headers/*.h'
      utils.frameworks = 'BaiduMapAPI_Utils'
      utils.preserve_paths = 'Source/BaiduMapAPI_Utils.framework'
      utils.dependency 'BaiduMapSDK_Haidora/Base'
  end
end