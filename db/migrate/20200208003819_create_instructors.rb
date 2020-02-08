class CreateInstructors < ActiveRecord::Migration[6.0]
  def change
    create_table :instructors do |t|
      t.string :instructor_id
      t.string :first
      t.string :middle
      t.string :last
      t.string :email
      t.string :comment

      t.timestamps
    end
  end
end
