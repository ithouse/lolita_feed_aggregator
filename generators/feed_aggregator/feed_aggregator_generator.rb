class FeedAggregatorGenerator < Rails::Generator::Base
  def manifest
    record do |m|
      m.migration_template 'migration.rb', 'db/migrate', :migration_file_name => "create_feed_aggregates"
      m.file 'feed_aggregator.rb', 'config/feed_aggregator.rb'
    end
  end
end