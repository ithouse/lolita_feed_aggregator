#rails g  creates a Rails::Generators::NamedBase that requires one param
# subclass Rails::Generators::Base to make a plain generator
# http://www.themodestrubyist.com/2010/03/16/rails-3-plugins---part-3---rake-tasks-generators-initializers-oh-my/
require 'rails/generators'
require 'rails/generators/migration'
require 'rails/generators/actions'

class FeedAggregatorGenerator < Rails::Generators::Base
  desc "create migrations and a demo configuration file for feed_aggregator"
  source_root File.expand_path('../templates', __FILE__)

  #create a migration
  include Rails::Generators::Migration
  include Rails::Generators::Actions

  # Implement the required interface for Rails::Generators::Migration.
   # taken from http://github.com/rails/rails/blob/master/activerecord/lib/generators/active_record.rb
  def self.next_migration_number(dirname)
    if ActiveRecord::Base.timestamped_migrations
      Time.now.utc.strftime("%Y%m%d%H%M%S")
    else
      "%.3d" % (current_migration_number(dirname) + 1)
    end
  end

  def create_migration_file
    migration_template 'migration.rb', 'db/migrate/create_feed_aggregates.rb'
  end

  def create_config
    #create demo config file
    rake("fa:create_config")
  end

end
