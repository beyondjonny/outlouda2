class CreatePractices < ActiveRecord::Migration[6.0]
  def change
    create_table :practices do |t|
      t.string :title
      t.string :type
      t.text :question
      t.references :interview, null: false, foreign_key: true

      t.timestamps
    end
  end
end
