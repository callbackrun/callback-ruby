# coding: utf-8

lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require "callback/version"

Gem::Specification.new do |spec|
  spec.name          = "callback-ruby"
  spec.version       = Callback::VERSION
  spec.authors       = ["Jamie Wright"]
  spec.email         = ["jamie@callback.run"]

  spec.summary       = "A Ruby wrapper for the Callback API"
  spec.description   = %q{Callback (http://callback.run) allows you to create a job that runs on a schedule and you get a webhook notification when the job should run. Stop building scheduling systems.}
  spec.homepage      = "https://github.com/callbackrun/callback-ruby"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "httparty"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 3.5.0"
end
