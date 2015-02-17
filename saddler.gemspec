# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'saddler/version'

Gem::Specification.new do |spec|
  spec.name          = "saddler"
  spec.version       = Saddler::VERSION
  spec.authors       = ["sanemat"]
  spec.email         = ["o.gata.ken@gmail.com"]

  spec.summary       = %q{Saddler.}
  spec.description   = %q{Saddler.}
  spec.homepage      = "https://github.com/packsaddle/ruby-saddler"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest"
end
