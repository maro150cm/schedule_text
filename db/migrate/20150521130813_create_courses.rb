class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string  :course_id
      t.string  :course_name
      t.integer :learn_point
      t.string  :teacher_name
      t.integer :partweek_id
      t.integer :partdate_id
      t.timestamps null: false
    end
  end
end
