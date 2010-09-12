class FeedAggregate < ActiveRecord::Base
  set_table_name :feed_aggregates
  validates_uniqueness_of :name, :scope => [:created_at, :order_nr]
  def value
    Hpricot.XML(self[:value])
  end

  def value=(x)
    self[:value] = x.to_s
  end
end
