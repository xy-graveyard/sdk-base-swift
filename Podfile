source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '9.0'
use_frameworks!
project 'XYCore.xcodeproj'

target "XYCore" do

pre_install do |installer|
    # workaround for https://github.com/CocoaPods/CocoaPods/issues/3289
    def installer.verify_no_static_framework_transitive_dependencies; end
end
    
pod "Fabric"
pod "Crashlytics"

end
