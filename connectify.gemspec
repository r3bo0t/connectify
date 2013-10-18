# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'connectify/version'

Gem::Specification.new do |spec|
  spec.name          = "connectify"
  spec.version       = Connectify::VERSION
  spec.authors       = ["s@nd33p"]
  spec.email         = ["skr.ymca@gmail.com"]
  spec.description   = %q{Connect with 3rd party apis}
  spec.summary       = %q{Connect with 3rd party apis}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_runtime_dependency "faraday"
end
