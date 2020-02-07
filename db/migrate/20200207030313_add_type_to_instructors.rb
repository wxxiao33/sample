class AddTypeToInstructors < ActiveRecord::Migration[6.0]
  def change
    add_column :instructors, :type, :string
  end
end
