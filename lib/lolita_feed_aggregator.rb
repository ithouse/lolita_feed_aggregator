require 'hpricot'
require 'open-uri'

#
# run ruby script/generate feed_aggregator
#
class Lolita::FeedAggregator
    # Stores feed to database
    # === Parameters
    # * +key+ - feed name, like :twitter, :blog_rss ....
    # * +url+ - feed url
    # * +options+ -
    #   * :limit - stores only
    #   * :expire_after - if this option is given then the items are deleted only if they are older than this given value
    #   * :order => "order_nr DESC" - according to this, the feed items will be deleted if :limit given
    # === Examples
    #
    # Put this in config/feed_aggregator.rb
    #
    # aggregate(:twitter, "http://search.twitter.com/search.atom?q=from:gacha", :limit => 10) do |doc|
    #   (doc/:entry).collect do |item|
    #     {
    #       :created_at => (item/:published).inner_html,
    #       :value => item
    #     }
    #   end
    # end
    #
    # Then fetch data:
    #
    # tweets = FeedAggregate.find_all_by_name("twitter")
    # tweets.each{|tweet| puts (tweet.value/:entry).inner_html}
    #
    def self.aggregate key, url, options = {}
      items = yield Hpricot.XML(open(url))
      items = items[0..options[:limit]-1] if options[:limit] && options[:limit].is_a?(Integer)
      # deletes all if no other delete method given, like :limit or :expire_after
      FeedAggregate.delete_all(:name => key) if !options[:limit] && !options[:expire_after]
      
      items.each do |item|
        FeedAggregate.create!(
          :name => key,
          :created_at => Time.parse(item[:created_at].to_s),
          :value => item[:value].to_s,
          :order_nr => item[:order_nr]? item[:order_nr].to_i : nil
        )
      end

      # deletes all that are out of limit range
      FeedAggregate.find(:all, :conditions => {:name => key}, :offset => options[:limit], :limit => 2**32, :order => (options[:order]? options[:order] : "id DESC")).each{|item| item.destroy} if options[:limit]

      # expires if older than needed
      if options[:expire_after] && options[:expire_after].is_a?(Time)
        FeedAggregate.delete_all ['created_at < ? and name = ?',options[:expire_after], key]
      end
    end

    # runs when bin/run.rb is executed
    def self.run
      eval(open("#{RAILS_ROOT}/config/feed_aggregate.rb").read)
    end
end