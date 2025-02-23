Pod::Spec.new do |s| 
 s.name = "NIMKit" 
 s.version = "1.0.2" 
 s.summary = "Netease IM UI Kit" 
 s.homepage = "http://netease.im" 
 s.license = { :"type" => "Copyright", :"text" => " Copyright 2016 Netease "} 
 s.authors = "Netease IM Team" 
 s.source  = { :git => "https://github.com/netease-im/NIM_iOS_UIKit.git", :tag => "#{s.version}"} 
 s.platform = :ios, '8.0' 
 s.source_files = "NIMKit/NIMKit/**/*.{h,m}" 
 s.resource = 'NIMKitResource.bundle','NIMKitEmoticon.bundle','NIMKitSettings.bundle'
 s.frameworks = 'CoreText', 'SystemConfiguration', 'AVFoundation', 'CoreTelephony', 'AudioToolbox', 'CoreMedia' , 'VideoToolbox' 
 s.libraries  = 'sqlite3.0', 'z', 'c++'
 s.dependency 'SDWebImage'
 s.dependency 'Toast'
 s.dependency 'SVProgressHUD'
 s.dependency 'M80AttributedLabel'
 s.dependency 'CTAssetsPickerController'

 s.subspec 'Full' do |cs|
    cs.dependency 'NIMSDK', '~> 3.2.0'
  end

 s.subspec 'Lite' do |cs|
	cs.dependency 'NIMSDK_LITE', '~> 3.2.0'
  end

 s.default_subspec = 'Lite'

 end 