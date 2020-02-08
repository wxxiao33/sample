class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.string :course_id
      t.string :code
      t.string :name
      t.string :subjects
      t.float :credits
      t.boolean :independent_study
      t.string :description
      t.string :requirements
      t.string :term
      t.string :continuity_id
      t.string :comment

      t.timestamps
    end
  end
end
