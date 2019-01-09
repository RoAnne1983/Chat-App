# Uncomment this line to define a global platform for your project
# platform :ios, '9.0'

target 'Chat-App' do
  # Comment this line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!

  # Pods for Chat-App

pod 'Alamofire', '4.4.0'
pod 'SwiftyJSON', '3.1.1'
pod 'Socket.IO-Client-Swift' , '8.3.0'


end

post_install do |installer|
installer.pods_project.targets.each do |target|
target.build_configurations.each do |config|
config.build_settings['SWIFT_VERSION'] = '3.0'
config.build_settings['MACOSX_DEPLOYMENT_TARGET'] = '10.10'
end
end
end
