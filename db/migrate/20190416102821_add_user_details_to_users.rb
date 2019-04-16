class AddUserDetailsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string
    add_index :users, :name, unique: true
    add_column :users, :role, :string
    add_column :users, :occupation, :string
  end
end
