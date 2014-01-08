class ChangeIndustryonUsers < ActiveRecord::Migration
  def change
	change_column :users, :last_modified_timestamp, :float
	change_column :users, :industry, :string
	add_column :users, :last_modified_timestamp1, :timestamp
	add_column :users, :last_modified_timestamp2, :datetime	
  end
end
