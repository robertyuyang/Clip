
platform :ios, '10.0'
use_frameworks!

target 'Clip' do
    pod 'Cupcake'
end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['ENABLE_BITCODE'] = 'NO'
    end
  end
end
