class AddPasswordToUser < ActiveRecord::Migration
  def change
    add_column :users, :password, :text
    add_column :users, :password_confirmation, :text
  end
end
