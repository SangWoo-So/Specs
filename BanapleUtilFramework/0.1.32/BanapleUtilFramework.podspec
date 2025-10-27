Pod::Spec.new do |s|
  s.name             = 'BanapleUtilFramework'
  s.version          = '0.1.32'
  s.summary          = 'test BanapleUtilFramework.'
  s.description      = <<-DESC
Simple test the BanapleUtilFramework!!!
                       DESC
  s.homepage         = 'https://banapresso.com'
#  s.license          = 'MIT'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'banaple-swso' => 'swso@banaple.co.kr' }
  s.source           = { :git => 'https://github.com/SangWoo-So/BanapleUtilFramework.git', :tag => s.version.to_s }
  #s.source       = { :path => "." }
  #s.resource         = "BanapleUtilFramework/Classes/ReadMe.txt"
  
  s.ios.deployment_target = '11.0'
#  s.source_files = 'BanapleUtilFramework/Classes/*.swift', 'BanapleUtilFramework/Classes/**/*.swift', "BanapleUtilFramework/Classes/**/*.{h,m}"
  s.swift_version = '5.0'
##  s.dependency "JSONKit", "~> 1.4"
#  s.dependency 'SnapKit', '~> 5.6.0' # 220630 Snapkit 사용
#  s.dependency 'Then'

  s.source_files = 'BanapleUtilFramework/Classes/*.swift'
  s.default_subspec = 'Full'
  s.frameworks = 'UIKit', 'WebKit'
  
  s.subspec 'Full' do |full|
      full.frameworks = 'AVKit', 'PDFKit'
      full.source_files = 'BanapleUtilFramework/Classes/**/*.{h,m}', 'BanapleUtilFramework/Classes/**/*.swift'
      full.resource = 'BanapleUtilFramework/Res/*'
      full.dependency 'SnapKit', '~> 5.6.0' # 220630 Snapkit 사용
      full.dependency 'Then'
      full.dependency 'Kingfisher', '~> 6.3.1' # 220905 SwiftUI 호환 때문?에 최신버전 동작안됨, 이전 버전사용
  end
  
  s.subspec 'Basic' do |basic|
      basic.source_files = 'BanapleUtilFramework/Classes/**/*.{h,m}', 'BanapleUtilFramework/Classes/*/*.swift', 'BanapleUtilFramework/Classes/Ex/*.swift', 'BanapleUtilFramework/Classes/Ex/SNP+THEN/*.swift'
      basic.dependency 'SnapKit', '~> 5.6.0' # 220630 Snapkit 사용
      basic.dependency 'Then'
  end
  
  s.subspec 'Media' do |media|
      media.frameworks = 'AVKit', 'PDFKit'
      media.source_files = 'BanapleUtilFramework/Classes/**/*.{h,m}', 'BanapleUtilFramework/Classes/Ex/*.swift', 'BanapleUtilFramework/Classes/Ex/SNP+THEN/*.swift', 'BanapleUtilFramework/Classes/Custom/CustomMediaView/*.swift', 'BanapleUtilFramework/Classes/Etc/ProgressView.swift'
      media.resource = 'BanapleUtilFramework/Res/*'
      media.dependency 'SnapKit', '~> 5.6.0' # 220630 Snapkit 사용
      media.dependency 'Then'
      media.dependency 'Kingfisher', '~> 6.3.1' # 220905 SwiftUI 호환 때문?에 최신버전 동작안됨, 이전 버전사용
  end
  
  s.subspec 'Minor' do |minor|
      minor.source_files = 'BanapleUtilFramework/Classes/**/*.{h,m}', 'BanapleUtilFramework/Classes/Custom/*.swift', 'BanapleUtilFramework/Classes/Ex/*.swift'
  end
  
end

