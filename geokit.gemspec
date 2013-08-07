# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'geokit/version'

Gem::Specification.new do |spec|
  spec.name          = "geokit"
  spec.version       = Geokit::VERSION
  spec.authors       = ["Michael Noack, James Cox, Andre Lewis & Bill Eisenhauer"]
  spec.email         = ["michael+geokit@noack.com.au"]
  spec.description   = %q{Geokit provides geocoding and distance calculation in an easy-to-use API}
  spec.summary       = %q{Geokit: encoding and distance calculation gem}
  spec.homepage      = "http://geokit.org"
  spec.license       = "MIT"

  spec.has_rdoc = true
  spec.rdoc_options = ["--main", "README.markdown"]
  spec.extra_rdoc_files = ["README.markdown"]
  spec.extensions = 'ext/mkrf_conf.rb'

  spec.files         = `git ls-files`.split($/)
  spec.require_paths = ["lib"]

  spec.add_dependency "multi_json", ">= 1.3.2"
  spec.add_development_dependency "bundler", "> 1.0"
  spec.add_development_dependency "coveralls", ">= 0.6.7"
  spec.add_development_dependency 'mocha', ">= 0.14.0"
  spec.add_development_dependency 'simplecov'
  spec.add_development_dependency "simplecov-rcov"
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'mocha'
end
