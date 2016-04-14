class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.float :credit_hours

      t.timestamps
    end
  end
end
