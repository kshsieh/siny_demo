class CreateOfficeAndBuilding < ActiveRecord::Migration
  def change
    create_table :offices do |t|
      t.string :name
    end

    create_table :buildings do |t|
      t.string :name
    end

    Office.create(name: 'WeWork')
    Building.create(name: 'Freedom Tower')
  end
end
