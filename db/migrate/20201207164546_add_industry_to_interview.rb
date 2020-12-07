class AddIndustryToInterview < ActiveRecord::Migration[6.0]
  def change
    add_column :interviews, :industry, :string
  end
end
