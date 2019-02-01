Pod::Spec.new do |s|
  s.name = 'XYCore'
  s.version = '1.0.9'
  s.license = { :type => 'MIT', :file => 'LICENSE' }
  s.summary = 'XY Core Library'
  s.homepage = 'https://github.com/xycorp/sdk-core-ios'
  s.social_media_url = 'https://twitter.com/xyodevs'
  s.authors = { 'XY - The Persistent Company' => 'darren@xyo.network' }
  s.source = { :git => "https://github.com/xycorp/core-ios.git", :tag => "#{s.version}" }
  s.documentation_url = 'https://github.com/xycorp/sdk-core-ios'
  s.swift_version = '4.2'

  s.ios.deployment_target = '11.0'

  s.source_files = 'XYCore/**/*.{swift}'
  
  s.dependency 'Apollo'
end