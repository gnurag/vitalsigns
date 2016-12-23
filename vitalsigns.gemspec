lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vitalsigns/version'

Gem::Specification.new do |gem|
  gem.name          = "vitalsigns"
  gem.version       = Vitalsigns::VERSION
  gem.authors       = ["Anurag Patel"]
  gem.email         = ["gnurag@gmail.com"]
  gem.description   = %q{A library for reporting vital system signs}
  gem.summary       = %q{A Ruby library for reporting vital system statistics}
  gem.homepage      = "https://github.com/gnurag/vitalsigns"

  gem.files         = `git ls-files`.split($/)
  gem.bindir        = "bin"
  gem.executables   = gem.files.grep(%r{^bin/}) { |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  gem.license       = "GPL-3.0"

  gem.required_ruby_version = ">= 1.9.0"

  gem.add_development_dependency 'rake', '~> 0'
  gem.add_development_dependency 'rspec', '~> 0'
end
