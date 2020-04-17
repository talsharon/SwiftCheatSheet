Pod::Spec.new do |spec|

  spec.name         = "SwiftCheatSheet"
  spec.version      = "1.0.0"
  spec.summary      = "Common utils code and extensions for ongoing swift development."
  spec.description  = "Common utils code and extensions for ongoing swift development."
  spec.homepage     = "http://EXAMPLE/SwiftCheatSheet"
  spec.license      = "MIT"
  spec.author       = { "Tal Sharon" => "talsharonts@gmail.com" }
 
  spec.platform     = :ios, "12.0"

  spec.source       = { :git => "git@github.com:talsharon/SwiftCheatSheet.git", :tag => "1.0.0" }
  spec.source_files  = "SwiftCheatSheet", "SwiftCheatSheet/**/*.swift"
  spec.swift_version = "4.2" 

end
