class AddDetailsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :headline, :string
    add_column :users, :location, :string
    add_column :users, :country_code, :integer
    add_column :users, :industry, :integer
    add_column :users, :num_connections, :integer
    add_column :users, :specialities, :string
    add_column :users, :positions, :string
    add_column :users, :public_profile_url, :string
    add_column :users, :last_modified_timestamp, :datetime
    add_column :users, :associations, :string
    add_column :users, :interests, :string
    add_column :users, :publications, :string
    add_column :users, :patents, :string
    add_column :users, :languages, :string
    add_column :users, :skills, :string
    add_column :users, :certifications, :string
    add_column :users, :educations, :string
    add_column :users, :courses, :string
    add_column :users, :volunteer, :string
    add_column :users, :three_current_positions, :string
    add_column :users, :three_past_positions, :string
    add_column :users, :num_recommenders, :integer
    add_column :users, :date_of_birth, :string
    add_column :users, :honors_awards, :string
    add_column :users, :connections, :string
    add_column :users, :network, :string
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :image, :string
  end
end
