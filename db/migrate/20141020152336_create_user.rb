class CreateUser < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string  :name
      t.string  :email
      t.string  :phone_number
      t.integer :age
      t.string  :gender
    end
  end
end
