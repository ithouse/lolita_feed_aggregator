# Twitter example
#
# aggregate(:twitter, "http://search.twitter.com/search.atom?q=from:gacha", :limit => 10) do |doc|
#   (doc/:entry).collect do |item|
#     {
#       :created_at => (item/:published).inner_html,
#       :value => (item/:content).inner_html
#     }
#   end
# end
