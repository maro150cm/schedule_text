class CreatePartdates < ActiveRecord::Migration
  def change
    create_table :partdates do |t|
      t.integer :part_number
      t.time    :start_time
      t.time    :end_time
      t.timestamps null: false
    end
  end
end
