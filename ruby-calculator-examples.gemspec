# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ruby/calculator/examples/version'

Gem::Specification.new do |spec|
  spec.name          = "ruby-calculator-examples"
  spec.version       = Ruby::Calculator::Examples::VERSION
  spec.authors       = ["Daniel Rice"]
  spec.email         = ["daniel.rice@ldstudios.co"]

  spec.summary       = "This gem shows how to build a calculator with Ruby and Cucumber"
  spec.description   = "This gem shows how to build a calculator with Ruby and Cucumber"
  spec.homepage      = "https://github.com/ldstudios/ruby-calculator-examples"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "cucumber", "~> 2.4"

  spec.add_dependency "money", "~> 6.7"
end
