class ChangeToLongText2onUsers < ActiveRecord::Migration
  def change
	change_column :users, :positions, :text, :limit => 4294967295
	remove_column :users, :num_connections, :integer	
  end
end
