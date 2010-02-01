class CreateFeedAggregates < ActiveRecord::Migration
  def self.up
    create_table :feed_aggregates do |t|
      t.string :name
      t.text :value
      t.integer :order_nr, :limit => 15
      t.timestamps
    end
    add_index :feed_aggregates, :name
  end

  def self.down
    drop_table :feed_aggregates
  end
end