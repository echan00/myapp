class ChangeDetailsonUsers < ActiveRecord::Migration
  def change
    change_column :users, :date_of_birth, :text
    change_column :users, :educations, :text
    change_column :users, :languages, :text
    change_column :users, :skills, :text
    change_column :users, :three_current_positions, :text
    change_column :users, :three_past_positions, :text
    add_column :users, :languages_num, :integer    
    add_column :users, :skills_num, :integer   
    remove_column :users, :date_of_birth, :string
    remove_column :users, :network, :string
    remove_column :users, :num_recommenders, :integer    
  end
end
