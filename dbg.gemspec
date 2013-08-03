# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dbg/version'

Gem::Specification.new do |spec|
  spec.name          = "dbg"
  spec.version       = Dbg::VERSION
  spec.authors       = ["Michael Fairley"]
  spec.email         = ["michaelfairley@gmail.com"]
  spec.description   = %q{A tiny "macro" to make puts based debugging a little nicer.}
  spec.summary       = %q{A tiny "macro" to make puts based debugging a little nicer.}
  spec.homepage      = "https://github.com/michaelfairley/dbg"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
