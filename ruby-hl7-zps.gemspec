# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hl7/zps/version'

Gem::Specification.new do |spec|
  spec.name          = "ruby-hl7-zps"
  spec.version       = HL7::ZPS::VERSION
  spec.authors       = ["Enrique Carlos Mogollan"]
  spec.email         = ["emogollan@gmail.com"]
  spec.summary       = %q{Provides a custom ZPS segment to the ruby-hl7 gem.}
  spec.description   = %q{ZPS is a custom segment commonly used to define locations}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^spec/}) }
  spec.test_files    = spec.files.grep(%r{^spec/})
  spec.require_paths = ["lib"]

  spec.add_dependency "ruby-hl7", "~> 1.1"
  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
