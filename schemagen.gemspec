# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'schemagen/version'

Gem::Specification.new do |spec|
  spec.name          = "schemagen"
  spec.version       = Schemagen::VERSION
  spec.authors       = ["Jordan Bach"]
  spec.email         = ["jordanbach@gmail.com"]

  spec.summary       = %q{Generates RESTful API schemas, documentation, and client libraries by inspecting your Rails application.}
  spec.homepage      = "https://github.com/jbgo/schemagen"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "bin"
  spec.executables   = "schemagen"
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest"
end
