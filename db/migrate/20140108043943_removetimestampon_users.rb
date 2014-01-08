class RemovetimestamponUsers < ActiveRecord::Migration
  def change
	remove_column :users, :last_modified_timestamp1, :timestamp
	remove_column :users, :last_modified_timestamp2, :datetime	
  end
end
