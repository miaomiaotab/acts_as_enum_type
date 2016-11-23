# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'acts_as_enum/version'

Gem::Specification.new do |spec|
  spec.name          = "acts_as_enum_type"
  spec.version       = ActsAsEnum::VERSION
  spec.authors       = ["diandanbao"]
  spec.email         = ["admin@isumeng.com"]

  spec.summary       = %q{ActiveRecord plugin to validate values of column in specified word}
  spec.description   = %q{ActiveRecord plugin to validate values of column in specified word}
  spec.homepage      = "http://www.diandanbao.com"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'activerecord', ">= 4.0", "< 5.1"
  spec.add_dependency 'activesupport', ">= 4.0", "< 5.1"
  
  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
