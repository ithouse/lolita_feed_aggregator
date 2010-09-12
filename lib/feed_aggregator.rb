module FeedAggregator
  require File.expand_path('../feed_aggregator/feed_aggregator_engine', __FILE__) if defined?(Rails)
  require File.expand_path('../aggregator', __FILE__)
  # configure your engines paths
  # puts paths.app.controllers.to_s
  # config.middleware is shared configuration
  # config.middleware.use MyEngine::Middleware
  # Add a load path for this specific Engine
  # config.load_paths << File.expand_path("../lib/some/path", __FILE__)
end


