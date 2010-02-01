ActiveRecord::Schema.define :version => 0 do
  create_table "feed_aggregates", :force => true do |t|
    t.string   "name"
    t.text     "value"
    t.integer  "order_nr", :limit => 8
    t.datetime "created_at"
  end

  add_index "feed_aggregates", ["name"], :name => "index_feed_aggregates_on_name"
end