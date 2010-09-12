class FeedAggregatorGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('../templates', __FILE__)
#TODO k?dam j?b?t ?ener?tora saturam?
=begin
  def manifest
    record do |m|
      m.migration_template 'migration.rb', 'db/migrate', :migration_file_name => "create_feed_aggregates"
      m.file 'aggregator.rb', 'config/aggregator.rb'
    end
  end
=end
end
