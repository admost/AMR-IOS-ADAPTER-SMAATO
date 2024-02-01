Pod::Spec.new do |s|
  s.name                    = 'AMRAdapterSmaato-Beta'
  s.version                 = '22.6.1.0'
  s.cocoapods_version       ='>= 1.9.0'
  s.license                 = { :type => 'Copyright', :text => <<-LICENSE
														        Copyright 2016
														        Admost Mediation Limited. 
														        LICENSE
												      }
  s.homepage                = 'http://www.admost.com/'
  s.author                  = { 'Admost Mediation Limited' => 'amr@admost.com' }
  s.summary                 = 'Smaato adapter for AMR SDK.'
  s.description             = 'AMR Smaato adapter allows publishers to mediate Smaato banner, interstitial and video ads in AMR SDK.'

  s.source                  = { :git => 'https://github.com/admost/AMR-IOS-ADAPTER-SMAATO.git',
 								                :tag => s.version.to_s
 								              }
  s.documentation_url       = 'https://admost.github.io/amrios/'
  s.platform 			          = :ios
  s.ios.deployment_target   = '9.0'
  s.swift_versions = ['5']
  s.vendored_frameworks      = 'AMRAdapterSmaato/Libs/AMRAdapterSmaato.xcframework'
  s.pod_target_xcconfig = { 
    'OTHER_LDFLAGS' => '-ObjC -lc++',
    "VALID_ARCHS": "arm64 armv7 x86_64",
    'VALID_ARCHS[sdk=iphoneos*]' => 'armv7 arm64',
    'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64 arm64'
  }
  
  s.dependency 'smaato-ios-sdk', '22.6.1'
  s.dependency 'AMRSDK-Beta', '~> 1.5.40'
end
