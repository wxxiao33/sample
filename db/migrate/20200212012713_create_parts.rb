class CreateParts < ActiveRecord::Migration[6.0]
  def change
    create_table :parts do |t|
      t.references :course, null: false, foreign_key: true
      t.references :subject, null: false, foreign_key: true
      t.string :segment
      t.string :name

      t.timestamps
    end
  end
end
