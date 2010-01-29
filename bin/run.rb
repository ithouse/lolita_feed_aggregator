ENV["RAILS_ENV"] ||= 'development'
require File.expand_path(File.join(File.dirname(__FILE__),'..','..','..','..','config','environment'))

Lolita::FeedAggregator.run