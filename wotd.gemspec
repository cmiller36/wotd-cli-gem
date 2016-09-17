# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'wotd/version'

Gem::Specification.new do |spec|
  spec.name          = "wotd"
  spec.version       = Wotd::VERSION
  spec.authors       = ["cmiller36"]
  spec.email         = ["m.calliemiller@gmail.com"]

  spec.summary       = %q{Simple CLI to view a word of the day}
  spec.homepage      = "https://github.com/cmiller36/wotd-cli-gem"
  spec.license       = "MIT"

  spec.executables   = ["wotd"]
  spec.bindir        = "bin"
  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry"
  spec.add_dependency "nokogiri"
  spec.add_dependency "colorize"
  
end
