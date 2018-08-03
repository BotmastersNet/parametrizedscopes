$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "parametrized_scopes/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "parametrized_scopes"
  s.version     = ParametrizedScopes::VERSION
  s.authors     = ["Jiří Procházka"]
  s.email       = ["prochazka@botmasters.net"]
  s.homepage    = "https://github.com/BotmastersNet/parametrizedscopes"
  s.summary     = "Adds filter_scope method to the model"
  s.description = "Allowing to pass parameters to model scopes"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", ">= 5.0.0"

  s.add_development_dependency "sqlite3"
end
