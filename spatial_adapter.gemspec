# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require 'spatial_adapter/version'

Gem::Specification.new do |s|
  s.name = %q{spatial_adapter}
  s.version = SpatialAdapter::VERSION

  s.platform = $platform || RUBY_PLATFORM[/java/] || Gem::Platform::RUBY

  s.authors = ["Pete Deffendol", "Guilhem Vellut"]
  s.email = %q{pete@fragility.us}
  s.homepage = %q{http://github.com/fragility/spatial_adapter}
  s.summary = "spatial_adapter-#{SpatialAdapter::VERSION}"
  s.description = %q{Provides enhancements to ActiveRecord to handle spatial
    datatypes in PostgreSQL and MySQL.}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.extra_rdoc_files = ["README.rdoc", "MIT-LICENSE"]
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]

  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec'
  if s.platform.to_s == 'ruby'
    s.add_development_dependency 'pg'
    s.add_development_dependency 'mysql'
    s.add_development_dependency 'mysql2'
  end

  if s.platform.to_s == 'java'
    s.add_development_dependency 'activerecord-jdbcmysql-adapter'
  end

  s.add_dependency 'activerecord'
  s.add_dependency 'activesupport'
  s.add_dependency 'georuby'
end
