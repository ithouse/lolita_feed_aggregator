# encoding: UTF-8
require 'bundler'
Bundler::GemHelper.install_tasks

require 'rake'

require 'rake/testtask'

task :default => :test
Rake::TestTask.new(:test) do |t|
  t.libs << 'lib'
  t.libs << 'test'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = false
end

#TODO change test to spec
=begin

require 'spec/rake/spectask'

desc 'Default: run specs'
task :default => :spec
Spec::Rake::SpecTask.new do |t|
  t.spec_files = FileList["spec/**/*_spec.rb"]
end

Spec::Rake::SpecTask.new('rcov') do |t|
  t.spec_files = FileList["spec/**/*_spec.rb"]
  t.rcov = true
  t.rcov_opts = ['--exclude', 'spec']
end

=end

require 'rake/rdoctask'

Rake::RDocTask.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'FeedAggregator'
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('README.rdoc')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

=begin
#This is replaced by
#require 'bundler'
#Bundler::GemHelper.install_tasks

require 'rake/gempackagetask'

spec = Gem::Specification.new do |s|
  s.name = "feed_aggregator"
  s.summary = "Insert FeedAggregator summary."
  s.description = "Insert FeedAggregator description."
  s.files =  FileList["[A-Z]*", "lib/**/*"]
  s.version = "0.0.1"
end

Rake::GemPackageTask.new(spec) do |pkg|
end

desc "Install the gem #{spec.name}-#{spec.version}.gem"
task :install do
  system("gem install pkg/#{spec.name}-#{spec.version}.gem --no-ri --no-rdoc")
end
=end


