$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "seeren/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "seeren"
  s.version     = Seeren::VERSION
  s.authors     = ["Lukas Alexandre"]
  s.email       = ["lukas@codelogic.me"]
  s.homepage    = "https://github.com/lukelex/seeren"
  s.summary     = "A modular approach for building and testing views"
  s.description = "The way we build and structure our Views are fundamentally wrong. Views should be composed of multiple interdependent pieces, or components if you will, that when assembled together will work as expected."

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.0.0"
  s.add_development_dependency "sqlite3"
end
