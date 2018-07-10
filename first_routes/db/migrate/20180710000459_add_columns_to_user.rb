class AddColumnsToUser < ActiveRecord::Migration[5.1]
  def change
    drop_table :users
    create_table :users
    add_column :users, :username, :string, null: false
    add_index :users, :username, unique: true
  end
end
