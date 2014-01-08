class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :url
      t.string :name
      t.string :image
      t.string :title
      t.integer :createdby

      t.timestamps
    end

    create_table :associations do |t|
      t.integer :user_id
      t.integer :product_id
      t.timestamps
    end    

    add_index :associations, :user_id
    add_index :associations, :product_id
    add_index :associations, [:user_id, :product_id], unique: true
  end
end
