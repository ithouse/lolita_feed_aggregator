require File.expand_path('../../feed_aggregator',__FILE__)
require 'rails'

module FeedAggregator
  class FeedAggregatorEngine < Rails::Engine
    rake_tasks do
      load "feed_aggregator/railties/tasks.rake"
    end
  end
end