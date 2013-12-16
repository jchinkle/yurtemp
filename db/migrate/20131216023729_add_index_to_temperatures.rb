class AddIndexToTemperatures < ActiveRecord::Migration
  def change
    add_index :temperatures, :created_at
  end
end
