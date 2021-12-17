Pod::Spec.new do |s|
  s.name                    = 'AMRAdapterSmaato'
  s.version                 = '21.6.17.2'
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
  s.vendored_libraries      = 'AMRAdapterSmaato/Libs/libAMRAdapterSmaato.a'
  
  s.dependency 'smaato-ios-sdk', '21.6.17'
  s.dependency 'AMRSDK', '~> 1.5.0'
end