#
#
##
##  Be sure to run `pod spec lint BanapleUtilFramework.podspec' to ensure this is a
##  valid spec and to remove all comments including this before submitting the spec.
##
##  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
##  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
##
#
#Pod::Spec.new do |spec|
#
#  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
#  #
#  #  These will help people to find your library, and whilst it
#  #  can feel like a chore to fill in it's definitely to your advantage. The
#  #  summary should be tweet-length, and the description more in depth.
#  #
#
#  spec.name         = "BanapleUtilFramework"
#  spec.version      = "0.0.1"
#  spec.summary      = "A short description of BanapleUtilFramework."
#
#  # This description is used to generate tags and improve search results.
#  #   * Think: What does it do? Why did you write it? What is the focus?
#  #   * Try to keep it short, snappy and to the point.
#  #   * Write the description between the DESC delimiters below.
#  #   * Finally, don't worry about the indent, CocoaPods strips it!
#  spec.description  = <<-DESC
#	need A short description of BanapleUtilFramework
#                   DESC
#
#  spec.homepage     = "http://EXAMPLE/BanapleUtilFramework"
#  # spec.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"
#
#
#  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
#  #
#  #  Licensing your code is important. See https://choosealicense.com for more info.
#  #  CocoaPods will detect a license file if there is a named LICENSE*
#  #  Popular ones are 'MIT', 'BSD' and 'Apache License, Version 2.0'.
#  #
#
#  spec.license      = "MIT"
#  # spec.license      = { :type => "MIT", :file => "FILE_LICENSE" }
#
#
#  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
#  #
#  #  Specify the authors of the library, with email addresses. Email addresses
#  #  of the authors are extracted from the SCM log. E.g. $ git log. CocoaPods also
#  #  accepts just a name if you'd rather not provide an email address.
#  #
#  #  Specify a social_media_url where others can refer to, for example a twitter
#  #  profile URL.
#  #
#
#  spec.author             = { "banaple-swso" => "52030111+SangWoo-So@users.noreply.github.com" }
#  # Or just: spec.author    = "banaple-swso"
#  # spec.authors            = { "banaple-swso" => "52030111+SangWoo-So@users.noreply.github.com" }
#  # spec.social_media_url   = "https://twitter.com/banaple-swso"
#
#  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
#  #
#  #  If this Pod runs only on iOS or OS X, then specify the platform and
#  #  the deployment target. You can optionally include the target after the platform.
#  #
#
#  # spec.platform     = :ios
#  # spec.platform     = :ios, "5.0"
#
#  spec.platform     = :ios, "9.0"
#
#  #  When using multiple platforms
#  # spec.ios.deployment_target = "5.0"
#  # spec.osx.deployment_target = "10.7"
#  # spec.watchos.deployment_target = "2.0"
#  # spec.tvos.deployment_target = "9.0"
#
#
#  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
#  #
#  #  Specify the location from where the source should be retrieved.
#  #  Supports git, hg, bzr, svn and HTTP.
#  #
#
#  #spec.source       = { :git => "http://EXAMPLE/BanapleUtilFramework.git", :tag => "#{spec.version}" }
#  spec.source       = { :path => "." }
#
#
#  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
#  #
#  #  CocoaPods is smart about how it includes source code. For source files
#  #  giving a folder will include any swift, h, m, mm, c & cpp files.
#  #  For header files it will include any header in the folder.
#  #  Not including the public_header_files will make all headers public.
#  #
#
#  spec.source_files  = "Classes", "Classes/**/*.{h,m}"
#  spec.exclude_files = "Classes/Exclude"
#
#  # spec.public_header_files = "Classes/**/*.h"
#
#
#  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
#  #
#  #  A list of resources included with the Pod. These are copied into the
#  #  target bundle with a build phase script. Anything else will be cleaned.
#  #  You can preserve files from being cleaned, please don't preserve
#  #  non-essential files like tests, examples and documentation.
#  #
#
#  # spec.resource  = "icon.png"
#  # spec.resources = "Resources/*.png"
#
#  # spec.preserve_paths = "FilesToSave", "MoreFilesToSave"
#
#
#  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
#  #
#  #  Link your library with frameworks, or libraries. Libraries do not include
#  #  the lib prefix of their name.
#  #
#
#  # spec.framework  = "SomeFramework"
#  # spec.frameworks = "SomeFramework", "AnotherFramework"
#
#  # spec.library   = "iconv"
#  # spec.libraries = "iconv", "xml2"
#
#
#  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
#  #
#  #  If your library depends on compiler flags you can set them in the xcconfig hash
#  #  where they will only apply to your library. If you depend on other Podspecs
#  #  you can include multiple dependencies to ensure it works.
#
#  # spec.requires_arc = true
#
#  # spec.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
#  # spec.dependency "JSONKit", "~> 1.4"
#
#end
