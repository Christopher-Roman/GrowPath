class AddPlantIdToEntry < ActiveRecord::Migration[6.0]
  def change
  	add_column :entries, :plant_id, :integer
  	add_index :entries, :plant_id
  end
end
