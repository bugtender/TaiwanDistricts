$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "taiwan_districts/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "taiwan_districts"
  s.version     = TaiwanDistricts::VERSION
  s.authors     = ["Vincent Lin"]
  s.email       = ["bugtender@gmail.com"]
  s.homepage    = "https://github.com/bugtender/TaiwanDistricts"
  s.summary     = "Select builder for district of Taiwan cities."
  s.description = "taiwan_districts helps you to build a selector of Taiwan cities and district in short step. You don't need database to keep the name or zipcode. All you need to do is mount the engine."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", '>= 4.2.3'
  s.add_dependency "jquery-rails", '>= 4.3.1'
  s.add_development_dependency "rspec-rails", '>= 3.6.0'
  s.add_development_dependency "capybara", '>= 2.14.0'
  s.add_development_dependency "sqlite3", '>= 1.3.13'
  s.add_development_dependency "coffee-rails", '>= 4.2.1'
end
