class AddExtinstallToUser < ActiveRecord::Migration
  def change
	add_column :users, :installed_ext, :bool
  end
end
