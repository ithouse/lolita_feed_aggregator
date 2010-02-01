class FeedAggregate < Cms::Base
  set_table_name :feed_aggregates
  default_scope :order => "id desc"
  
  def value
    Hpricot.XML(self[:value])
  end

  def value=(x)
    self[:value] = x.to_s
  end
end
