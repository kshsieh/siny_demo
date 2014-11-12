class AddOwnableToOwner < ActiveRecord::Migration
  def change
    add_column :owners, :ownable_type, :string
    add_column :owners, :ownable_id, :integer
  end
end
