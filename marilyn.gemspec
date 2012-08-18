$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "marilyn/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "marilyne"
  s.version     = Marilyn::VERSION
  s.authors     = ["Anthony Laibe"]
  s.email       = ["anthony.laibe@gmail.com"]
  s.homepage    = "https://github.com/alaibe/marilyn"
  s.summary     = "Use presenter pattern in rails easily."
  s.description = "Use presenter pattern in rails easily."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.7"
end
