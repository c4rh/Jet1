class AddFieldsToUser < ActiveRecord::Migration[5.0]
  def up
    add_column :users, :role, :string, default: 'user'
    add_column :users, :name, :string, null: false
    add_index :users, :name, unique: true
    add_attachment :users, :avatar
  end

  def down
    remove_column :users, :role
    remove_column :users, :name
    remove_index :users, :name
    remove_attachment :users, :avatar
  end
end
