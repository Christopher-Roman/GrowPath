class AddPlantIdToHarvest < ActiveRecord::Migration[6.0]
  def change
  	add_column :harvests, :plant_id, :integer
  	add_index :harvests, :plant_id
  end
end
