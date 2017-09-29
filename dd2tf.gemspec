# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "dd2tf/version"

Gem::Specification.new do |spec|
  spec.name          = "dd2tf"
  spec.version       = Dd2tf::VERSION
  spec.authors       = ["reizist"]
  spec.email         = ["reizist@gmail.com"]

  spec.summary       = %q{Export Datadog resource as terraform config}
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/reizist/dd2tf"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "dogapi"
  spec.add_runtime_dependency "activesupport"
  spec.add_runtime_dependency "thor"

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 12.0.0"
  spec.add_development_dependency "pry"
end
