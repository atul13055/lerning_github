class AddFieldToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :name, :string
    add_column :users, :mobile, :integer
    add_index :users, :mobile, unique: true
    add_column :users, :address, :string
    add_column :users, :gender, :string
  end
end

