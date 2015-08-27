

Pod::Spec.new do |s|
  s.name         = "Office365"
  s.version      = "0.10.0"
  s.summary      = "Client libraries for calling Office 365 service APIs from iOS apps."
  s.description  = <<-DESC
		   Client libraries for calling Office 365 service APIs from iOS apps.
		   These libraries are in preview.
                   DESC
  s.homepage     = "http://github.com/OfficeDev/Office-365-SDK-for-iOS"
  s.license      = "Apache License, Version 2.0"
  s.author             = { "joshgav" => "josh.gavant@microsoft.com" }
  s.social_media_url   = "http://twitter.com/OpenAtMicrosoft"

  s.platform     = :ios
  s.ios.deployment_target = "7.0"
  s.source       = { :git => "https://github.com/OfficeDev/Office-365-SDK-for-iOS.git",
		             :tag => "v#{s.version}"
		           }
  s.exclude_files = "**/Build/**/*"
  s.requires_arc = true
  s.dependency "orc"

  # --- Subspecs ------------------------------------------------------------------#


  s.subspec "discovery" do |subspec|
    subspec.source_files = "sdk/discovery/**/*.{h,m}"
    subspec.public_header_files = "sdk/discovery/**/*.h"
    subspec.header_dir = "discovery"
  end


  s.subspec "files" do |subspec|
    subspec.source_files = "sdk/files/**/*.{h,m}"
    subspec.public_header_files = "sdk/files/**/*.h"
    subspec.header_dir = "files"
  end


  s.subspec "graph" do |subspec|
    subspec.source_files = "sdk/graph/**/*.{h,m}"
    subspec.public_header_files = "sdk/graph/**/*.h"
    subspec.header_dir = "graph"
  end


  s.subspec "onenote" do |subspec|
    subspec.source_files = "sdk/onenote/**/*.{h,m}"
    subspec.public_header_files = "sdk/onenote/**/*.h"
    subspec.header_dir = "onenote"
  end


  s.subspec "outlook" do |subspec|
    subspec.source_files = "sdk/outlook/**/*.{h,m}"
    subspec.public_header_files = "sdk/outlook/**/*.h"
    subspec.header_dir = "outlook"
  end

end
