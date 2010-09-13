require 'fileutils'

namespace :fa do
  desc "create a config file"
  task :create_config do
    src = File.expand_path('../../../generators/feed_aggregator/templates/config_aggregator.rb', __FILE__)
    app_dst = File.join("config","aggregator.rb")
    dst = File.join(Rails.root,app_dst)
    if File.exists?(dst)
      puts "[exists] #{app_dst}"
    else
      FileUtils::cp(src, dst)
      puts "[created] #{app_dst}"
    end
  end
end