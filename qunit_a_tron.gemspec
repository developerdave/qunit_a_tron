# -*- encoding: utf-8 -*-
require File.expand_path('../lib/qunit_a_tron/version', __FILE__)

Gem::Specification.new do |s|
  s.authors       = ["Dave Green"]
  s.email         = ["dave@developerdave.co.uk"]
  s.description   = %q{Integrate QUnit tests into your application.}
  s.summary       = %q{Integrate QUnit tests into your application.}
  s.homepage      = ""

  s.files         = `git ls-files`.split($\)
  s.executables   = s.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.name          = "qunit_a_tron"
  s.require_paths = ["lib"]
  s.version       = QunitATron::VERSION

  s.add_dependency "thor"

  s.add_development_dependency "rspec"
  s.add_development_dependency "cucumber"
  s.add_development_dependency "aruba"
  s.add_development_dependency "bahia"
end