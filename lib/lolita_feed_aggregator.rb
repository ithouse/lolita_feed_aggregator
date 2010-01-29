require 'hpricot'
require 'open-uri'

class Lolita::FeedAggregator
  class << self
    def self.aggregate key, url
      items = yield Hpricot.XML(open(url))
      items.each{|item|
        puts(item[:value]/:title).inner_html
      }
      # expire old feeds
      if @expire_next_after
        FeedAggregate.delete_all ['created_at < ? and name = ?',@expire_next_after, key]
        @expire_next_after = nil
      end
    end

    def self.expire_after expire
      @expire_next_after = expire
    end

    # runs when bin/run.rb is executed
    def self.run
      RAILS_DEFAULT_LOGGER.info "[#{Time.now}] Running feed aggregator"
      eval(open("#{RAILS_ROOT}/config/feed_aggregate.rb").read)
    end
  end
end