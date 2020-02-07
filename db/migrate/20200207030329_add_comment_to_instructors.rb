class AddCommentToInstructors < ActiveRecord::Migration[6.0]
  def change
    add_column :instructors, :comment, :string
  end
end
