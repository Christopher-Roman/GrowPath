class CreatePlants < ActiveRecord::Migration[6.0]
  def change
    create_table :plants do |t|
      t.string :plant_name
      t.string :plant_type
      t.boolean :flowering
      t.string :state_of_growth
      t.string :grow_medium
      t.boolean :clone
      t.date :planted
      t.string :seed_supplier
      t.float :plant_height
      t.float :plant_width

      t.timestamps
    end
  end
end
