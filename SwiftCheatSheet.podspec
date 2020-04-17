Pod::Spec.new do |spec|

  spec.name         = "SwiftCheatSheet"
  spec.version      = "1.0.0"
  spec.summary      = "Common utils code and extensions for ongoing swift development."
  spec.description  = "Common utils code and extensions for ongoing swift development."
  spec.homepage     = "http://EXAMPLE/SwiftCheatSheet"
  spec.license      = "MIT"
  spec.author       = { "Tal Sharon" => "talsharonts@gmail.com" }
 
  spec.platform     = :ios, "12.0"

  # spec.source       = { :git => "http://EXAMPLE/SwiftCheatSheet.git", :tag => "#{spec.version}" }
  spec.source       = { :path => '.' }
  spec.source_files  = "SwiftCheatSheet", "SwiftCheatSheet/**/*.swift"

end
