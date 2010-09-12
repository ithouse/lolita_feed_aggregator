# -*- encoding: utf-8 -*-
require File.expand_path("../lib/feed_aggregator/version", __FILE__)

Gem::Specification.new do |s|
  s.name        = "feed_aggregator"
  s.version     = FeedAggregator::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = []
  s.email       = []
  s.homepage    = "http://rubygems.org/gems/feed_aggregator"
  s.summary     = "read data from feeds"
  s.description = "A configurable rails engine that reads data from feeds and stores them in an Relational database"

  s.required_rubygems_version = ">= 1.3.6"
  s.rubyforge_project         = "feed_aggregator"

  s.add_development_dependency "bundler", ">= 1.0.0"
  s.add_runtime_dependency "hpricot", ">= 0.8.2"

  s.files        = `git ls-files`.split("\n")
  s.executables  = `git ls-files`.split("\n").map{|f| f =~ /^bin\/(.*)/ ? $1 : nil}.compact
  s.require_path = 'lib'
end
