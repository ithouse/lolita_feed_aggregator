# Twitter example
#
#  aggregate(:twitter, "http://twitter.com/statuses/user_timeline.xml?screen_name=envylabs", :limit => 10) do |doc|
#    (doc/:status).collect{ |item|
#      {
#        :created_at => (item/:created_at).first.inner_html,
#        :value => item,
#        :order_nr => (item/:id).first.inner_html
#      } if (item/:text).inner_html =~ /(#Ruby5|#rails)/
#    }.compact
#  end
