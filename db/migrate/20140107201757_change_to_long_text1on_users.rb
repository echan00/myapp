class ChangeToLongText1onUsers < ActiveRecord::Migration
  def change
	change_column :users, :connections, :text, :limit => 4294967295
  end
end
