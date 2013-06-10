# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vehicle_data/version'

Gem::Specification.new do |spec|
  spec.name          = "vehicle_data"
  spec.version       = VehicleData::VERSION
  spec.authors       = ["Jonathan Ballard"]
  spec.email         = ["jonathan.ballard@gmail.com"]
  spec.description   = %q{Ruby Client for VehicleData.co API}
  spec.summary       = %q{Coming Soon}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"
  
  spec.add_dependency "typhoeus"
end
