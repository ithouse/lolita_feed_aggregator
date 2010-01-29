# Twitter example
#
# expire_after 10.days.from_now
# aggregate(:twitter, "http://search.twitter.com/search.atom?q=from:gacha") do |doc|
#   (doc/:entry).collect do |item|
#     {
#       :created_at => (item/:published).inner_html,
#       :value => (item/:content).inner_html
#     }
#   end
# end
