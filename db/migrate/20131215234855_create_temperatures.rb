class CreateTemperatures < ActiveRecord::Migration
  def change
    create_table :temperatures do |t|
      t.float :degrees

      t.timestamps
    end
  end
end
