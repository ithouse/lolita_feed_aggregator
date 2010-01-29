class FeedAggregate < Cms::Base
  set_table_name :feed_aggregates
  serialize :value
end
