# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cia/version'

Gem::Specification.new do |gem|
  gem.name          = "glass"
  gem.version       = Cia::VERSION
  gem.authors       = ["stevecreedon"]
  gem.email         = ["steve@creedon.me"]
  gem.description   = %q{TODO: Write a gem description}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency 'facter'
  gem.add_runtime_dependency 'mongo'

  gem.add_development_dependency 'rspec'

end
