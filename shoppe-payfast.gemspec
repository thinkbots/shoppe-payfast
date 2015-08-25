# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'shoppe/payfast/version'

Gem::Specification.new do |s|
  s.name          = 'shoppe-payfast'
  s.version       = Shoppe::Payfast::VERSION
  s.authors       = ['Raoul DIFFOUO']
  s.email         = ['diraulo@gmail.com']

  s.summary       = 'A PayFast module for Shoppe.'
  s.description   = 'A Shoppe module to assist with the integration of PayFast.'
  s.homepage      = 'https://github.com/thinkbots/shoppe-payfast'
  s.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if s.respond_to?(:metadata)
    s.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    fail 'RubyGems 2.0 or newer is required to protect against public gem pushes.'
  end

  s.files         = `git ls-files -z`.split("\x0")
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.executables   = s.files.grep(%r{^exe/}) { |f| File.basename(f) }
  s.require_paths = ['lib']

  s.add_dependency 'shoppe', '> 0.0.9', '< 2'

  s.add_development_dependency 'bundler', '~> 1.10'
  s.add_development_dependency 'rake', '~> 10.0'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'pry-byebug'
end
