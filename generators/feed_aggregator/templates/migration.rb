class CreateFeedAggregates < ActiveRecord::Migration
  def self.up
    create_table :aggregates do |t|
      t.string :name
      t.string :value
      t.integer :order
      t.timestamps
    end
    add_index :aggregates, :name
  end

  def self.down
    drop_table :aggregates
  end
end