Pod::Spec.new do |s|
  s.name = 'XyCore'
  s.version = '0.0.1'
  s.summary = 'XY Core Library'
  s.homepage = 'https://github.com/xycorp/sdk-core-ios'
  s.social_media_url = 'https://twitter.com/xyodevs'
  s.authors = { 'XY - The Persistent Company' => 'darren@xyo.network' }
  s.source = { :git => "https://github.com/xycorp/core-ios.git", :tag => "#{s.version}" }
  s.documentation_url = 'https://github.com/xycorp/sdk-core-ios'
  s.swift_version = '4.2'

  s.ios.deployment_target = '11.0'

  s.source_files = 'Source/**/*.{swift}'
  
  s.dependency 'Apollo'
  s.dependency 'PromisesSwift', '~> 1.2.4'
end