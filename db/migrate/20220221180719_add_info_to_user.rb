class AddInfoToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :phone, :string
    add_column :users, :country, :string
    add_column :users, :city, :string
    add_column :users, :zip, :string
  end
end
