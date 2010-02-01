ENV["RAILS_ENV"] ||= 'test'
require File.expand_path(File.join(File.dirname(__FILE__),'..','..','..','..','config','environment'))
require 'spec/autorun'
require 'spec/rails'

load(File.dirname(__FILE__) + '/schema.rb') unless ActiveRecord::Base.connection.tables.include?(FeedAggregate.table_name)

$: << File.join(File.dirname(__FILE__), '..', 'lib')
require File.join(File.dirname(__FILE__), '..', 'app', 'models', 'feed_aggregate')
require File.join(File.dirname(__FILE__), '..', 'init')