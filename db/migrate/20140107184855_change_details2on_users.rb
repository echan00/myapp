class ChangeDetails2onUsers < ActiveRecord::Migration
  def change
    add_column :users, :all_data, :text
  end
end
