# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "redis/store/version"

Gem::Specification.new do |s|
  s.name        = "redis-store"
  s.version     = Redis::Store::VERSION
  s.authors     = ["Luca Guidi"]
  s.email       = ["guidi.luca@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Redis backed stores for Ruby web frameworks}
  s.description = %q{Namespaced Rack::Session, Rack::Cache, I18n and cache Redis stores for Ruby web frameworks.}

  s.rubyforge_project = "redis-store"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency 'redis', '~> 2.2.0'

  s.add_development_dependency 'rake',      '~> 0.9.2.2'
  s.add_development_dependency 'bundler',   '~> 1.1.rc'
  s.add_development_dependency 'mocha',     '~> 0.10.0'
  s.add_development_dependency 'minitest',  '~> 2.8.0'
  s.add_development_dependency 'purdytest', '~> 1.0.0'
  s.add_development_dependency 'git',       '~> 1.2.5'
end

