# -*- encoding: utf-8 -*-
require File.expand_path('../lib/qunit_a_tron/version', __FILE__)

Gem::Specification.new do |s|
  s.authors       = ["Dave Green"]
  s.email         = ["dave@developerdave.co.uk"]
  s.description   = %q{Integrate QUnit tests into your application.}
  s.summary       = %q{Integrate QUnit tests into your application.}
  s.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "qunit_a_tron"
  gem.require_paths = ["lib"]
  gem.version       = QunitATron::VERSION
end
