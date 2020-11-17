class CreateCandidates < ActiveRecord::Migration[6.0]
  def change
    create_table :candidates do |t|
      t.integer :videos_id
      t.string :first_name
      t.string :last_name
      t.string :email

      t.timestamps
    end
  end
end
