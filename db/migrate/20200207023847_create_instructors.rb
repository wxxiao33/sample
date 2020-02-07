class CreateInstructors < ActiveRecord::Migration[6.0]
  def change
    create_table :instructors, id:false do |t|
      t.primary_key :id
      t.string :last
      t.string :middle
      t.string :first
      t.string :email

      t.timestamps
    end
  end
end
