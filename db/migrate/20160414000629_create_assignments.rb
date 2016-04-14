class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.string :name
      t.integer :points_possible
      t.integer :points_received
      t.boolean :complete
      t.integer :course_id

      t.timestamps
    end
  end
end
