class ChangeDetail3onUsers < ActiveRecord::Migration
  def change
    remove_column :users, :country_code, :integer
    remove_column :users, :specialities, :string
    remove_column :users, :associations, :string
    remove_column :users, :interests, :string
    remove_column :users, :publications, :string
    remove_column :users, :patents, :string
    remove_column :users, :languages, :text
    remove_column :users, :skills, :text
    remove_column :users, :certifications, :string
    remove_column :users, :educations, :text
    remove_column :users, :courses, :string
    remove_column :users, :volunteer, :string
    remove_column :users, :honors_awards, :string
    remove_column :users, :languages_num, :integer
    remove_column :users, :skills_num, :integer
  end
end
