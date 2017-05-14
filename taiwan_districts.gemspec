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
  s.description = "Select builder for district of Taiwan cities."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 4.2.3"
  s.add_dependency "jquery-rails"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "capybara"
  s.add_development_dependency "sqlite3"
  s.add_development_dependency "coffee-rails"
end
