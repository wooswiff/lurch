$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "bootbone/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "bootbone"
  s.version     = Bootbone::VERSION
  s.authors     = ["Jeff Cleary"]
  s.email       = ["jcleary@wooswiff.com"]
  s.homepage    = "https://github.com/wooswiff/bootbone"
  s.summary     = "bootstrap a backbone application inside rails"
  s.description = "A suite of generators used for setting up a backbone app in rails for both development and production."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.16"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "generator_spec"

end
