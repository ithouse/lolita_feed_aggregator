require File.dirname(__FILE__) + '/../spec_helper'

def do_aggregate key, url, options = {}
  Lolita::FeedAggregator.aggregate(key, url, options) do |doc|
    (doc/:status).collect do |item|
      {
        :created_at => (item/:created_at).inner_html,
        :order_nr => (item/:id).first.inner_html,
        :value => item
      }
    end
  end
end
  
describe "Lolita::FeedAggregator" do

  before(:each) do
    do_aggregate :twitter, "#{File.dirname(__FILE__)}/../public_timeline.xml", :limit => 10, :order => "order_nr DESC"
  end

  it "should limit correct" do
    do_aggregate :twitter, "#{File.dirname(__FILE__)}/../public_timeline2.xml", :limit => 10, :order => "order_nr DESC"
    FeedAggregate.count.should == 10
    first = FeedAggregate.find(:first, :conditions => {:name =>"twitter"}, :order => "order_nr DESC")
    first.order_nr.should be_a(Integer)
    first.order_nr.should == 8492512654
    last = FeedAggregate.find(:last, :conditions => {:name =>"twitter"}, :order => "order_nr DESC")
    last.order_nr.should == 8492512621
    (last.value/:status/:text).first.inner_html.should == "RT @switchwilder: DJSwitch is in the top5 dj's for the HYPE awards pls sms &quot;DJSwitch&quot; to 41931 for that NO.1 SPOT!"
    (last.value/:status/:retweeted_status/:user/:name).inner_html.should == "Morgan van staden"
  end
  
end