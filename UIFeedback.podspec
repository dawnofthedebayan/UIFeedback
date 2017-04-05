#
# Be sure to run `pod lib lint UIFeedback.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'UIFeedback'
  s.version          = '0.1.0'
  s.summary          = 'Easy to use Feedback UI from anywhere in your code base.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'UIFeedback provides an easy to use feedback from anywhere in your codebase. You can choose the font size of the UI, the font family. The FeedbackUI has two modes of operation - Normal & Error. For each of the modes you can configure the background color of the FeedbackUI separately. Tapping on the feedback UI dismisses it.'

  s.homepage         = 'https://github.com/dawnofthedebayan/UIFeedback'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'dawnofthedebayan' => 'debayanbhattacharyaece@gmail.com' }
  s.source           = { :git => 'https://github.com/dawnofthedebayan/UIFeedback.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'UIFeedback/Classes/**/*'
  
  # s.resource_bundles = {
  #   'UIFeedback' => ['UIFeedback/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
