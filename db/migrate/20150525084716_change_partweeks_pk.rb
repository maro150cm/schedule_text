class ChangePartweeksPk < ActiveRecord::Migration
  def change
    change_column:partweeks,:day_number,:integer
  end
end
