require_relative "lib/median/version"

Gem::Specification.new do |spec|
  spec.name        = "median"
  spec.version     = Median::VERSION
  spec.authors     = ["ikneg"]
  spec.email       = ["0930019@gmail.com"]
  spec.homepage    = "https://github.com/ikneg/median"
  spec.summary     = "Calcurate Median of Integer array."
  spec.description = ""
  spec.license     = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/ikneg/median"

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 6.1.3", ">= 6.1.3.2"
end
