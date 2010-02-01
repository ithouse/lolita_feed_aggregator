ActiveRecord::Schema.define :version => 0 do
  create_table "feed_aggregates", :force => true do |t|
    t.string   "name"
    t.string   "value"
    t.integer  "order_nr"
    t.datetime "created_at"
  end

  add_index "feed_aggregates", ["name"], :name => "index_feed_aggregates_on_name"
end