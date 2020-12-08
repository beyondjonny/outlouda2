class CreatePractices < ActiveRecord::Migration[6.0]
  def change
    create_table :practices do |t|
      t.references :user, null: false, foreign_key: true
      t.string :company
      t.string :category

      t.timestamps
    end
  end
end
