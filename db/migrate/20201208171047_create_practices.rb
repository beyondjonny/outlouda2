class CreatePractices < ActiveRecord::Migration[6.0]
  def change
    create_table :practices do |t|
      t.string :company
      t.string :type

      t.timestamps
    end
  end
end
