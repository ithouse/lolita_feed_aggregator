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

  s.files        = [".gitignore", ".rvmrc", "Gemfile", "Gemfile.lock", "MIT-LICENSE", "README.rdoc", "Rakefile", "app/models/feed_aggregate.rb", "bin/run.rb", "feed_aggregator.gemspec", "lib/aggregator.rb", "lib/feed_aggregator.rb", "lib/feed_aggregator/feed_aggregator_engine.rb", "lib/feed_aggregator/railties/tasks.rake", "lib/feed_aggregator/version.rb", "lib/generators/feed_aggregator/USAGE", "lib/generators/feed_aggregator/feed_aggregator_generator.rb", "lib/generators/feed_aggregator/templates/config_aggregator.rb", "lib/generators/feed_aggregator/templates/migration.rb", "spec/feed_aggregator/feed_aggregator_spec.rb", "spec/public_timeline.xml", "spec/public_timeline2.xml", "spec/schema.rb", "spec/spec.opts", "spec/spec_helper.rb", "test/dummy/Rakefile", "test/dummy/app/controllers/application_controller.rb", "test/dummy/app/helpers/application_helper.rb", "test/dummy/app/views/layouts/application.html.erb", "test/dummy/config.ru", "test/dummy/config/application.rb", "test/dummy/config/boot.rb", "test/dummy/config/database.yml", "test/dummy/config/environment.rb", "test/dummy/config/environments/development.rb", "test/dummy/config/environments/production.rb", "test/dummy/config/environments/test.rb", "test/dummy/config/initializers/backtrace_silencers.rb", "test/dummy/config/initializers/inflections.rb", "test/dummy/config/initializers/mime_types.rb", "test/dummy/config/initializers/secret_token.rb", "test/dummy/config/initializers/session_store.rb", "test/dummy/config/locales/en.yml", "test/dummy/config/routes.rb", "test/dummy/public/404.html", "test/dummy/public/422.html", "test/dummy/public/500.html", "test/dummy/public/favicon.ico", "test/dummy/public/javascripts/application.js", "test/dummy/public/javascripts/controls.js", "test/dummy/public/javascripts/dragdrop.js", "test/dummy/public/javascripts/effects.js", "test/dummy/public/javascripts/prototype.js", "test/dummy/public/javascripts/rails.js", "test/dummy/public/stylesheets/.gitkeep", "test/dummy/script/rails", "test/feed_aggregator_test.rb", "test/integration/navigation_test.rb", "test/support/integration_case.rb", "test/test_helper.rb"]
    #`git ls-files`.split("\n")
  s.executables  = ["run.rb"]
    #`git ls-files`.split("\n").map{|f| f =~ /^bin\/(.*)/ ? $1 : nil}.compact
  s.require_path = 'lib'
end
