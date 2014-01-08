class ChangeTimeStamponUsers < ActiveRecord::Migration
  def change
	change_column :users, :last_modified_timestamp, :timestamp
  end
end
