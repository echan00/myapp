class ChangeToLongTextonUsers < ActiveRecord::Migration
  def change
	change_column :users, :all_data, :text, :limit => 4294967295
  end
end
