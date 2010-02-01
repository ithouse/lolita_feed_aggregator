class FeedAggregate < Cms::Base
  set_table_name :feed_aggregates
  default_scope :order => "id desc"
  validates_uniqueness_of :name, :scope => [:created_at, :order_nr]
  def value
    Hpricot.XML(self[:value])
  end

  def value=(x)
    self[:value] = x.to_s
  end
end
