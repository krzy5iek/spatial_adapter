$:.unshift(File.join(File.dirname(__FILE__) ,'../../gems/georuby/lib/'))
require 'rubygems'
require 'spec/rake/spectask'
require 'jeweler'

[:mysql, :postgis].each do |adapter|
  desc "Run specs for #{adapter} adapter"
  Spec::Rake::SpecTask.new("spec:#{adapter.to_s}") do |t|
    t.spec_files = FileList["spec/#{adapter}/*_spec.rb"]
  end
end

Jeweler::Tasks.new do |gem|
  gem.name = "spatial_adapter"
  gem.summary = "Spatial Adapter for ActiveRecord"
  gem.description = "Provides enhancements to ActiveRecord to handle spatial datatypes in PostgreSQL and MySQL."
  gem.author = "Pete Deffendol"
  gem.email = "pete@fragility.us"
  gem.homepage = "http://github.com/fragility/spatial_adapter"
    
  gem.files = FileList[
    "rails/*.rb",
    "lib/**/*.rb",
    "MIT-LICENSE",
    "README.rdoc",
    "VERSION"
  ]
  gem.test_files = FileList[
    "spec/**/*.rb",
    "spec/README.txt"
  ]
  
  gem.add_dependency 'activerecord', '>= 2.2.2'
  gem.add_dependency 'GeoRuby', '>= 1.3.0'
end

Jeweler::GemcutterTasks.new
