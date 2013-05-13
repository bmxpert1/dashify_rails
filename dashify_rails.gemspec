$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "dashify_rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "dashify_rails"
  s.version     = DashifyRails::VERSION
  s.authors     = ["Kevin Bouwkamp"]
  s.email       = ["kevin.bouwkamp@gmail.com"]
  s.homepage    = "https://github.com/bmxpert1/dashify_rails"
  s.summary     = "Dashboarding framework for Rails."
  s.description = "Dashboarding framework for Rails. Inspired by dashing(https://github.com/Shopify/dashing)."

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.0.0.rc1"
  s.add_dependency "websocket-rails"

  s.add_development_dependency "sqlite3"
end
